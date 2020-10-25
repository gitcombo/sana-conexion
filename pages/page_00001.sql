prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(74639230748844335)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'SANA'
,p_autocomplete_on_off=>'OFF'
,p_page_css_classes=>'main-form'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SANA_DEV'
,p_last_upd_yyyymmddhh24miss=>'20201012125520'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11637405349670315)
,p_plug_name=>'&APP_TITLE.'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74546432859844239)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'Como es adentro es afuera'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26139681310041197)
,p_plug_name=>'container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74528641814844229)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(11637592467670316)
,p_name=>'Ordenes Pendientes'
,p_parent_plug_id=>wwv_flow_api.id(26139681310041197)
,p_template=>wwv_flow_api.id(74555992002844245)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--dash:t-BadgeList--cols:t-Report--hideNoPagination'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1) "Ordenes Pendientes"',
'  from ORDENES',
' where upper(Estado) = ''PENDIENTE'''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(74567903875844254)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'0'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11639240288670333)
,p_query_column_id=>1
,p_column_alias=>'Ordenes Pendientes'
,p_column_display_sequence=>1
,p_column_heading=>'Ordenes Pendientes'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(11639360650670334)
,p_name=>'Materias en Alerta'
,p_parent_plug_id=>wwv_flow_api.id(26139681310041197)
,p_template=>wwv_flow_api.id(74555992002844245)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--dash:t-BadgeList--cols:t-Report--hideNoPagination'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select count(*) "Materiales en Alerta" from materias_bodegas where cantidad < alerta and id_bodega = 1;'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(74567903875844254)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'0'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11640343330670344)
,p_query_column_id=>1
,p_column_alias=>'Materiales en Alerta'
,p_column_display_sequence=>1
,p_column_heading=>'Materiales En Alerta'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(11639510094670336)
,p_name=>'Ventas del Mes'
,p_parent_plug_id=>wwv_flow_api.id(26139681310041197)
,p_template=>wwv_flow_api.id(74555992002844245)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--dash:t-BadgeList--cols:t-Report--hideNoPagination'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    count(1) "Ventas del Mes"',
'from ',
'    ordenes ',
'where ',
'    estado != ''Cancelado'' ',
'and ',
'    trunc(fecha_ingreso) between TRUNC(localtimestamp - (6/24), ''MM'') and TRUNC(LAST_DAY(localtimestamp - (6/24)));'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(74567903875844254)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'0'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11640108955670342)
,p_query_column_id=>1
,p_column_alias=>'Ventas del Mes'
,p_column_display_sequence=>1
,p_column_heading=>'Ventas Del Mes'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(11639796523670338)
,p_name=>'Ventas Diarias'
,p_parent_plug_id=>wwv_flow_api.id(26139681310041197)
,p_template=>wwv_flow_api.id(74555992002844245)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--dash:t-BadgeList--cols:t-Report--hideNoPagination'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select count(1) "Ventas Diarias" from ordenes where estado != ''Cancelado'' and trunc(fecha_ingreso) = trunc(localtimestamp-(6/24))'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(74567903875844254)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'0'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11640584042670346)
,p_query_column_id=>1
,p_column_alias=>'Ventas Diarias'
,p_column_display_sequence=>1
,p_column_heading=>'Ventas Diarias'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(11640612288670347)
,p_name=>'Ordenes Pendientes'
,p_parent_plug_id=>wwv_flow_api.id(26139681310041197)
,p_template=>wwv_flow_api.id(74555992002844245)
,p_display_sequence=>60
,p_icon_css_classes=>'fa-inbox'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--showIcon:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors:t-MediaList--stack:t-MediaList--iconsRounded:t-Report--hideNoPagination'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "Cliente" list_title,',
'       ESTADO,',
'       ENVIO,',
'       ''fa fa-leaf'' icon_class,',
'       ''Entrega: '' || To_char(FECHA_ENTREGA, ''dd/mm/yyyy'') list_badge,',
'       FECHA_INGRESO,',
'       apex_page.get_url(',
'          p_page => 29, ',
'          p_items => ''P29_ID'', ',
'          p_values => "ID_ORDEN") link,',
'       "Productos" || '' - '' || to_char(TOTAL, ''FML999,999,999.99'') list_text',
'  from "Ordenes_detalles_view_v2"',
' where estado = ''Pendiente''',
' order by FECHA_ENTREGA;'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(74581699098844261)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16879407496010819)
,p_query_column_id=>1
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>4
,p_column_heading=>'List Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16877679621010801)
,p_query_column_id=>2
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>2
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16878152856010806)
,p_query_column_id=>3
,p_column_alias=>'ENVIO'
,p_column_display_sequence=>3
,p_column_heading=>'Envio'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16879570960010820)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>5
,p_column_heading=>'Icon Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16879600723010821)
,p_query_column_id=>5
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>6
,p_column_heading=>'List Badge'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11640984861670350)
,p_query_column_id=>6
,p_column_alias=>'FECHA_INGRESO'
,p_column_display_sequence=>1
,p_column_heading=>'Fecha Ingreso'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16879813874010823)
,p_query_column_id=>7
,p_column_alias=>'LINK'
,p_column_display_sequence=>8
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16879735191010822)
,p_query_column_id=>8
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>7
,p_column_heading=>'List Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(16879922578010824)
,p_name=>'Materiales en Baja Cantidad'
,p_parent_plug_id=>wwv_flow_api.id(26139681310041197)
,p_template=>wwv_flow_api.id(74555992002844245)
,p_display_sequence=>70
,p_icon_css_classes=>'fa-database'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--showIcon:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'t-MediaList--showDesc:u-colors:t-MediaList--stack:t-Report--hideNoPagination'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    nombre list_title, ',
'    "Disponible" || '' '' || "UNIDAD_MEDIDA" list_text,',
'    apex_page.get_url(',
'          p_page => 20) link',
'from ',
'    bodegas_view ',
'where ',
'    "Disponible" < alerta;'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(74581699098844261)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16881051514010835)
,p_query_column_id=>1
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'List Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16881235071010837)
,p_query_column_id=>2
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>2
,p_column_heading=>'List Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16881358403010838)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30190456679812788)
,p_plug_name=>'Ordenes Pendientes'
,p_parent_plug_id=>wwv_flow_api.id(26139681310041197)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(74555992002844245)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'ORDENES_VIEW'
,p_query_where=>'ESTADO = ''Pendiente'''
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'FECHA_ENTREGA'
,p_attribute_03=>'Nombre'
,p_attribute_05=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::P29_ID:&ID.'
,p_attribute_11=>'month:week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_17=>'Y'
,p_attribute_18=>'24'
,p_attribute_19=>'Y'
,p_attribute_20=>'7'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_api.component_end;
end;
/
