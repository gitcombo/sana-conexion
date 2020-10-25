prompt --application/pages/page_00030
begin
--   Manifest
--     PAGE: 00030
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
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(74639230748844335)
,p_name=>'Ordenes'
,p_page_mode=>'MODAL'
,p_step_title=>'Ordenes'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'SANA_DEV'
,p_last_upd_yyyymmddhh24miss=>'20201020012705'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81139465310856442)
,p_plug_name=>'Ordenes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74528641814844229)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'ORDENES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81122136678753389)
,p_plug_name=>unistr('Ingrese informaci\00F3n de orden')
,p_parent_plug_id=>wwv_flow_api.id(81139465310856442)
,p_icon_css_classes=>'fa-number-1'
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74555992002844245)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81122263555753390)
,p_plug_name=>unistr('Ingrese informaci\00F3n de entrega')
,p_parent_plug_id=>wwv_flow_api.id(81139465310856442)
,p_icon_css_classes=>'fa-number-2'
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74555992002844245)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81254405811266601)
,p_plug_name=>'container-envio'
,p_parent_plug_id=>wwv_flow_api.id(81122263555753390)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74528641814844229)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81506175506930388)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_api.id(81254405811266601)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74528641814844229)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81122819501753396)
,p_plug_name=>unistr('Ingrese Informaci\00F3n de pago')
,p_parent_plug_id=>wwv_flow_api.id(81139465310856442)
,p_icon_css_classes=>'fa-number-3'
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74555992002844245)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81150795998856450)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74529643831844229)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81253972610266597)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(81122136678753389)
,p_button_name=>'ADD_CUSTOMER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_image_alt=>'Agregar Nuevo Cliente'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3::'
,p_button_css_classes=>'sana-button'
,p_icon_css_classes=>'fa-plus-circle-o'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81151190841856450)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(81150795998856450)
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
 p_id=>wwv_flow_api.id(81152799400856451)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(81150795998856450)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_image_alt=>'Eliminar'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P30_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'sana-button'
,p_icon_css_classes=>'fa-trash'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81153204672856452)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(81150795998856450)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74616749976844289)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P30_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'sana-button'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81153666349856452)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(81150795998856450)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Orden'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P30_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'sana-button'
,p_icon_css_classes=>'fa-plus'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(81155180934856453)
,p_branch_name=>'Redirect to new'
,p_branch_action=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP:P29_ID:&P30_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(81153666349856452)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(81155577872856454)
,p_branch_name=>'Redirect to all'
,p_branch_action=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP,29::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(81152799400856451)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30027951208265597)
,p_name=>'P30_VUELTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(81122819501753396)
,p_item_source_plug_id=>wwv_flow_api.id(81139465310856442)
,p_item_default=>'No'
,p_prompt=>unistr('\00BFNecesita vuelto?')
,p_source=>'VUELTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'CUSTOM'
,p_attribute_02=>'Si'
,p_attribute_03=>'Si'
,p_attribute_04=>'No'
,p_attribute_05=>'No'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81139790609856442)
,p_name=>'P30_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(81122136678753389)
,p_item_source_plug_id=>wwv_flow_api.id(81139465310856442)
,p_prompt=>unistr('C\00F3digo')
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P30_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_read_only_when_type=>'ALWAYS'
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
 p_id=>wwv_flow_api.id(81140174244856443)
,p_name=>'P30_ID_CLIENTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(81122136678753389)
,p_item_source_plug_id=>wwv_flow_api.id(81139465310856442)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'id from clientes order by id desc;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Cliente'
,p_source=>'ID_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LISTA_CLIENTES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
unistr('    ''C\00F3digo: '' || id || '', '' | |primer_nombre || '' '' || segundo_nombre || '' '' || primer_apellido || '' '' || segundo_apellido as "NOMBRE",'),
'    id',
'from ',
'    clientes',
'order by ',
'    1 desc;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'800'
,p_attribute_09=>'600'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81140581034856443)
,p_name=>'P30_FECHA_INGRESO'
,p_source_data_type=>'TIMESTAMP'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(81122136678753389)
,p_item_source_plug_id=>wwv_flow_api.id(81139465310856442)
,p_item_default=>'select to_char(localtimestamp - (6/24),''DD/MM/YYYY HH24:MI'') from dual;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Fecha Pedido'
,p_format_mask=>'DD/MM/YYYY HH24:MI'
,p_source=>'FECHA_INGRESO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(74615888736844287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'Y'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81141387578856444)
,p_name=>'P30_TIPO_PAGO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(81122819501753396)
,p_item_source_plug_id=>wwv_flow_api.id(81139465310856442)
,p_item_default=>'Efectivo'
,p_prompt=>'Forma de Pago'
,p_source=>'TIPO_PAGO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LISTA_TIPO_PAGO'
,p_lov=>'.'||wwv_flow_api.id(79428388265157633)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81141826443856444)
,p_name=>'P30_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(81122136678753389)
,p_item_source_plug_id=>wwv_flow_api.id(81139465310856442)
,p_item_default=>'Pendiente'
,p_prompt=>'Estado'
,p_source=>'ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LISTA_ESTADOS'
,p_lov=>'.'||wwv_flow_api.id(80905033618035810)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81142257673856444)
,p_name=>'P30_ENVIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(81122263555753390)
,p_item_source_plug_id=>wwv_flow_api.id(81139465310856442)
,p_item_default=>'Si'
,p_prompt=>unistr('Requiere env\00EDo')
,p_source=>'ENVIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'CUSTOM'
,p_attribute_02=>'Si'
,p_attribute_03=>'Si'
,p_attribute_04=>'No'
,p_attribute_05=>'No'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81143792725856445)
,p_name=>'P30_DIRECCION_ENTREGA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(81254405811266601)
,p_item_source_plug_id=>wwv_flow_api.id(81139465310856442)
,p_prompt=>unistr('Direcci\00F3n Entrega ')
,p_source=>'DIRECCION_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81144180190856446)
,p_name=>'P30_FECHA_ENTREGA'
,p_source_data_type=>'TIMESTAMP'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(81122263555753390)
,p_item_source_plug_id=>wwv_flow_api.id(81139465310856442)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    to_char(localtimestamp + 1, ''DD/MM/YYYY HH24:MI'')',
'from ',
'    dual;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Fecha Entrega'
,p_format_mask=>'DD/MM/YYYY HH24:MI'
,p_source=>'FECHA_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(74615888736844287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81145011384856446)
,p_name=>'P30_RECIBE_ENTREGA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(81254405811266601)
,p_item_source_plug_id=>wwv_flow_api.id(81139465310856442)
,p_prompt=>unistr('\00BFQui\00E9n recibe?')
,p_source=>'RECIBE_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
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
 p_id=>wwv_flow_api.id(81145373040856446)
,p_name=>'P30_COSTO_ENVIO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(81254405811266601)
,p_item_source_plug_id=>wwv_flow_api.id(81139465310856442)
,p_item_default=>'0'
,p_prompt=>'Precio'
,p_source=>'COSTO_ENVIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_icon_css_classes=>'fa-money'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81145821898856447)
,p_name=>'P30_ID_PROVEEDOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(81254405811266601)
,p_item_source_plug_id=>wwv_flow_api.id(81139465310856442)
,p_prompt=>'Proveedores'
,p_source=>'ID_PROVEEDOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LISTA_MENSAJERIA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    p.nombre,',
'    p.id',
'from ',
'    proveedores_materias pm',
'inner join ',
'    materias m on m.id = pm.id_materia',
'inner join',
'    proveedores p on p.id = pm.id_proveedor',
'where',
'    upper(m.nombre) like ''%ENV%O%'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81506280626930389)
,p_name=>'P30_ENTREGADO'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(81506175506930388)
,p_item_source_plug_id=>wwv_flow_api.id(81139465310856442)
,p_prompt=>'Fecha Entregado'
,p_source=>'FECHA_ENTREGADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_display_when=>'P30_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(74615585401844286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(81141071439856443)
,p_validation_name=>'P30_FECHA_INGRESO must be timestamp'
,p_validation_sequence=>20
,p_validation=>'P30_FECHA_INGRESO'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(81140581034856443)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(81144756475856446)
,p_validation_name=>'P30_FECHA_ENTREGA must be timestamp'
,p_validation_sequence=>90
,p_validation=>'P30_FECHA_ENTREGA'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(81144180190856446)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(81151340071856450)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(81151190841856450)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81152073742856451)
,p_event_id=>wwv_flow_api.id(81151340071856450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(81254084885266598)
,p_name=>'Refresh on new customer'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(81253972610266597)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81254258780266599)
,p_event_id=>wwv_flow_api.id(81254084885266598)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_ID_CLIENTE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30028938156265607)
,p_event_id=>wwv_flow_api.id(81254084885266598)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('apex.message.showPageSuccess(''\00A1Cliente nuevo agregado!'');'),
'$(''#t_Alert_Success'').delay(2000).fadeOut();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(81254537175266602)
,p_name=>unistr('Precio env\00EDo on PROVEEDOR')
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_ID_PROVEEDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81254602987266603)
,p_event_id=>wwv_flow_api.id(81254537175266602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_COSTO_ENVIO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    precio',
'from ',
'    proveedores_materias pm',
'where ',
'    id_proveedor = :P30_ID_PROVEEDOR;'))
,p_attribute_07=>'P30_ID_PROVEEDOR'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(81254705511266604)
,p_name=>'Show Envio'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_ENVIO'
,p_condition_element=>'P30_ENVIO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Si'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81254786659266605)
,p_event_id=>wwv_flow_api.id(81254705511266604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(81254405811266601)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81255229221266609)
,p_event_id=>wwv_flow_api.id(81254705511266604)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_RECIBE_ENTREGA'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    primer_nombre || '' '' || segundo_nombre || '' '' || primer_apellido || '' '' || segundo_apellido ',
'from ',
'    clientes',
'where',
'    id = :P30_ID_CLIENTE;'))
,p_attribute_07=>'P30_ID_CLIENTE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81255467138266611)
,p_event_id=>wwv_flow_api.id(81254705511266604)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_DIRECCION_ENTREGA'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    direccion',
'from ',
'    clientes',
'where',
'    id = :P30_ID_CLIENTE;'))
,p_attribute_07=>'P30_ID_CLIENTE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(81254879366266606)
,p_name=>'Hide Envio'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_ENVIO'
,p_condition_element=>'P30_ENVIO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'No'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81255627341266613)
,p_event_id=>wwv_flow_api.id(81254879366266606)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_RECIBE_ENTREGA'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81329239385617164)
,p_event_id=>wwv_flow_api.id(81254879366266606)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_DIRECCION_ENTREGA'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81329833882617170)
,p_event_id=>wwv_flow_api.id(81254879366266606)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_ID_PROVEEDOR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81329715100617169)
,p_event_id=>wwv_flow_api.id(81254879366266606)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_COSTO_ENVIO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81329948176617171)
,p_event_id=>wwv_flow_api.id(81254879366266606)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(81254405811266601)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(81329292139617165)
,p_name=>'Rerfresh on CLIENTE'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_ID_CLIENTE'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81329591698617168)
,p_event_id=>wwv_flow_api.id(81329292139617165)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_DIRECCION_ENTREGA'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    direccion',
'from ',
'    clientes',
'where',
'    id = :P30_ID_CLIENTE;'))
,p_attribute_07=>'P30_ID_CLIENTE'
,p_attribute_08=>'Y'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81329471847617167)
,p_event_id=>wwv_flow_api.id(81329292139617165)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_RECIBE_ENTREGA'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    primer_nombre || '' '' || segundo_nombre || '' '' || primer_apellido || '' '' || segundo_apellido ',
'from ',
'    clientes',
'where',
'    id = :P30_ID_CLIENTE;'))
,p_attribute_07=>'P30_ID_CLIENTE'
,p_attribute_08=>'Y'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(81154406026856453)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(81139465310856442)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Ordenes'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>'No fue posible eliminar la orden. Borre primero los productos asociados y luego elimine la orden.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(81455015245074797)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Total (insert)'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update ',
'    ordenes',
'set ',
'    TOTAL = NVL(SUBTOTAL, 0) + NVL(COSTO_ENVIO,0)',
'where',
'    id = :P30_ID;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(81153666349856452)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(81455128387074798)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Total (update)'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update ',
'    ordenes',
'set ',
'    TOTAL = NVL(SUBTOTAL, 0) + NVL(COSTO_ENVIO,0)',
'where',
'    id = :P30_ID;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(81153204672856452)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(81154838985856453)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(81153204672856452)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(81154048428856452)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(81139465310856442)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Ordenes'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
