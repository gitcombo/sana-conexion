prompt --application/pages/page_00093
begin
--   Manifest
--     PAGE: 00093
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
 p_id=>93
,p_user_interface_id=>wwv_flow_api.id(74639230748844335)
,p_name=>'Tipos de Producto'
,p_page_mode=>'MODAL'
,p_step_title=>'Tipos de Producto'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'SANA'
,p_last_upd_yyyymmddhh24miss=>'20200630102405'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74963242015147470)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74554139672844244)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'TIPOS_PRODUCTOS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(74963586876147471)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'10'
,p_search_button_label=>'Buscar'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_show_detail_link=>'C'
,p_detail_link=>'f?p=&APP_ID.:931:&SESSION.::&DEBUG.:RP:P931_ID:\#ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'SANA'
,p_internal_uid=>54421118180717508
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74963764949147471)
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
 p_id=>wwv_flow_api.id(74964126651147471)
,p_db_column_name=>'TIPO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74964502258147471)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(74967442873164193)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'544250'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:TIPO:DESCRIPCION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74965949830147472)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(74963242015147470)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:931:&SESSION.::&DEBUG.:931'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(74964915842147472)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(74963242015147470)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74965457640147472)
,p_event_id=>wwv_flow_api.id(74964915842147472)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(74963242015147470)
);
wwv_flow_api.component_end;
end;
/
