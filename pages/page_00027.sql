prompt --application/pages/page_00027
begin
--   Manifest
--     PAGE: 00027
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
 p_id=>27
,p_user_interface_id=>wwv_flow_api.id(74639230748844335)
,p_name=>'test'
,p_alias=>'TEST1'
,p_step_title=>'test'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Scroll Results Only in Side Column */',
'.t-Body-side {',
'    display: flex;',
'    flex-direction: column;',
'    overflow: hidden;',
'}',
'.search-results {',
'    flex: 1;',
'    overflow: auto;',
'}',
'/* Format Search Region */',
'.search-region {',
'    border-bottom: 1px solid rgba(0,0,0,.1);',
'    flex-shrink: 0;',
'}'))
,p_step_template=>wwv_flow_api.id(74502846304844205)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SANA'
,p_last_upd_yyyymmddhh24miss=>'20200720224954'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30108211421551605)
,p_plug_name=>'test'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(74546432859844239)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30109444242551608)
,p_plug_name=>'Search'
,p_region_css_classes=>'search-region padding-md'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(74528641814844229)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(30110237996551611)
,p_name=>'Master Records'
,p_template=>wwv_flow_api.id(74528801365844229)
,p_display_sequence=>20
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID",',
'    null link_class,',
'    apex_page.get_url(p_items => ''P27_ID'', p_values => "ID") link,',
'    null icon_class,',
'    null link_attr,',
'    null icon_color_class,',
'    case when nvl(:P27_ID,''0'') = "ID"',
'      then ''is-active'' ',
'      else '' ''',
'    end list_class,',
'    substr("DIRECCION_ENTREGA", 1, 50)||( case when length("DIRECCION_ENTREGA") > 50 then ''...'' end ) list_title,',
'    substr("ESTADO", 1, 50)||( case when length("ESTADO") > 50 then ''...'' end ) list_text,',
'    null list_badge',
'from "ORDENES" x',
'where (:P27_SEARCH is null',
'        or upper(x."DIRECCION_ENTREGA") like ''%''||upper(:P27_SEARCH)||''%''',
'        or upper(x."ESTADO") like ''%''||upper(:P27_SEARCH)||''%''',
'    )',
'order by "DIRECCION_ENTREGA"'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P27_SEARCH'
,p_query_row_template=>wwv_flow_api.id(74581699098844261)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<div class="u-tC">No Records Found</div>'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30110889922551622)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30111297507551622)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'Link Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30111733519551623)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'Link'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30112084749551623)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'Icon Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30112454197551623)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>5
,p_column_heading=>'Link Attr'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30112853676551624)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'Icon Color Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30113253620551624)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'List Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30113721547551624)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'List Title'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30114098341551625)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'List Text'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30114526946551625)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'List Badge'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(30117907957551633)
,p_name=>'Ordenes'
,p_template=>wwv_flow_api.id(74555992002844245)
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'ORDENES'
,p_query_where=>'"ID" = :P27_ID'
,p_include_rowid_column=>false
,p_display_when_condition=>'P27_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(74587948743844265)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Record Selected'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30118647377551636)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ID" is not null',
'and "ID" = :P27_ID'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30118953428551636)
,p_query_column_id=>2
,p_column_alias=>'ID_CLIENTE'
,p_column_display_sequence=>2
,p_column_heading=>'Id Cliente'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ID_CLIENTE" is not null',
'and "ID" = :P27_ID'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30119377714551637)
,p_query_column_id=>3
,p_column_alias=>'FECHA_INGRESO'
,p_column_display_sequence=>3
,p_column_heading=>'Fecha Ingreso'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "FECHA_INGRESO" is not null',
'and "ID" = :P27_ID'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30119801803551637)
,p_query_column_id=>4
,p_column_alias=>'TIPO_PAGO'
,p_column_display_sequence=>4
,p_column_heading=>'Tipo Pago'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "TIPO_PAGO" is not null',
'and "ID" = :P27_ID'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30120241702551637)
,p_query_column_id=>5
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>5
,p_column_heading=>'Estado'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ESTADO" is not null',
'and "ID" = :P27_ID'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30120582585551637)
,p_query_column_id=>6
,p_column_alias=>'ENVIO'
,p_column_display_sequence=>6
,p_column_heading=>'Envio'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ENVIO" is not null',
'and "ID" = :P27_ID'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30121017750551638)
,p_query_column_id=>7
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>7
,p_column_heading=>'Total'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "TOTAL" is not null',
'and "ID" = :P27_ID'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30121364482551638)
,p_query_column_id=>8
,p_column_alias=>'FECHA_ENTREGADO'
,p_column_display_sequence=>8
,p_column_heading=>'Fecha Entregado'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "FECHA_ENTREGADO" is not null',
'and "ID" = :P27_ID'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30121816127551638)
,p_query_column_id=>9
,p_column_alias=>'DIRECCION_ENTREGA'
,p_column_display_sequence=>9
,p_column_heading=>'Direccion Entrega'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "DIRECCION_ENTREGA" is not null',
'and "ID" = :P27_ID'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30122219844551638)
,p_query_column_id=>10
,p_column_alias=>'FECHA_ENTREGA'
,p_column_display_sequence=>10
,p_column_heading=>'Fecha Entrega'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "FECHA_ENTREGA" is not null',
'and "ID" = :P27_ID'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30122623861551639)
,p_query_column_id=>11
,p_column_alias=>'RECIBE_ENTREGA'
,p_column_display_sequence=>11
,p_column_heading=>'Recibe Entrega'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "RECIBE_ENTREGA" is not null',
'and "ID" = :P27_ID'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30122986132551639)
,p_query_column_id=>12
,p_column_alias=>'COSTO_ENVIO'
,p_column_display_sequence=>12
,p_column_heading=>'Costo Envio'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "COSTO_ENVIO" is not null',
'and "ID" = :P27_ID'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30123428827551639)
,p_query_column_id=>13
,p_column_alias=>'ID_PROVEEDOR'
,p_column_display_sequence=>13
,p_column_heading=>'Id Proveedor'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ID_PROVEEDOR" is not null',
'and "ID" = :P27_ID'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30123783708551640)
,p_query_column_id=>14
,p_column_alias=>'SUBTOTAL'
,p_column_display_sequence=>14
,p_column_heading=>'Subtotal'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "SUBTOTAL" is not null',
'and "ID" = :P27_ID'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30124160191551640)
,p_query_column_id=>15
,p_column_alias=>'OBSERVACION'
,p_column_display_sequence=>15
,p_column_heading=>'Observacion'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "OBSERVACION" is not null',
'and "ID" = :P27_ID'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30124607748551640)
,p_query_column_id=>16
,p_column_alias=>'VUELTO'
,p_column_display_sequence=>16
,p_column_heading=>'Vuelto'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "VUELTO" is not null',
'and "ID" = :P27_ID'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30135348480551654)
,p_plug_name=>'Region Display Selector'
,p_region_css_classes=>'js-detail-rds'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(74528641814844229)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P27_ID'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(30135663769551654)
,p_name=>'Ordenes Detalles'
,p_template=>wwv_flow_api.id(74555992002844245)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'ORDENES_DETALLES'
,p_query_where=>'"ID_ORDEN" = :P27_ID'
,p_include_rowid_column=>true
,p_display_when_condition=>'P27_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(74584960671844263)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30136475037551657)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:RP:P32_ROWID:#ROWID#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_heading_alignment=>'LEFT'
,p_report_column_width=>32
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30136929743551657)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30137283294551657)
,p_query_column_id=>3
,p_column_alias=>'ID_PRODUCTOS'
,p_column_display_sequence=>3
,p_column_heading=>'Id Productos'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30137652131551658)
,p_query_column_id=>4
,p_column_alias=>'PRODUCTO'
,p_column_display_sequence=>4
,p_column_heading=>'Producto'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30138070494551658)
,p_query_column_id=>5
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>5
,p_column_heading=>'Cantidad'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30138485131551658)
,p_query_column_id=>6
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>6
,p_column_heading=>'Total'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30138908853551658)
,p_query_column_id=>7
,p_column_alias=>'FECHA'
,p_column_display_sequence=>7
,p_column_heading=>'Fecha'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30139282241551658)
,p_query_column_id=>8
,p_column_alias=>'ID_ORDEN'
,p_column_display_sequence=>8
,p_column_heading=>'Id Orden'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30139676569551659)
,p_query_column_id=>9
,p_column_alias=>'OBSERVACION'
,p_column_display_sequence=>9
,p_column_heading=>'Observacion'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30140090294551659)
,p_query_column_id=>10
,p_column_alias=>'PRECIO'
,p_column_display_sequence=>10
,p_column_heading=>'Precio'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30158815259551728)
,p_plug_name=>'No Record Selected'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(74528641814844229)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'No Record Selected'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P27_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30144245570551663)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(30135663769551654)
,p_button_name=>'POP_ORDENES_DETALLES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(74616029879844288)
,p_button_image_alt=>'Add Ordenes Detalles'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:RP,32:P32_ID_ORDEN:&P27_ID.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30159257394551729)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(30117907957551633)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_image_alt=>'Edit'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:RP,28:P28_ID:&P27_ID.'
,p_icon_css_classes=>'fa-pencil-square-o'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30108667875551607)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(30108211421551605)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:27:&APP_SESSION.:RESET:&DEBUG.:RP,27::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30109137079551607)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(30108211421551605)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:RP,28::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30109812558551609)
,p_name=>'P27_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(30109444242551608)
,p_prompt=>'Search'
,p_placeholder=>'Search...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(74615355710844285)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--postTextBlock'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30134950324551653)
,p_name=>'P27_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(30117907957551633)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30159649721551729)
,p_name=>'Edit Master Record'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(30117907957551633)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30160195513551729)
,p_event_id=>wwv_flow_api.id(30159649721551729)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(30117907957551633)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30160704383551730)
,p_event_id=>wwv_flow_api.id(30159649721551729)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Ordenes\u0020updated'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30135775845551655)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(30135663769551654)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30144912939551666)
,p_event_id=>wwv_flow_api.id(30135775845551655)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(30135663769551654)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30145431959551667)
,p_event_id=>wwv_flow_api.id(30135775845551655)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Ordenes Detalles updated'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30159669646551729)
,p_name=>'Perform Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30161516503551731)
,p_event_id=>wwv_flow_api.id(30159669646551729)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(30110237996551611)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30162048851551731)
,p_event_id=>wwv_flow_api.id(30159669646551729)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_api.component_end;
end;
/
