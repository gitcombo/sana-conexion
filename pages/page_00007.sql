prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(74639230748844335)
,p_name=>'Productos'
,p_step_title=>'Productos'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_file_urls=>'#APP_IMAGES#js/productos.js'
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
,p_last_upd_yyyymmddhh24miss=>'20201019220611'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79930289188077706)
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
 p_id=>wwv_flow_api.id(80036007866662478)
,p_plug_name=>'Record Selected'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74528641814844229)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P7_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(79940256055077739)
,p_name=>unistr('Informaci\00F3n')
,p_parent_plug_id=>wwv_flow_api.id(80036007866662478)
,p_template=>wwv_flow_api.id(74555992002844245)
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_icon_css_classes=>'fa-info-circle-o'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--showIcon:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NOMBRE,',
'       CODIGO,',
'       TIPO,',
'       PESO,',
'       PORCION,',
'       DESCRIPCION,',
'       PRECIO_VENTA,',
'       FOTO,',
'       URL',
'  from PRODUCTOS_VIEW',
' where "ID" = :P7_ID'))
,p_display_when_condition=>'P7_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_api.id(79940903739077740)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "PRODUCTOS"',
'where "ID" is not null',
'and "ID" = :P7_ID'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79984235085335490)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>2
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79984727668335495)
,p_query_column_id=>3
,p_column_alias=>'CODIGO'
,p_column_display_sequence=>3
,p_column_heading=>unistr('C\00F3digo')
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79984808309335496)
,p_query_column_id=>4
,p_column_alias=>'TIPO'
,p_column_display_sequence=>5
,p_column_heading=>'Tipo'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79984343664335491)
,p_query_column_id=>5
,p_column_alias=>'PESO'
,p_column_display_sequence=>6
,p_column_heading=>'Peso'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79984370232335492)
,p_query_column_id=>6
,p_column_alias=>'PORCION'
,p_column_display_sequence=>7
,p_column_heading=>'Porciones'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79984610910335494)
,p_query_column_id=>7
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>8
,p_column_heading=>unistr('Descripci\00F3n')
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18187171712404506)
,p_query_column_id=>8
,p_column_alias=>'PRECIO_VENTA'
,p_column_display_sequence=>4
,p_column_heading=>'Precio'
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18187239403404507)
,p_query_column_id=>9
,p_column_alias=>'FOTO'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18187363326404508)
,p_query_column_id=>10
,p_column_alias=>'URL'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79948031254077751)
,p_plug_name=>'Ingredientes'
,p_parent_plug_id=>wwv_flow_api.id(80036007866662478)
,p_icon_css_classes=>'fa-list-alt'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--showIcon:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74555992002844245)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       ID,',
'       ID_PRODUCTO,',
'       NOMBRE,',
'       ID_MATERIA,',
'       CANTIDAD_SUGERIDA,',
'       PRECIO_SUGERIDO,',
'       MATERIA,',
'       CANTIDAD,',
'       UNIDAD_MEDIDA,',
'       COMENTARIO',
'  from COSTOS_VIEW',
' where "ID_PRODUCTO" = :P7_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P7_ID'
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
 p_id=>wwv_flow_api.id(80034737575662465)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,:P12_ID,P12_ROWID:#ID#,#ROWID#'
,p_detail_link_text=>unistr('\200B\200B<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>')
,p_owner=>'SANA'
,p_internal_uid=>59492268880232502
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80034851526662466)
,p_db_column_name=>'ROWID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80034930074662467)
,p_db_column_name=>'ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80035068643662468)
,p_db_column_name=>'ID_PRODUCTO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Id Producto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80035112168662469)
,p_db_column_name=>'NOMBRE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80035180337662470)
,p_db_column_name=>'ID_MATERIA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Id Materia'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80035537977662473)
,p_db_column_name=>'MATERIA'
,p_display_order=>60
,p_column_identifier=>'H'
,p_column_label=>'Materia'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80035614967662474)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>70
,p_column_identifier=>'I'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80035698270662475)
,p_db_column_name=>'UNIDAD_MEDIDA'
,p_display_order=>80
,p_column_identifier=>'J'
,p_column_label=>'Unidad Medida'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80035351743662471)
,p_db_column_name=>'CANTIDAD_SUGERIDA'
,p_display_order=>90
,p_column_identifier=>'F'
,p_column_label=>'Cantidad Sugerida'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80035383975662472)
,p_db_column_name=>'PRECIO_SUGERIDO'
,p_display_order=>100
,p_column_identifier=>'G'
,p_column_label=>'Precio Sugerido'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26139017473041190)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(80049624181680425)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'595072'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MATERIA:APXWS_CC_002:APXWS_CC_001:CANTIDAD:UNIDAD_MEDIDA:COMENTARIO:'
,p_sort_column_1=>'UNIDAD_MEDIDA'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'APXWS_CC_002'
,p_sort_direction_2=>'DESC NULLS LAST'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_sum_columns_on_break=>'APXWS_CC_002'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(18277497854099222)
,p_report_id=>wwv_flow_api.id(80049624181680425)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'G / F'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'Costo Unitario'
,p_report_label=>'Costo Unitario'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(18277890162099223)
,p_report_id=>wwv_flow_api.id(80049624181680425)
,p_db_column_name=>'APXWS_CC_002'
,p_column_identifier=>'C02'
,p_computation_expr=>'( G / F ) * I'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'Costo Total'
,p_report_label=>'Costo Total'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80145169247396495)
,p_plug_name=>'Precio de Venta'
,p_parent_plug_id=>wwv_flow_api.id(80036007866662478)
,p_icon_css_classes=>'fa-money'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--showIcon:i-h320:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74555992002844245)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80194619038567003)
,p_plug_name=>'Costos por Ingrediente'
,p_parent_plug_id=>wwv_flow_api.id(80036007866662478)
,p_icon_css_classes=>'fa-pie-chart'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--showIcon:i-h320:t-Region--noBorder:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(74555992002844245)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(80194719339567004)
,p_region_id=>wwv_flow_api.id(80194619038567003)
,p_chart_type=>'donut'
,p_height=>'320'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'dim'
,p_value_format_scaling=>'auto'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(80194792564567005)
,p_chart_id=>wwv_flow_api.id(80194719339567004)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    materia, ',
'    unidad_medida,',
'    SUM( (precio_sugerido / cantidad_sugerida * cantidad ) ) as "Costo"',
'from ',
'    costos_view',
'where ',
'    id_producto = :P7_ID',
'group by ',
'    materia, ',
'    unidad_medida',
'; '))
,p_items_value_column_name=>'Costo'
,p_items_label_column_name=>'MATERIA'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79954455021077762)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(79948031254077751)
,p_button_name=>'POP_COSTOS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Ingrediente'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,:P12_ID_PRODUCTO:&P7_ID.'
,p_button_css_classes=>'sana-button'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80191426539566971)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(80145169247396495)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar Precio'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'sana-button'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79966988522077777)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(79940256055077739)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_image_alt=>unistr('Editar Informaci\00F3n')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:RP,:P33_ID:&P7_ID.'
,p_icon_css_classes=>'fa-pencil-square-o'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30025251587265570)
,p_name=>'P7_COSTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(80145169247396495)
,p_item_default=>'0'
,p_prompt=>'Costo'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_icon_css_classes=>'fa-money'
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79947188327077750)
,p_name=>'P7_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79940256055077739)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80145387610396497)
,p_name=>'P7_GANANCIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(80145169247396495)
,p_item_default=>'0'
,p_prompt=>'Gananacia'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_icon_css_classes=>'fa-plus'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80145515412396498)
,p_name=>'P7_VENTA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(80145169247396495)
,p_prompt=>'Precio Venta'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_icon_css_classes=>'fa-money'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80498291882619209)
,p_name=>'P7_PORCENTAJE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(80145169247396495)
,p_item_default=>'0'
,p_prompt=>'Porcentaje de Ganancia'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_icon_css_classes=>'fa-pie-chart-25'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(79967304197077777)
,p_name=>'Edit Master Record'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(79940256055077739)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(79967961985077778)
,p_event_id=>wwv_flow_api.id(79967304197077777)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(79940256055077739)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(79968408696077778)
,p_event_id=>wwv_flow_api.id(79967304197077777)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Productos\u0020updated'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(79948107977077752)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(79948031254077751)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(79955131374077765)
,p_event_id=>wwv_flow_api.id(79948107977077752)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(79948031254077751)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26137523580041175)
,p_event_id=>wwv_flow_api.id(79948107977077752)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_COSTO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    TRIM(TO_CHAR(NVL(SUM(precio_sugerido / cantidad_sugerida * cantidad),0),''FML99,999.99''))',
'from ',
'    costos_view',
'where',
'    id_producto = :P7_ID;'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(79955607700077766)
,p_event_id=>wwv_flow_api.id(79948107977077752)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess(''Costoactualizados'');',
'$(''#t_Alert_Success'').delay(2000).fadeOut();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(80195233314567009)
,p_name=>'SAVE_PRICE'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(80191426539566971)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(80195351574567010)
,p_event_id=>wwv_flow_api.id(80195233314567009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'PQT_PRODUCTO.actualizar_precio( :P7_VENTA, :P7_ID);',
'END;'))
,p_attribute_02=>'P7_ID,P7_VENTA,P7_GANANCIA'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(80195384562567011)
,p_event_id=>wwv_flow_api.id(80195233314567009)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_VENTA'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(80270530495927664)
,p_event_id=>wwv_flow_api.id(80195233314567009)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Precio de venta actualizado.'');'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(80270635857927665)
,p_event_id=>wwv_flow_api.id(80195233314567009)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#t_Alert_Success'').delay(2000).fadeOut();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30025269783265571)
,p_name=>'Set Costo'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P7_ID'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30025382209265572)
,p_event_id=>wwv_flow_api.id(30025269783265571)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_COSTO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    TRIM(TO_CHAR(NVL(SUM(precio_sugerido / cantidad_sugerida * cantidad),0),''FML99,999.99''))',
'from ',
'    costos_view',
'where',
'    id_producto = :P7_ID;'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30025565010265573)
,p_event_id=>wwv_flow_api.id(30025269783265571)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_VENTA'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    TRIM(to_char(precio_venta, ''99999.99''))',
'from ',
'    productos',
'where',
'    id = :P7_ID;'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30025610909265574)
,p_event_id=>wwv_flow_api.id(30025269783265571)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setValues();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30025724341265575)
,p_name=>'Key Costo'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_COSTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30025857530265576)
,p_event_id=>wwv_flow_api.id(30025724341265575)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'KeyUpCostos();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30026217886265580)
,p_name=>'Key ganancia'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_GANANCIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30026310084265581)
,p_event_id=>wwv_flow_api.id(30026217886265580)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'KeyUpGanancia();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30026385911265582)
,p_name=>'Key porcentaje'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_PORCENTAJE'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30026519564265583)
,p_event_id=>wwv_flow_api.id(30026385911265582)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'KeyUpPorcentaje();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30026612855265584)
,p_name=>'Key ventas'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_VENTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30026692976265585)
,p_event_id=>wwv_flow_api.id(30026612855265584)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'KeyUpVentas();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30028483895265603)
,p_name=>'Hide Success'
,p_event_sequence=>190
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30028653151265604)
,p_event_id=>wwv_flow_api.id(30028483895265603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#t_Alert_Success'').delay(2000).fadeOut();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30028746553265605)
,p_name=>'Refresh grafica'
,p_event_sequence=>200
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(79948031254077751)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30028850129265606)
,p_event_id=>wwv_flow_api.id(30028746553265605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(80194619038567003)
);
wwv_flow_api.component_end;
end;
/
