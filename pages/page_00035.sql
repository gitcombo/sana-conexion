prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>16674536292368497
,p_default_application_id=>300
,p_default_id_offset=>20542468695429963
,p_default_owner=>'SANA_DEV'
);
wwv_flow_api.create_page(
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(74639230748844335)
,p_name=>'Ordenes'
,p_alias=>'ORDENES1'
,p_step_title=>'Ordenes'
,p_autocomplete_on_off=>'OFF'
,p_page_css_classes=>'main-form'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SANA_DEV'
,p_last_upd_yyyymmddhh24miss=>'20201024191429'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18189543542404530)
,p_plug_name=>'container'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74555992002844245)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18306890841093178)
,p_plug_name=>'Lista de Ordenes'
,p_parent_plug_id=>wwv_flow_api.id(18189543542404530)
,p_icon_css_classes=>'fa-list'
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74555992002844245)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    o.id "CODIGO_ORDEN",',
'    o.fecha_ingreso "FECHA ORDEN",',
'    o.estado, ',
'    c.primer_nombre || '' '' || c.segundo_nombre || '' '' || c.primer_apellido || '' '' || c.segundo_apellido "Cliente",    ',
'    c.telefono || '' '' || c.celular "CONTACTO",',
'    o.envio, ',
'    o.total, ',
'    o.fecha_entrega,',
'    NVL(LISTAGG(od.cantidad || '' '' || od.producto,'', ''), ''-'') "Productos"',
'from',
'    ordenes_detalles od',
'right join ',
'    ordenes o on o.id = od.id_orden',
'inner join',
'    clientes c on c.id = o.id_cliente',
'group by ',
'    o.id,',
'    c.telefono || '' '' || c.celular,',
'    c.primer_nombre || '' '' || c.segundo_nombre || '' '' || c.primer_apellido || '' '' || c.segundo_apellido,',
'    o.estado, ',
'    o.envio, ',
'    o.total, ',
'    o.fecha_entrega,',
'    o.fecha_ingreso',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Lista de Ordenes'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(18306978382093178)
,p_name=>'Ordenes'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:29:P29_ID:#CODIGO_ORDEN#'
,p_detail_link_text=>unistr('\200B\200B<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>')
,p_owner=>'SANA_DEV'
,p_internal_uid=>18306978382093178
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18308583074093187)
,p_db_column_name=>'ESTADO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18310595310093188)
,p_db_column_name=>'ENVIO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Envio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18312886314093190)
,p_db_column_name=>'FECHA_ENTREGA'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Fecha Entrega'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18313628955093190)
,p_db_column_name=>'TOTAL'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'FML999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18189754052404532)
,p_db_column_name=>'CODIGO_ORDEN'
,p_display_order=>27
,p_column_identifier=>'S'
,p_column_label=>unistr('C\00F3digo Orden')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18189870560404533)
,p_db_column_name=>'FECHA ORDEN'
,p_display_order=>37
,p_column_identifier=>'T'
,p_column_label=>'Fecha Orden'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18189984315404534)
,p_db_column_name=>'Cliente'
,p_display_order=>47
,p_column_identifier=>'U'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18190091315404535)
,p_db_column_name=>'CONTACTO'
,p_display_order=>57
,p_column_identifier=>'V'
,p_column_label=>'Contacto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18190150351404536)
,p_db_column_name=>'Productos'
,p_display_order=>67
,p_column_identifier=>'W'
,p_column_label=>'Productos'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(18316773193115169)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'183168'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CODIGO_ORDEN:FECHA ORDEN:ESTADO:Cliente:TOTAL:Productos:ENVIO:FECHA_ENTREGA:CONTACTO:'
,p_sort_column_1=>'ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18306209173093164)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74565441351844250)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(74502054024844202)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(74618104107844290)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18189611196404531)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18306209173093164)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Orden'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:30::'
,p_button_css_classes=>'sana-button'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.component_end;
end;
/
