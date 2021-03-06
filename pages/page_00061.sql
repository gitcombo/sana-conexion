prompt --application/pages/page_00061
begin
--   Manifest
--     PAGE: 00061
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
 p_id=>61
,p_user_interface_id=>wwv_flow_api.id(74639230748844335)
,p_name=>'Proveedores ABC'
,p_page_mode=>'MODAL'
,p_step_title=>'&APP_NAME. - Proveedores'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_css_classes=>'main-form'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'SANA_DEV'
,p_last_upd_yyyymmddhh24miss=>'20201017145655'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78661236253573179)
,p_plug_name=>unistr('Informaci\00F3n')
,p_icon_css_classes=>'fa-info-circle-o'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--showIcon:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74555992002844245)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'PROVEEDORES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78666450147573196)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74529643831844229)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(79203007992093606)
,p_name=>'Historial de Compras'
,p_template=>wwv_flow_api.id(74555992002844245)
,p_display_sequence=>30
,p_icon_css_classes=>'fa-cart-magnifying-glass'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--showIcon:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors:t-MediaList--stack:t-Report--hideNoPagination'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    ''fa fa-cart-check'' icon_class,',
'    apex_page.get_url(',
'        p_page => 5, ',
'        p_items => ''P5_ID'', ',
'        p_values => cd.id_compra) link, ',
'    to_char(c.total,''FML999,9999,999.99'') list_badge,',
'    LISTAGG(m.nombre,'','') list_text,',
'    p.nombre, ',
'    c.id_proveedor,',
'    c.fecha list_title',
'from ',
'    compras_detalles cd',
'inner join ',
'    compras c on c.id = cd.id_compra',
'inner join ',
'    proveedores p on p.id = c.id_proveedor',
'inner join ',
'    materias m on m.id = cd.id_materia',
'where ',
'    c.id_proveedor = :P61_ID',
'group by',
'    cd.id_compra, ',
'    p.nombre,',
'    c.id_proveedor,',
'    c.fecha,',
'    c.total',
';'))
,p_display_when_condition=>'P61_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(74581699098844261)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('A\00FAn no hay compras registradas.')
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17077252527287316)
,p_query_column_id=>1
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'Icon Class'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16881839770010843)
,p_query_column_id=>2
,p_column_alias=>'LINK'
,p_column_display_sequence=>7
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17077004949287314)
,p_query_column_id=>3
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>3
,p_column_heading=>'List Badge'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17076812129287312)
,p_query_column_id=>4
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>1
,p_column_heading=>'List Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16881647592010841)
,p_query_column_id=>5
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>5
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16881715990010842)
,p_query_column_id=>6
,p_column_alias=>'ID_PROVEEDOR'
,p_column_display_sequence=>6
,p_column_heading=>'Id Proveedor'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17076986657287313)
,p_query_column_id=>7
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'List Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79628993100990696)
,p_plug_name=>unistr('Informaci\00F3n de Pago')
,p_icon_css_classes=>'fa-money'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--showIcon:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74555992002844245)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(133280689113060638)
,p_plug_name=>'Me vende'
,p_region_name=>'reporte-materiales'
,p_icon_css_classes=>'fa-cart-heart'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--showIcon:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74555992002844245)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    ''delete'' as "delete",',
'    pm.ID,',
'    pm.ID_PROVEEDOR as "Id Proveedor",',
'    p.nombre as "Proveedor",',
'    pm.ID_MATERIA as "Id Materia", ',
'    m.nombre as "Materia", ',
'    pm.precio AS "Precio", ',
'    pm.cantidad as "Cantidad",',
'    m.unidad_medida as "Unidad", ',
'    ( pm.precio / pm.cantidad ) as "Precio Unitario"',
'    ',
'from ',
'    PROVEEDORES_MATERIAS pm,',
'    materias m, ',
'    proveedores p',
'where ',
'    pm.id_proveedor = p.id',
'and',
'    pm.id_materia = m.id',
'and',
'    pm.id_proveedor = :P61_ID;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P61_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P61_ID'
,p_plug_display_when_cond2=>'-1'
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
 p_id=>wwv_flow_api.id(133280733414060639)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No hay materias ingresadas.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_show_detail_link=>'N'
,p_owner=>'SANA'
,p_internal_uid=>112738264718630676
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78696147027702035)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78696496730702035)
,p_db_column_name=>'Id Proveedor'
,p_display_order=>20
,p_column_identifier=>'D'
,p_column_label=>'Id Proveedor'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78696919204702036)
,p_db_column_name=>'Proveedor'
,p_display_order=>30
,p_column_identifier=>'E'
,p_column_label=>'Proveedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78697340035702036)
,p_db_column_name=>'Id Materia'
,p_display_order=>40
,p_column_identifier=>'F'
,p_column_label=>'Id Materia'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78698084467702037)
,p_db_column_name=>'delete'
,p_display_order=>50
,p_column_identifier=>'H'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-minus-circle delete-irrow" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#ID#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78697705450702036)
,p_db_column_name=>'Materia'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Materia'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79293182327273776)
,p_db_column_name=>'Precio'
,p_display_order=>70
,p_column_identifier=>'I'
,p_column_label=>'Precio'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'FML999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79293276251273777)
,p_db_column_name=>'Cantidad'
,p_display_order=>80
,p_column_identifier=>'J'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79293425143273778)
,p_db_column_name=>'Unidad'
,p_display_order=>90
,p_column_identifier=>'K'
,p_column_label=>'Unidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79293568254273779)
,p_db_column_name=>'Precio Unitario'
,p_display_order=>100
,p_column_identifier=>'L'
,p_column_label=>'Precio Unitario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(133320854991958569)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'581560'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'delete:Materia:Cantidad:Precio:Unidad:Precio Unitario:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79293593937273780)
,p_plug_name=>'Agregar materia'
,p_parent_plug_id=>wwv_flow_api.id(133280689113060638)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74528641814844229)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80724950799028980)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(79293593937273780)
,p_button_name=>'ADD_ITEM'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_image_alt=>'Nueva Materia'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RP,21::'
,p_button_css_classes=>'sana-button'
,p_icon_css_classes=>'fa-plus-circle-o'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78516106033438613)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(79293593937273780)
,p_button_name=>'ADD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Registrar'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'sana-button'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78666833090573196)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(78666450147573196)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74616749976844289)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'sana-button'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78669183200573203)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(78666450147573196)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--pill:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P61_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'sana-button'
,p_icon_css_classes=>'fa-plus'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78668389158573203)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(78666450147573196)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_image_alt=>'Eliminar'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P61_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'sana-button'
,p_icon_css_classes=>'fa-trash-o'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78668775000573203)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(78666450147573196)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74616749976844289)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P61_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'sana-button'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26137378888041174)
,p_name=>'P61_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(78661236253573179)
,p_item_source_plug_id=>wwv_flow_api.id(78661236253573179)
,p_prompt=>'URL'
,p_source=>'URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>512
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78516001946438612)
,p_name=>'P61_LISTA_MATERIAS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79293593937273780)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    id',
'from ',
'    materias',
'order by ',
'    1 desc; '))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Seleccione una materia'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78661559329573180)
,p_name=>'P61_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(78661236253573179)
,p_item_source_plug_id=>wwv_flow_api.id(78661236253573179)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78661886234573189)
,p_name=>'P61_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(78661236253573179)
,p_item_source_plug_id=>wwv_flow_api.id(78661236253573179)
,p_prompt=>'Nombre del Proveedor'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>64
,p_field_template=>wwv_flow_api.id(74615888736844287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78662295502573190)
,p_name=>'P61_DIRECCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(78661236253573179)
,p_item_source_plug_id=>wwv_flow_api.id(78661236253573179)
,p_prompt=>unistr('Direcci\00F3n')
,p_source=>'DIRECCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>128
,p_cHeight=>2
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78662744322573192)
,p_name=>'P61_TELEFONO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(78661236253573179)
,p_item_source_plug_id=>wwv_flow_api.id(78661236253573179)
,p_prompt=>unistr('Tel\00E9fono')
,p_source=>'TELEFONO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>16
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78663139778573192)
,p_name=>'P61_CELULAR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(78661236253573179)
,p_item_source_plug_id=>wwv_flow_api.id(78661236253573179)
,p_prompt=>'Celular'
,p_source=>'CELULAR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>16
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78663551039573192)
,p_name=>'P61_CORREO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(78661236253573179)
,p_item_source_plug_id=>wwv_flow_api.id(78661236253573179)
,p_prompt=>'Correo'
,p_source=>'CORREO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>128
,p_cMaxlength=>128
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78663878323573192)
,p_name=>'P61_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(78661236253573179)
,p_item_source_plug_id=>wwv_flow_api.id(78661236253573179)
,p_prompt=>unistr('Descripci\00F3n')
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>2
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78700349184730570)
,p_name=>'P61_ID_DELETE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(133280689113060638)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79293741242273781)
,p_name=>'P61_PRECIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(79293593937273780)
,p_item_default=>'0.00'
,p_prompt=>'Precio'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_icon_css_classes=>'fa-money'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79293798402273782)
,p_name=>'P61_CANTIDAD'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(79293593937273780)
,p_item_default=>'1'
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_icon_css_classes=>'fa-tiles-2x2'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79294148603273785)
,p_name=>'P61_CUENTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(79628993100990696)
,p_item_source_plug_id=>wwv_flow_api.id(78661236253573179)
,p_prompt=>'No. Cuenta'
,p_source=>'CUENTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79294237378273786)
,p_name=>'P61_TIPO_CUENTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79628993100990696)
,p_item_source_plug_id=>wwv_flow_api.id(78661236253573179)
,p_prompt=>'Tipo Cuenta'
,p_source=>'TIPO_CUENTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LISTA_TIPO_CUENTA'
,p_lov=>'.'||wwv_flow_api.id(79427463326148882)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--'
,p_lov_null_value=>'-'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79294290198273787)
,p_name=>'P61_NOMBRE_CUENTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(79628993100990696)
,p_item_source_plug_id=>wwv_flow_api.id(78661236253573179)
,p_prompt=>'Nombre de la cuenta'
,p_source=>'NOMBRE_CUENTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>128
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79294386952273788)
,p_name=>'P61_BANCO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79628993100990696)
,p_item_source_plug_id=>wwv_flow_api.id(78661236253573179)
,p_prompt=>'Banco'
,p_source=>'BANCO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LISTA_BANCOS'
,p_lov=>'.'||wwv_flow_api.id(79429989586178299)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--'
,p_lov_null_value=>'-'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(78666964972573196)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(78666833090573196)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(78667730048573200)
,p_event_id=>wwv_flow_api.id(78666964972573196)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(78699730636730564)
,p_name=>'ADD'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(78516106033438613)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(78699855914730565)
,p_event_id=>wwv_flow_api.id(78699730636730564)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    PQT_PROVEEDOR.agregar_materia_proveedor(:P61_ID, :P61_LISTA_MATERIAS, :P61_PRECIO, :P61_CANTIDAD);',
'end;'))
,p_attribute_02=>'P61_LISTA_MATERIAS,P61_ID,P61_PRECIO,P61_CANTIDAD'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(78699951263730566)
,p_event_id=>wwv_flow_api.id(78699730636730564)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(133280689113060638)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(78700064929730567)
,p_name=>'DELETE'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-irrow'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(78700390157730571)
,p_event_id=>wwv_flow_api.id(78700064929730567)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_ID_DELETE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(78700517204730572)
,p_event_id=>wwv_flow_api.id(78700064929730567)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE FROM PROVEEDORES_MATERIAS WHERE ID = :P61_ID_DELETE;',
'END; '))
,p_attribute_02=>'P61_ID_DELETE'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(78700643336730573)
,p_event_id=>wwv_flow_api.id(78700064929730567)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(133280689113060638)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30024683207265565)
,p_name=>'ADD_ITEM'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(80724950799028980)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30024834538265566)
,p_event_id=>wwv_flow_api.id(30024683207265565)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_LISTA_MATERIAS'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30024951035265567)
,p_event_id=>wwv_flow_api.id(30024683207265565)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess(''Nueva materia agregada'');',
'$(''#t_Alert_Success'').delay(2000).fadeOut();'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78670021479573204)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(78661236253573179)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Proveedores ABC'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78670445787573205)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78669583788573204)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(78661236253573179)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Proveedores ABC'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
