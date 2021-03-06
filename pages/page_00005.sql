prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(74639230748844335)
,p_name=>'Compras'
,p_step_title=>'Compras'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_file_urls=>'#APP_IMAGES#js/compras.js'
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
,p_step_template=>wwv_flow_api.id(74520882497844221)
,p_page_css_classes=>'main-form'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SANA_DEV'
,p_last_upd_yyyymmddhh24miss=>'20201019194107'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78974241527629267)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79110200864539885)
,p_plug_name=>unistr('Indormaci\00F3n')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74528641814844229)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P5_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78990903172629307)
,p_plug_name=>'Detalle de Compra'
,p_parent_plug_id=>wwv_flow_api.id(79110200864539885)
,p_icon_css_classes=>'fa-list'
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74555992002844245)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'COMPRAS_DETALLES_VIEW'
,p_query_where=>'"ID_COMPRA" = :P5_ID'
,p_include_rowid_column=>true
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P5_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
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
 p_id=>wwv_flow_api.id(79040714185269386)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No hay detalles.'
,p_max_rows_per_page=>'15'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_report_list_mode=>'NONE'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP:P11_ROWID:#ROWID#'
,p_detail_link_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\200B\200B<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'),
'',
''))
,p_owner=>'SANA'
,p_internal_uid=>58498245489839423
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79040825481269387)
,p_db_column_name=>'ROWID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80404795042887793)
,p_db_column_name=>'ID'
,p_display_order=>20
,p_column_identifier=>'BD'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80404951196887794)
,p_db_column_name=>'ID_COMPRA'
,p_display_order=>30
,p_column_identifier=>'BE'
,p_column_label=>'Id Compra'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80405054730887795)
,p_db_column_name=>'ID_MATERIA'
,p_display_order=>40
,p_column_identifier=>'BF'
,p_column_label=>'Id Materia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80405080616887796)
,p_db_column_name=>'NOMBRE'
,p_display_order=>50
,p_column_identifier=>'BG'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80405233530887797)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80405360527887798)
,p_db_column_name=>'UNIDAD_MEDIDA'
,p_display_order=>70
,p_column_identifier=>'BI'
,p_column_label=>'Unidad Medida'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80405414920887799)
,p_db_column_name=>'PRECIO'
,p_display_order=>80
,p_column_identifier=>'BJ'
,p_column_label=>'Precio'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'FML999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80405562297887800)
,p_db_column_name=>'PRECIO_SUGERIDO'
,p_display_order=>90
,p_column_identifier=>'BK'
,p_column_label=>'Precio Sugerido'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'FML999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80405589006887801)
,p_db_column_name=>'CANTIDAD_SUGERIDA'
,p_display_order=>100
,p_column_identifier=>'BL'
,p_column_label=>'Cantidad Sugerida'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(79083911208932645)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'585415'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'NOMBRE:CANTIDAD:UNIDAD_MEDIDA:PRECIO:'
,p_sort_column_1=>'PRECIO'
,p_sort_direction_1=>'DESC NULLS LAST'
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
,p_sum_columns_on_break=>'PRECIO'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(17475958445264525)
,p_report_id=>wwv_flow_api.id(79083911208932645)
,p_name=>'Precio elevado'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'APXWS_CC_003'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>' (case when ((#APXWS_CC_EXPR#) > to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#E8E8E8'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(17476338772264526)
,p_report_id=>wwv_flow_api.id(79083911208932645)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'( BJ / BH )'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'Precio Unitario'
,p_report_label=>'Precio Unitario'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(17476740509264526)
,p_report_id=>wwv_flow_api.id(79083911208932645)
,p_db_column_name=>'APXWS_CC_002'
,p_column_identifier=>'C02'
,p_computation_expr=>'( BK / BL )'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'Precio Sugerido'
,p_report_label=>'Precio Sugerido'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(17477190641264527)
,p_report_id=>wwv_flow_api.id(79083911208932645)
,p_db_column_name=>'APXWS_CC_003'
,p_column_identifier=>'C03'
,p_computation_expr=>'( BJ / BH )  - ( BK / BL )'
,p_format_mask=>'999G999G999G999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'Alerta'
,p_report_label=>'Alerta'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79111694989539900)
,p_plug_name=>'c-container'
,p_parent_plug_id=>wwv_flow_api.id(79110200864539885)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74528641814844229)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(17393567370972701)
,p_name=>unistr('Informaci\00F3n de Pago')
,p_parent_plug_id=>wwv_flow_api.id(79111694989539900)
,p_template=>wwv_flow_api.id(74555992002844245)
,p_display_sequence=>40
,p_region_css_classes=>'js-master-region'
,p_icon_css_classes=>'fa-money'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--showIcon:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'COMPRAS_VIEW'
,p_query_where=>'"ID" = :P5_ID'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(74587948743844265)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Record Selected'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17393832715972704)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "COMPRAS"',
'where "ID" is not null',
'and "ID" = :P5_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17393957421972705)
,p_query_column_id=>2
,p_column_alias=>'FECHA'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17394004438972706)
,p_query_column_id=>3
,p_column_alias=>'PROVEEDOR'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17394112261972707)
,p_query_column_id=>4
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17394227244972708)
,p_query_column_id=>5
,p_column_alias=>'TELEFONO'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17394346197972709)
,p_query_column_id=>6
,p_column_alias=>'DIRECCION'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17394437407972710)
,p_query_column_id=>7
,p_column_alias=>'ENTREGA'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17394562347972711)
,p_query_column_id=>8
,p_column_alias=>'FACTURA'
,p_column_display_sequence=>8
,p_column_heading=>'Factura'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17394607835972712)
,p_query_column_id=>9
,p_column_alias=>'Tipo Pago'
,p_column_display_sequence=>9
,p_column_heading=>'Forma Pago'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17394767334972713)
,p_query_column_id=>10
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>10
,p_column_heading=>'Total'
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17394862473972714)
,p_query_column_id=>11
,p_column_alias=>'OBSERVACION'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(78984146818629298)
,p_name=>unistr('Informaci\00F3n de Compra')
,p_parent_plug_id=>wwv_flow_api.id(79111694989539900)
,p_template=>wwv_flow_api.id(74555992002844245)
,p_display_sequence=>30
,p_region_css_classes=>'js-master-region'
,p_icon_css_classes=>'fa-info-circle-o'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--showIcon:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'COMPRAS_VIEW'
,p_query_where=>'"ID" = :P5_ID'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P5_ID,P5_ID_NEW'
,p_query_row_template=>wwv_flow_api.id(74587948743844265)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Record Selected'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(78984840116629299)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>unistr('C\00F3digo Compra')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "COMPRAS"',
'where "ID" is not null',
'and "ID" = :P5_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79042440289269403)
,p_query_column_id=>2
,p_column_alias=>'FECHA'
,p_column_display_sequence=>4
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79108556265539868)
,p_query_column_id=>3
,p_column_alias=>'PROVEEDOR'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79108656803539869)
,p_query_column_id=>4
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>3
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79108680585539870)
,p_query_column_id=>5
,p_column_alias=>'TELEFONO'
,p_column_display_sequence=>6
,p_column_heading=>unistr('Tel\00E9fono')
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79108802832539871)
,p_query_column_id=>6
,p_column_alias=>'DIRECCION'
,p_column_display_sequence=>5
,p_column_heading=>unistr('Direcci\00F3n')
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79043313045269412)
,p_query_column_id=>7
,p_column_alias=>'ENTREGA'
,p_column_display_sequence=>8
,p_column_heading=>'Entrega'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79042944882269408)
,p_query_column_id=>8
,p_column_alias=>'FACTURA'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79514896819759088)
,p_query_column_id=>9
,p_column_alias=>'Tipo Pago'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79043029944269409)
,p_query_column_id=>10
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79043086096269410)
,p_query_column_id=>11
,p_column_alias=>'OBSERVACION'
,p_column_display_sequence=>11
,p_column_heading=>'Observaciones'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80724039577028971)
,p_plug_name=>'grafica'
,p_parent_plug_id=>wwv_flow_api.id(79110200864539885)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody:margin-top-sm'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(74555992002844245)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(80724090632028972)
,p_region_id=>wwv_flow_api.id(80724039577028971)
,p_chart_type=>'donut'
,p_title=>unistr('Distribuci\00F3n de Costos')
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(80724216125028973)
,p_chart_id=>wwv_flow_api.id(80724090632028972)
,p_seq=>10
,p_name=>unistr('Distribuci\00F3n de costos')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       m.nombre, ',
'       cd.PRECIO',
'  from ',
'      COMPRAS_DETALLES cd',
'inner join ',
'    materias m on m.id = cd.id_materia',
'inner join ',
'    compras c on c.id = cd.id_compra',
' where ',
'     c.id = :P5_ID'))
,p_items_value_column_name=>'PRECIO'
,p_items_label_column_name=>'NOMBRE'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78975288837629268)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(78974241527629267)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'NUEVA COMPRA'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10::'
,p_button_css_classes=>'sana-button'
,p_icon_css_classes=>'fa-cart-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79008535926629329)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(78984146818629298)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_image_alt=>unistr('Editar informaci\00F3n')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10:P10_ID:&P5_ID.'
,p_icon_css_classes=>'fa-pencil-square-o'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17395064817972716)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(78974241527629267)
,p_button_name=>'Next'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(74616029879844288)
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'select * from compras where (id > :P5_ID);'
,p_button_condition_type=>'EXISTS'
,p_button_css_classes=>'sana-button'
,p_icon_css_classes=>'fa-arrow-circle-o-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18186736915404502)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(78974241527629267)
,p_button_name=>'Previous'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(74616029879844288)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'select * from compras where (id < :P5_ID);'
,p_button_condition_type=>'EXISTS'
,p_button_css_classes=>'sana-button'
,p_icon_css_classes=>'fa-arrow-circle-o-left'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78996665177629315)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(78990903172629307)
,p_button_name=>'POP_COMPRAS_DETALLES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Detalle'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11:P11_ID_COMPRA:&P5_ID.'
,p_button_css_classes=>'sana-button'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17395267868972718)
,p_name=>'P5_ID_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(78974241527629267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78990123132629306)
,p_name=>'P5_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(78984146818629298)
,p_display_as=>'NATIVE_HIDDEN'
,p_security_scheme=>wwv_flow_api.id(74643239915844353)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(79008769156629330)
,p_name=>'Edit compra info'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(79008535926629329)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(79009414362629330)
,p_event_id=>wwv_flow_api.id(79008769156629330)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(78984146818629298)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17394983797972715)
,p_event_id=>wwv_flow_api.id(79008769156629330)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(17393567370972701)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(79627186991990678)
,p_event_id=>wwv_flow_api.id(79008769156629330)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(78990903172629307)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(78991003018629308)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(78990903172629307)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(78997330173629318)
,p_event_id=>wwv_flow_api.id(78991003018629308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(78990903172629307)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(81507075345930397)
,p_name=>'Hide Success Alerts'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81507196846930398)
,p_event_id=>wwv_flow_api.id(81507075345930397)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#t_Alert_Success'').delay(2000).fadeOut();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(81507293633930399)
,p_name=>'refresh grafica'
,p_event_sequence=>190
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(78990903172629307)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81507396419930400)
,p_event_id=>wwv_flow_api.id(81507293633930399)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(80724039577028971)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17395399033972719)
,p_name=>'Next'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(17395064817972716)
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17395435869972720)
,p_event_id=>wwv_flow_api.id(17395399033972719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    min(id)',
'from ',
'    compras ',
'where ',
'    id > :P5_ID',
'order by ',
'    id;'))
,p_attribute_07=>'P5_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17395529988972721)
,p_event_id=>wwv_flow_api.id(17395399033972719)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18186805625404503)
,p_name=>'Previous'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(18186736915404502)
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18187070459404505)
,p_event_id=>wwv_flow_api.id(18186805625404503)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    max(id)',
'from ',
'    compras ',
'where ',
'    id < :P5_ID',
'order by ',
'    id;'))
,p_attribute_07=>'P5_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18186937385404504)
,p_event_id=>wwv_flow_api.id(18186805625404503)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.component_end;
end;
/
