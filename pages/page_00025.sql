prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(74639230748844335)
,p_name=>'Productos'
,p_alias=>'PRODUCTOS2'
,p_step_title=>'Productos'
,p_autocomplete_on_off=>'OFF'
,p_page_css_classes=>'main-form'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SANA_DEV'
,p_last_upd_yyyymmddhh24miss=>'20201014014051'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26988502266060584)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(26989102554060588)
,p_name=>'Search Results'
,p_template=>wwv_flow_api.id(74528801365844229)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--basic:t-Cards--5cols:t-Cards--animRaiseCard:t-Report--hideNoPagination'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  "ID",',
'  "NOMBRE" CARD_TITLE,',
'  "URL" CARD_TEXT,',
'  TO_CHAR("PRECIO_VENTA", ''FML999,999.99'') CARD_SUBTEXT,',
'  apex_string.get_initials("NOMBRE") CARD_INITIALS,',
'  apex_page.get_url(p_page => ''7'', p_items => ''P7_ID'', p_values => "ID") CARD_LINK,',
'  null CARD_MODIFIERS,',
'  null CARD_COLOR,',
'  null CARD_ICON,',
'  "TIPO",',
'  "NOMBRE",',
'  "DESCRIPCION",',
'  "PRECIO_VENTA",',
'  "FOTO"',
'from  "PRODUCTOS_VIEW"',
'order by "NOMBRE";'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(74571943527844256)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26885544175691713)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>13
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26991407845060758)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'CARD_TITLE'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<h5>#CARD_TITLE#</h5>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26991839024060758)
,p_query_column_id=>3
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>2
,p_column_heading=>'CARD_TEXT'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<img src="#CARD_TEXT#" alt="#TITLE# Foto" style="max-width: 100%; height: auto" />'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26992233683060758)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>3
,p_column_heading=>'CARD_SUBTEXT'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26992580605060759)
,p_query_column_id=>5
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>4
,p_column_heading=>'CARD_INITIALS'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26992995488060759)
,p_query_column_id=>6
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>5
,p_column_heading=>'CARD_LINK'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26993416973060759)
,p_query_column_id=>7
,p_column_alias=>'CARD_MODIFIERS'
,p_column_display_sequence=>6
,p_column_heading=>'CARD_MODIFIERS'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26993833284060760)
,p_query_column_id=>8
,p_column_alias=>'CARD_COLOR'
,p_column_display_sequence=>7
,p_column_heading=>'CARD_COLOR'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26994165379060760)
,p_query_column_id=>9
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>8
,p_column_heading=>'CARD_ICON'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30190346258812786)
,p_query_column_id=>10
,p_column_alias=>'TIPO'
,p_column_display_sequence=>14
,p_column_heading=>'Tipo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26995028048060761)
,p_query_column_id=>11
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26995416971060761)
,p_query_column_id=>12
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26995837726060761)
,p_query_column_id=>13
,p_column_alias=>'PRECIO_VENTA'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26885091081691709)
,p_query_column_id=>14
,p_column_alias=>'FOTO'
,p_column_display_sequence=>12
,p_column_heading=>'Foto'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30189234510812775)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26988502266060584)
,p_button_name=>'ADD_ITEM'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Producto'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:33::'
,p_button_css_classes=>'sana-button'
,p_icon_css_classes=>'fa-table-plus'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30190017297812783)
,p_name=>'Hide Success Alerts'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30190097177812784)
,p_event_id=>wwv_flow_api.id(30190017297812783)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#t_Alert_Success'').delay(2000).fadeOut();'
);
wwv_flow_api.component_end;
end;
/
