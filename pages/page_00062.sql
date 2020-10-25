prompt --application/pages/page_00062
begin
--   Manifest
--     PAGE: 00062
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
 p_id=>62
,p_user_interface_id=>wwv_flow_api.id(74639230748844335)
,p_name=>'Proveedores Precios'
,p_page_mode=>'MODAL'
,p_step_title=>'&APP_NAME.'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SANA'
,p_last_upd_yyyymmddhh24miss=>'20200706065201'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79295049346273794)
,p_plug_name=>unistr('Busca el precio m\00E1s bajo')
,p_icon_css_classes=>'fa-search'
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74555992002844245)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79295198689273796)
,p_plug_name=>'TOP Proveedores'
,p_parent_plug_id=>wwv_flow_api.id(79295049346273794)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74555992002844245)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    pm.id_proveedor as "IdProveedor",',
'    p.nombre as "Proveedor", ',
'    pm.id_materia as "IdMateria",',
'    m.nombre as "Materia",',
'    m.unidad_medida as "Unidad",',
'    pm.precio as "Total", ',
'    pm.cantidad as "Cantidad", ',
'    ( pm.precio / pm.cantidad ) as "Precio Unitario"',
'from',
'    proveedores_materias pm',
'inner join',
'    proveedores p on p.id = pm.id_proveedor',
'inner join',
'    materias m on m.id = pm.id_materia',
'where',
'    pm.id_materia = :P62_MATERIA',
'order by ',
'    "Precio Unitario" asc',
';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P62_MATERIA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(79295804811273802)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No hay proveedores que vendan esta materia.'
,p_max_rows_per_page=>'10'
,p_search_button_label=>'Buscar'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_show_detail_link=>'C'
,p_detail_link=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:RP:P61_ID:#IdProveedor#'
,p_detail_link_text=>unistr('\200B\200B<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>')
,p_owner=>'SANA'
,p_internal_uid=>58753336115843839
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79296605787273810)
,p_db_column_name=>'IdProveedor'
,p_display_order=>10
,p_column_identifier=>'F'
,p_column_label=>'Idproveedor'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79296863547273812)
,p_db_column_name=>'IdMateria'
,p_display_order=>30
,p_column_identifier=>'H'
,p_column_label=>'Idmateria'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79296907827273813)
,p_db_column_name=>'Materia'
,p_display_order=>40
,p_column_identifier=>'I'
,p_column_label=>'Materia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79296705807273811)
,p_db_column_name=>'Proveedor'
,p_display_order=>50
,p_column_identifier=>'G'
,p_column_label=>'Proveedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79512469609759064)
,p_db_column_name=>'Total'
,p_display_order=>60
,p_column_identifier=>'J'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'FML999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79512608974759065)
,p_db_column_name=>'Cantidad'
,p_display_order=>70
,p_column_identifier=>'K'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79514453710759083)
,p_db_column_name=>'Unidad'
,p_display_order=>80
,p_column_identifier=>'M'
,p_column_label=>'Unidad'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79512696959759066)
,p_db_column_name=>'Precio Unitario'
,p_display_order=>90
,p_column_identifier=>'L'
,p_column_label=>'Precio Unitario'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'FML999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(79509960038679059)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'589675'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IdProveedor:Proveedor:IdMateria:Materia:Total:Cantidad:Precio Unitario:Unidad'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79295138515273795)
,p_name=>'P62_MATERIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79295049346273794)
,p_item_default=>'1'
,p_prompt=>'Selecciona la materia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LISTA_MATERIAS'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(79296408953273808)
,p_name=>'MATERIA'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P62_MATERIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(79296502692273809)
,p_event_id=>wwv_flow_api.id(79296408953273808)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(79295198689273796)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(79514542466759084)
,p_name=>'Refresh Item'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(79295198689273796)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(79514576590759085)
,p_event_id=>wwv_flow_api.id(79514542466759084)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(79295198689273796)
);
wwv_flow_api.component_end;
end;
/
