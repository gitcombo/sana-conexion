CREATE OR REPLACE FORCE VIEW "ORDENES_DETALLES_EXTRAS_VIEW" ("ID_DETALLE", "ID_ORDEN", "PRODUCTO", "PRECIO_UNITARIO", "CANTIDAD", "TOTAL", "OBSERVACION", "EXTRAS", "TOTAL_EXTRA") AS 
  select
    od.id "ID_DETALLE", 
    od.id_orden "ID_ORDEN",
    od.producto "PRODUCTO", 
    od.precio "PRECIO_UNITARIO",
    od.cantidad "CANTIDAD", 
    od.total "TOTAL",
    od.observacion "OBSERVACION",
    LISTAGG (m.nombre ||  ' ' || ox.cantidad || ' ' || m.unidad_medida , ';  ') "EXTRAS",
    SUM(ox.total) "TOTAL_EXTRA"
from 
    ordenes_detalles od
left join 
    ordenes_extras ox on ox.id_orden_detalle = od.id
left join    
    materias m on m.id = ox.id_materia
group by
    od.id, 
    od.id_orden,
    od.producto, 
    od.precio,
    od.cantidad, 
    od.total, 
    od.observacion
order by     
    id_orden, 
    id_detalle
/



select 
    od.id, 
    o.id_cliente,
    c.primer_nombre || ' ' || c.segundo_nombre || ' ' || c.primer_apellido || ' ' || c.segundo_apellido "Cliente",
    o.fecha_ingreso, 
    o.estado, 
    o.envio, 
    o.total, 
    od.id_orden,
    od.id_productos, 
    od.producto, 
    od.cantidad, 
    od.total, 
    od.fecha,  
    od.observacion, 
    od.precio
from
    ordenes_detalles od
inner join 
    ordenes o on o.id = od.id_orden
inner join
    clientes c on c.id = o.id_cliente;
/

##CHECK 
create or replace PACKAGE "PQT_ORDEN" AS 
   
   procedure add_to_bodegas(v_id_producto NUMBER, v_cantidad NUMBER);
   
   procedure remove_from_bodegas( v_id_producto NUMBER, v_cantidad NUMBER);
   
   procedure remove_from_bodega_materia (v_id_materia NUMBER, v_cantidad NUMBER);
   
   procedure add_to_bodega_materia (v_id_materia NUMBER, v_cantidad NUMBER);
   
  procedure updateOrdenTotal(v_id_orden NUMBER);
   
   
END "PQT_ORDEN";

create or replace PACKAGE BODY "PQT_ORDEN" as
    
    procedure remove_from_bodegas(v_id_producto NUMBER, v_cantidad NUMBER)
    as
        CURSOR c_detalle(c_id_producto NUMBER) IS select id_materia, cantidad from costos where id_producto = c_id_producto;
        r_detalle c_detalle%ROWTYPE;
        delta NUMBER := 0; 
    BEGIN
        open c_detalle(v_id_producto);
        loop
            fetch c_detalle into r_detalle; 
            exit when c_detalle%NOTFOUND;
                delta := ( v_cantidad * r_detalle.cantidad );
                update materias_bodegas mb set mb.cantidad = mb.cantidad - NVL(delta,0), fecha_modificacion = localtimestamp where id_materia = r_detalle.id_materia and id_materia not in (1,3,5,6); 
        end loop;
        close c_detalle;
    END;
    procedure add_to_bodegas( v_id_producto NUMBER, v_cantidad NUMBER)
    as
        CURSOR c_detalle(c_id_producto NUMBER) IS select id_materia, cantidad from costos where id_producto = c_id_producto;
        r_detalle c_detalle%ROWTYPE;
        delta NUMBER := 0; 
    BEGIN
        open c_detalle(v_id_producto);
        loop
            fetch c_detalle into r_detalle; 
            exit when c_detalle%NOTFOUND;
                delta := ( v_cantidad * r_detalle.cantidad );
                update materias_bodegas mb set mb.cantidad = mb.cantidad + NVL(delta,0), fecha_modificacion = localtimestamp where id_materia = r_detalle.id_materia and id_materia not in (1,3,5,6); 
        end loop;
        close c_detalle;
    END;
    
    
    procedure remove_from_bodega_materia (v_id_materia NUMBER, v_cantidad NUMBER)
    as
    BEGIN
        update materias_bodegas set cantidad = cantidad - v_cantidad, fecha_modificacion = localtimestamp where id_materia = v_id_materia;
    END;
   
    
    
    procedure add_to_bodega_materia (v_id_materia NUMBER, v_cantidad NUMBER)
    as
    BEGIN
        update materias_bodegas set cantidad = cantidad + v_cantidad, fecha_modificacion = localtimestamp where id_materia = v_id_materia;
    END;
    
    
    procedure updateOrdenTotal(v_id_orden NUMBER)
    AS
        orden NUMBER := 0;
        detalle NUMBER := 0;
        extra NUMBER := 0;
    BEGIN
    
        select nvl(sum(total), 0) into detalle from ordenes_detalles where id_orden = v_id_orden;
        select nvl(sum(total), 0) into extra   from ordenes_extras   where id_orden_detalle in (select id from ordenes_detalles where id_orden = v_id_orden);
                
        update ordenes set subtotal = nvl(extra + detalle,0) where id = v_id_orden;
        update ordenes set total = nvl(subtotal + costo_envio,0) where id = v_id_orden;
       
    END;
       
    
end "PQT_ORDEN";

