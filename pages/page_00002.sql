prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(74639230748844335)
,p_name=>'Clientes'
,p_step_title=>'Clientes'
,p_autocomplete_on_off=>'OFF'
,p_page_css_classes=>'main-form'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SANA_DEV'
,p_last_upd_yyyymmddhh24miss=>'20201019223435'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18189012593404525)
,p_plug_name=>'container'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74555992002844245)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79875255514568361)
,p_plug_name=>'Lista de Clientes'
,p_parent_plug_id=>wwv_flow_api.id(18189012593404525)
,p_icon_css_classes=>'fa-list'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--showIcon:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74555992002844245)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'CLIENTES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(79875641737568361)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_ID:\#ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'SANA'
,p_internal_uid=>59333173042138398
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79826032090836095)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'N'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79826111645836096)
,p_db_column_name=>'PRIMER_NOMBRE'
,p_display_order=>20
,p_column_identifier=>'O'
,p_column_label=>'Primer Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79826175577836097)
,p_db_column_name=>'SEGUNDO_NOMBRE'
,p_display_order=>30
,p_column_identifier=>'P'
,p_column_label=>'Segundo Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79826343854836098)
,p_db_column_name=>'PRIMER_APELLIDO'
,p_display_order=>40
,p_column_identifier=>'Q'
,p_column_label=>'Primer Apellido'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79826416751836099)
,p_db_column_name=>'SEGUNDO_APELLIDO'
,p_display_order=>50
,p_column_identifier=>'R'
,p_column_label=>'Segundo Apellido'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79826540595836100)
,p_db_column_name=>'TELEFONO'
,p_display_order=>60
,p_column_identifier=>'S'
,p_column_label=>'Telefono'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79826578447836101)
,p_db_column_name=>'CELULAR'
,p_display_order=>70
,p_column_identifier=>'T'
,p_column_label=>'Celular'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79826754777836102)
,p_db_column_name=>'DIRECCION'
,p_display_order=>80
,p_column_identifier=>'U'
,p_column_label=>unistr('Direcci\00F3n primaria')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79826861681836103)
,p_db_column_name=>'DIRECCION2'
,p_display_order=>90
,p_column_identifier=>'V'
,p_column_label=>unistr('Direcci\00F3n Secundaria')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79826895254836104)
,p_db_column_name=>'IG'
,p_display_order=>100
,p_column_identifier=>'W'
,p_column_label=>'Redes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79827007124836105)
,p_db_column_name=>'FECHA_INGRESO'
,p_display_order=>110
,p_column_identifier=>'X'
,p_column_label=>'Fecha Ingreso'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79827103291836106)
,p_db_column_name=>'CORREO'
,p_display_order=>120
,p_column_identifier=>'Y'
,p_column_label=>'Correo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(79882917831576620)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'593405'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FECHA_INGRESO:APXWS_CC_001:APXWS_CC_002:CORREO:DIRECCION:DIRECCION2:IG:'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(80885689651404785)
,p_report_id=>wwv_flow_api.id(79882917831576620)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'O || '' '' ||  P || '' '' ||  Q || '' '' || R'
,p_column_type=>'STRING'
,p_column_label=>'Nombre Completo'
,p_report_label=>'Nombre Completo'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(80886101479404785)
,p_report_id=>wwv_flow_api.id(79882917831576620)
,p_db_column_name=>'APXWS_CC_002'
,p_column_identifier=>'C02'
,p_computation_expr=>'NVL(S || ''  '' ||  T,''-'')'
,p_column_type=>'STRING'
,p_column_label=>'Contacto'
,p_report_label=>'Contacto'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79880363676568371)
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
 p_id=>wwv_flow_api.id(79881487599568374)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(79880363676568371)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Cliente'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3'
,p_button_css_classes=>'sana-button'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(81059651897078004)
,p_name=>'Refreseh on new'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(79881487599568374)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81059675839078005)
,p_event_id=>wwv_flow_api.id(81059651897078004)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(79875255514568361)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(81060019587078008)
,p_name=>'Refreseh on edit'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(79875255514568361)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81060120141078009)
,p_event_id=>wwv_flow_api.id(81060019587078008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(79875255514568361)
);
wwv_flow_api.component_end;
end;
/
