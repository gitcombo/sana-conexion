prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(74639230748844335)
,p_name=>'Materias'
,p_step_title=>'Materias'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_IMAGES#js/bodegas.js'
,p_step_template=>wwv_flow_api.id(74511059838844216)
,p_page_css_classes=>'main-form'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SANA_DEV'
,p_last_upd_yyyymmddhh24miss=>'20201014010820'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(26140286295041203)
,p_name=>unistr('\00A1 Alerta !')
,p_template=>wwv_flow_api.id(74555992002844245)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-ContentRow--styleCompact:t-ContentRow--alignTop:t-Report--hideNoPagination:t-ContentRow--hideTitle:t-ContentRow--hideDescription:t-ContentRow--hideActions'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    nombre selection, ',
'    "Disponible" || '' '' || unidad_medida misc,',
'    null icon_class,',
'    null icon_html',
'from ',
'    bodegas_view ',
'where ',
'    "Disponible" < alerta;'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(74578510743844260)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16882392346010848)
,p_query_column_id=>1
,p_column_alias=>'SELECTION'
,p_column_display_sequence=>3
,p_column_heading=>'Selection'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16882418393010849)
,p_query_column_id=>2
,p_column_alias=>'MISC'
,p_column_display_sequence=>4
,p_column_heading=>'Misc'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16882198936010846)
,p_query_column_id=>3
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>1
,p_column_heading=>'Icon Class'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16882282507010847)
,p_query_column_id=>4
,p_column_alias=>'ICON_HTML'
,p_column_display_sequence=>2
,p_column_heading=>'Icon Html'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80559813711684509)
,p_plug_name=>'Materia Disponible'
,p_icon_css_classes=>'fa-package'
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74555992002844245)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'BODEGAS_VIEW'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(80560197079684510)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RP,:P21_ID,P21_DISPONIBLE,P21_ALERTA,P21_MATERIA_BODEGA:#MATAERIA#,#Disponible#,#ALERTA#,#ID#'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'SANA'
,p_internal_uid=>60017728384254547
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80560340468684511)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80495196236619178)
,p_db_column_name=>'FECHA_MODIFICACION'
,p_display_order=>10
,p_column_identifier=>'G'
,p_column_label=>unistr('\00DAltima Modificaci\00F3n')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80560760224684512)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80561509798684512)
,p_db_column_name=>'UNIDAD_MEDIDA'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Unidad Medida'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80561899720684513)
,p_db_column_name=>'PRECIO_SUGERIDO'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Precio Sugerido'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80562354838684513)
,p_db_column_name=>'CANTIDAD_SUGERIDA'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Cantidad Sugerida'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80495307271619179)
,p_db_column_name=>'ID_BODEGA'
,p_display_order=>60
,p_column_identifier=>'H'
,p_column_label=>'Id Bodega'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80495396729619180)
,p_db_column_name=>'MATAERIA'
,p_display_order=>70
,p_column_identifier=>'I'
,p_column_label=>'Mataeria'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80495545767619181)
,p_db_column_name=>'Disponible'
,p_display_order=>80
,p_column_identifier=>'J'
,p_column_label=>'Disponible'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80495653312619182)
,p_db_column_name=>'ALERTA'
,p_display_order=>90
,p_column_identifier=>'K'
,p_column_label=>'Alerta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(80566080324688659)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'600237'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'NOMBRE:Disponible:UNIDAD_MEDIDA:APXWS_CC_001:FECHA_MODIFICACION:'
,p_sort_column_1=>'NOMBRE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(17308230240857390)
,p_report_id=>wwv_flow_api.id(80566080324688659)
,p_name=>'Baja cantidad'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'APXWS_CC_002'
,p_operator=>'<'
,p_expr=>'0'
,p_condition_sql=>' (case when ((#APXWS_CC_EXPR#) < to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# < #APXWS_EXPR_NUMBER#  '
,p_enabled=>'N'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FFD6D2'
,p_row_font_color=>'#000000'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(17308695378857390)
,p_report_id=>wwv_flow_api.id(80566080324688659)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'( E /  F )'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'Costo Unitario'
,p_report_label=>'Costo Unitario'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(17309082595857390)
,p_report_id=>wwv_flow_api.id(80566080324688659)
,p_db_column_name=>'APXWS_CC_002'
,p_column_identifier=>'C02'
,p_computation_expr=>'J - K'
,p_format_mask=>'999G999G999G999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'isAlert'
,p_report_label=>'isAlert'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80563833261684516)
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
 p_id=>wwv_flow_api.id(80564981165684517)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(80563833261684516)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Materia'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:21'
,p_button_css_classes=>'sana-button'
,p_icon_css_classes=>'fa-database-plus'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80723624884028967)
,p_name=>'P20_ALERT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(80559813711684509)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(80562739522684513)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(80559813711684509)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(80563205480684514)
,p_event_id=>wwv_flow_api.id(80562739522684513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(80559813711684509)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(80496612027619192)
,p_event_id=>wwv_flow_api.id(80562739522684513)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Bodega Actualizada'');'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(80496686382619193)
,p_event_id=>wwv_flow_api.id(80562739522684513)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#t_Alert_Success'').delay(2000).fadeOut();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30027120648265589)
,p_name=>'Edit Report - Dialog Closed_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(80564981165684517)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30027234588265590)
,p_event_id=>wwv_flow_api.id(30027120648265589)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(80559813711684509)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30027364459265591)
,p_event_id=>wwv_flow_api.id(30027120648265589)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Bodega Actualizada'');'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30027400181265592)
,p_event_id=>wwv_flow_api.id(30027120648265589)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#t_Alert_Success'').delay(2000).fadeOut();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(80723747015028968)
,p_name=>'Refresh Badges'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(80559813711684509)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(80723813521028969)
,p_event_id=>wwv_flow_api.id(80723747015028968)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_ALERT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    count(*)',
'from ',
'    materias_bodegas',
'where',
'    cantidad < alerta',
'and',
'    id_bodega = 1',
';'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(80723950291028970)
,p_event_id=>wwv_flow_api.id(80723747015028968)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'actualizarBadges();'
);
wwv_flow_api.component_end;
end;
/
