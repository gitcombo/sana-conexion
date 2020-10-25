prompt --application/pages/page_00029
begin
--   Manifest
--     PAGE: 00029
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
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(74639230748844335)
,p_name=>'Ordenes'
,p_step_title=>'Ordenes'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
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
,p_step_template=>wwv_flow_api.id(74511059838844216)
,p_page_css_classes=>'main-form'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SANA_DEV'
,p_last_upd_yyyymmddhh24miss=>'20201025010915'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(81121057308753378)
,p_name=>'Title'
,p_template=>wwv_flow_api.id(74528801365844229)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    null link_class,',
'    apex_page.get_url(p_items => ''P29_ID'', p_values => null ) link,',
'    null icon_class,',
'    null link_attr,',
'    null icon_color_class,',
'    case when :P29_ID is null',
'      then ''is-active'' ',
'      else '' ''',
'    end list_class,',
'    ''Ver todas las ordenes'' list_title,',
'    ''Reporte de todas las ordenes registradas'' list_text,',
'    null list_badge',
'from dual; '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P29_SEARCH'
,p_query_row_template=>wwv_flow_api.id(74581699098844261)
,p_query_num_rows=>1
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<div class="u-tC">No Records Found</div>'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81121257388753380)
,p_query_column_id=>1
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>1
,p_column_heading=>'Link Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81121272760753381)
,p_query_column_id=>2
,p_column_alias=>'LINK'
,p_column_display_sequence=>2
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81121393115753382)
,p_query_column_id=>3
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>3
,p_column_heading=>'Icon Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81121558968753383)
,p_query_column_id=>4
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>4
,p_column_heading=>'Link Attr'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81121640156753384)
,p_query_column_id=>5
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>5
,p_column_heading=>'Icon Color Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81121721683753385)
,p_query_column_id=>6
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'List Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81121805006753386)
,p_query_column_id=>7
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>7
,p_column_heading=>'List Title'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81121954597753387)
,p_query_column_id=>8
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>8
,p_column_heading=>'List Text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81122006829753388)
,p_query_column_id=>9
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>9
,p_column_heading=>'List Badge'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81123775732753406)
,p_plug_name=>'ORDENES DETAIL -container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74528641814844229)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P29_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18190337060404538)
,p_name=>'Productos'
,p_parent_plug_id=>wwv_flow_api.id(81123775732753406)
,p_template=>wwv_flow_api.id(74555992002844245)
,p_display_sequence=>50
,p_icon_css_classes=>'fa-layout-nav-left'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--showIcon:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--displaySubtitle:t-Cards--basic:t-Cards--displayIcons:t-Cards--4cols:t-Cards--iconsRounded:t-Cards--animColorFill:t-Report--hideNoPagination'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    apex_page.get_url(',
'        p_page => 36, ',
'        p_items => ''P36_ID'', ',
'        p_values => "ID") card_link,',
'    ''fa fa-inbox'' card_icon,',
'    id, ',
'    id_orden,',
'    producto || '' x '' || cantidad card_title, ',
'    cantidad, ',
unistr('    ''Observaci\00F3n: '' || observacion card_text,'),
'    total "SUBTOTAL",',
'    ''Extras: '' || LISTAGG(extra || '' '' || cantidad_extra || '' '' || unidad_medida_extra, '', '') card_subtext, ',
'    SUM(total_extra) "TOTAL_EXTRA",',
'    to_char( NVL(SUM(total_extra),0) + NVL(total,0) , ''FML999,999,999.99'') card_subtitle ',
'from ',
'    "ORDENES_DETALLES_EXTRAS_VIEW"',
'where ',
'    id_orden = :P29_ID',
'group by ',
'    id, ',
'    id_orden,',
'    producto, ',
'    cantidad, ',
'    total,',
'    observacion',
';'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(74571943527844256)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18590496325202132)
,p_query_column_id=>1
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>11
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18589962634202127)
,p_query_column_id=>2
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>6
,p_column_heading=>'Card Icon'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18589781490202125)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>4
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18190574802404540)
,p_query_column_id=>4
,p_column_alias=>'ID_ORDEN'
,p_column_display_sequence=>1
,p_column_heading=>'Id Orden'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18590053830202128)
,p_query_column_id=>5
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>7
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18589158331202119)
,p_query_column_id=>6
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>2
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18590135104202129)
,p_query_column_id=>7
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>8
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18589885729202126)
,p_query_column_id=>8
,p_column_alias=>'SUBTOTAL'
,p_column_display_sequence=>5
,p_column_heading=>'Subtotal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18590215083202130)
,p_query_column_id=>9
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>9
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18589638871202124)
,p_query_column_id=>10
,p_column_alias=>'TOTAL_EXTRA'
,p_column_display_sequence=>3
,p_column_heading=>'Total Extra'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18590354865202131)
,p_query_column_id=>11
,p_column_alias=>'CARD_SUBTITLE'
,p_column_display_sequence=>10
,p_column_heading=>'Card Subtitle'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18986364537179114)
,p_name=>unistr('Informaci\00F3n de Cliente')
,p_parent_plug_id=>wwv_flow_api.id(81123775732753406)
,p_template=>wwv_flow_api.id(74555992002844245)
,p_display_sequence=>20
,p_region_css_classes=>'js-master-region'
,p_icon_css_classes=>'fa-user-heart'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--showIcon:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ID_CLIENTE,',
'       FECHA_INGRESO,',
'       ESTADO,',
'       "Nombre",',
'       "Contacto",',
'       DIRECCION_PRIMARIA,',
'       DIRECCION_SECUNDARIA,',
'       IG,',
'       CORREO,',
'       TIPO_PAGO,',
'       SUBTOTAL,',
'       ENVIO,',
'       ID_PROVEEDOR,',
'       "Proveedor",',
'       COSTO_ENVIO,',
'       FECHA_ENTREGADO,',
'       DIRECCION_ENTREGA,',
'       FECHA_ENTREGA,',
'       RECIBE_ENTREGA,',
'       TOTAL,',
'       VUELTO',
'  from ORDENES_VIEW',
' where "ID" = :P29_ID'))
,p_display_when_condition=>'P29_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P29_ID'
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
 p_id=>wwv_flow_api.id(18986683275179117)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ID" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18986735941179118)
,p_query_column_id=>2
,p_column_alias=>'ID_CLIENTE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ID_CLIENTE" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18986871804179119)
,p_query_column_id=>3
,p_column_alias=>'FECHA_INGRESO'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "FECHA_INGRESO" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18986975058179120)
,p_query_column_id=>4
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ESTADO" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18987078238179121)
,p_query_column_id=>5
,p_column_alias=>'Nombre'
,p_column_display_sequence=>5
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18987148168179122)
,p_query_column_id=>6
,p_column_alias=>'Contacto'
,p_column_display_sequence=>6
,p_column_heading=>'Contacto'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18988309931179134)
,p_query_column_id=>7
,p_column_alias=>'DIRECCION_PRIMARIA'
,p_column_display_sequence=>18
,p_column_heading=>'Direccion Primaria'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18988464405179135)
,p_query_column_id=>8
,p_column_alias=>'DIRECCION_SECUNDARIA'
,p_column_display_sequence=>19
,p_column_heading=>'Direccion Secundaria'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18988585688179136)
,p_query_column_id=>9
,p_column_alias=>'IG'
,p_column_display_sequence=>20
,p_column_heading=>'Redes'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18988601757179137)
,p_query_column_id=>10
,p_column_alias=>'CORREO'
,p_column_display_sequence=>21
,p_column_heading=>'Correo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18987297105179123)
,p_query_column_id=>11
,p_column_alias=>'TIPO_PAGO'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "TIPO_PAGO" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18987301851179124)
,p_query_column_id=>12
,p_column_alias=>'SUBTOTAL'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "SUBTOTAL" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18987410679179125)
,p_query_column_id=>13
,p_column_alias=>'ENVIO'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ENVIO" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18987545693179126)
,p_query_column_id=>14
,p_column_alias=>'ID_PROVEEDOR'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ID_PROVEEDOR" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18987625500179127)
,p_query_column_id=>15
,p_column_alias=>'Proveedor'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18987735171179128)
,p_query_column_id=>16
,p_column_alias=>'COSTO_ENVIO'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "COSTO_ENVIO" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18987807014179129)
,p_query_column_id=>17
,p_column_alias=>'FECHA_ENTREGADO'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "FECHA_ENTREGADO" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18987902774179130)
,p_query_column_id=>18
,p_column_alias=>'DIRECCION_ENTREGA'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "DIRECCION_ENTREGA" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18988039068179131)
,p_query_column_id=>19
,p_column_alias=>'FECHA_ENTREGA'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "FECHA_ENTREGA" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18988134919179132)
,p_query_column_id=>20
,p_column_alias=>'RECIBE_ENTREGA'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "RECIBE_ENTREGA" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18988240433179133)
,p_query_column_id=>21
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "TOTAL" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18988745090179138)
,p_query_column_id=>22
,p_column_alias=>'VUELTO'
,p_column_display_sequence=>22
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(81123878917753407)
,p_name=>unistr('Informaci\00F3n de Entrega')
,p_parent_plug_id=>wwv_flow_api.id(81123775732753406)
,p_template=>wwv_flow_api.id(74555992002844245)
,p_display_sequence=>30
,p_region_css_classes=>'js-master-region'
,p_icon_css_classes=>'fa-bicycle'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--showIcon:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'ORDENES_VIEW'
,p_query_where=>'"ID" = :P29_ID'
,p_include_rowid_column=>false
,p_display_when_condition=>'P29_ID'
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
 p_id=>wwv_flow_api.id(81124231985753410)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ID" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81124334941753411)
,p_query_column_id=>2
,p_column_alias=>'ID_CLIENTE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ID_CLIENTE" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81124444736753412)
,p_query_column_id=>3
,p_column_alias=>'FECHA_INGRESO'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "FECHA_INGRESO" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81250721053266564)
,p_query_column_id=>4
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ESTADO" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81251759007266574)
,p_query_column_id=>5
,p_column_alias=>'Nombre'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81251786560266575)
,p_query_column_id=>6
,p_column_alias=>'Contacto'
,p_column_display_sequence=>11
,p_column_heading=>'Contacto'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81124490014753413)
,p_query_column_id=>7
,p_column_alias=>'TIPO_PAGO'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "TIPO_PAGO" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81251602686266573)
,p_query_column_id=>8
,p_column_alias=>'SUBTOTAL'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "SUBTOTAL" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81250852801266565)
,p_query_column_id=>9
,p_column_alias=>'ENVIO'
,p_column_display_sequence=>7
,p_column_heading=>'Envio'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ENVIO" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81251517357266572)
,p_query_column_id=>10
,p_column_alias=>'ID_PROVEEDOR'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ID_PROVEEDOR" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81251952334266576)
,p_query_column_id=>11
,p_column_alias=>'Proveedor'
,p_column_display_sequence=>8
,p_column_heading=>'Proveedor'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81251433628266571)
,p_query_column_id=>12
,p_column_alias=>'COSTO_ENVIO'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "COSTO_ENVIO" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81251029727266567)
,p_query_column_id=>13
,p_column_alias=>'FECHA_ENTREGADO'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "FECHA_ENTREGADO" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81251149898266568)
,p_query_column_id=>14
,p_column_alias=>'DIRECCION_ENTREGA'
,p_column_display_sequence=>9
,p_column_heading=>'Direccion de Entrega'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "DIRECCION_ENTREGA" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81251267561266569)
,p_query_column_id=>15
,p_column_alias=>'FECHA_ENTREGA'
,p_column_display_sequence=>6
,p_column_heading=>'Fecha Entrega'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MM-YYYY HH24:MI'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "FECHA_ENTREGA" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81251363749266570)
,p_query_column_id=>16
,p_column_alias=>'RECIBE_ENTREGA'
,p_column_display_sequence=>10
,p_column_heading=>'Quien Recibe'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "RECIBE_ENTREGA" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81250939066266566)
,p_query_column_id=>17
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "TOTAL" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(81166773019856471)
,p_name=>unistr('Informaci\00F3n de Orden')
,p_parent_plug_id=>wwv_flow_api.id(81123775732753406)
,p_template=>wwv_flow_api.id(74555992002844245)
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_icon_css_classes=>'fa-info-circle-o'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--showIcon:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'ORDENES_VIEW'
,p_query_where=>'"ID" = :P29_ID'
,p_include_rowid_column=>false
,p_display_when_condition=>'P29_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P29_ID'
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
 p_id=>wwv_flow_api.id(81167499686856472)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>unistr('C\00F3digo Orden')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ID" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81167925961856473)
,p_query_column_id=>2
,p_column_alias=>'ID_CLIENTE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ID_CLIENTE" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81168330066856473)
,p_query_column_id=>3
,p_column_alias=>'FECHA_INGRESO'
,p_column_display_sequence=>2
,p_column_heading=>'Fecha Pedido'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "FECHA_INGRESO" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81169126124856473)
,p_query_column_id=>4
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>4
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ESTADO" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81123496985753403)
,p_query_column_id=>5
,p_column_alias=>'Nombre'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81123630678753404)
,p_query_column_id=>6
,p_column_alias=>'Contacto'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81168746532856473)
,p_query_column_id=>7
,p_column_alias=>'TIPO_PAGO'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "TIPO_PAGO" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81172719465856476)
,p_query_column_id=>8
,p_column_alias=>'SUBTOTAL'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "SUBTOTAL" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>16674536292368497
,p_default_application_id=>300
,p_default_id_offset=>20542468695429963
,p_default_owner=>'SANA_DEV'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81169510884856474)
,p_query_column_id=>9
,p_column_alias=>'ENVIO'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ENVIO" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81172368040856476)
,p_query_column_id=>10
,p_column_alias=>'ID_PROVEEDOR'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ID_PROVEEDOR" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81123725926753405)
,p_query_column_id=>11
,p_column_alias=>'Proveedor'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81171942523856475)
,p_query_column_id=>12
,p_column_alias=>'COSTO_ENVIO'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "COSTO_ENVIO" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81170336920856474)
,p_query_column_id=>13
,p_column_alias=>'FECHA_ENTREGADO'
,p_column_display_sequence=>9
,p_column_heading=>'Fecha Entregado'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MON/YYYY HH24:MI'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81170736184856475)
,p_query_column_id=>14
,p_column_alias=>'DIRECCION_ENTREGA'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "DIRECCION_ENTREGA" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81171139794856475)
,p_query_column_id=>15
,p_column_alias=>'FECHA_ENTREGA'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "FECHA_ENTREGA" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81171565686856475)
,p_query_column_id=>16
,p_column_alias=>'RECIBE_ENTREGA'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "RECIBE_ENTREGA" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81169896408856474)
,p_query_column_id=>17
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "TOTAL" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(81252050569266577)
,p_name=>unistr('Informaci\00F3n de Cobro')
,p_parent_plug_id=>wwv_flow_api.id(81123775732753406)
,p_template=>wwv_flow_api.id(74555992002844245)
,p_display_sequence=>40
,p_region_css_classes=>'js-master-region'
,p_icon_css_classes=>'fa-money'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--showIcon:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ID_CLIENTE,',
'       FECHA_INGRESO,',
'       ESTADO,',
'       "Nombre",',
'       "Contacto",',
'       TIPO_PAGO,',
'       SUBTOTAL,',
'       ENVIO,',
'       ID_PROVEEDOR,',
'       "Proveedor",',
'       COSTO_ENVIO,',
'       FECHA_ENTREGADO,',
'       DIRECCION_ENTREGA,',
'       FECHA_ENTREGA,',
'       RECIBE_ENTREGA,',
'       TOTAL,',
'       VUELTO',
'  from ORDENES_VIEW',
' where "ID" = :P29_ID'))
,p_display_when_condition=>'P29_ID'
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
 p_id=>wwv_flow_api.id(81252338492266580)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ID" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81252391684266581)
,p_query_column_id=>2
,p_column_alias=>'ID_CLIENTE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ID_CLIENTE" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81252535545266582)
,p_query_column_id=>3
,p_column_alias=>'FECHA_INGRESO'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "FECHA_INGRESO" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81252737155266584)
,p_query_column_id=>4
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ESTADO" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81253695384266594)
,p_query_column_id=>5
,p_column_alias=>'Nombre'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81253795870266595)
,p_query_column_id=>6
,p_column_alias=>'Contacto'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81252659666266583)
,p_query_column_id=>7
,p_column_alias=>'TIPO_PAGO'
,p_column_display_sequence=>6
,p_column_heading=>'Tipo Pago'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "TIPO_PAGO" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81253591217266593)
,p_query_column_id=>8
,p_column_alias=>'SUBTOTAL'
,p_column_display_sequence=>8
,p_column_heading=>'Subtotal'
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "SUBTOTAL" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81252844136266585)
,p_query_column_id=>9
,p_column_alias=>'ENVIO'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ENVIO" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81253557243266592)
,p_query_column_id=>10
,p_column_alias=>'ID_PROVEEDOR'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "ID_PROVEEDOR" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81253903977266596)
,p_query_column_id=>11
,p_column_alias=>'Proveedor'
,p_column_display_sequence=>18
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81253387136266591)
,p_query_column_id=>12
,p_column_alias=>'COSTO_ENVIO'
,p_column_display_sequence=>9
,p_column_heading=>'Envio'
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "COSTO_ENVIO" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81253057178266587)
,p_query_column_id=>13
,p_column_alias=>'FECHA_ENTREGADO'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "FECHA_ENTREGADO" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81253158366266588)
,p_query_column_id=>14
,p_column_alias=>'DIRECCION_ENTREGA'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "DIRECCION_ENTREGA" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81253243092266589)
,p_query_column_id=>15
,p_column_alias=>'FECHA_ENTREGA'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "FECHA_ENTREGA" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81253345175266590)
,p_query_column_id=>16
,p_column_alias=>'RECIBE_ENTREGA'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "RECIBE_ENTREGA" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81252886794266586)
,p_query_column_id=>17
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>10
,p_column_heading=>'Total'
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ORDENES"',
'where "TOTAL" is not null',
'and "ID" = :P29_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30027800642265596)
,p_query_column_id=>18
,p_column_alias=>'VUELTO'
,p_column_display_sequence=>7
,p_column_heading=>'Vuelto'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81156878273856455)
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
 p_id=>wwv_flow_api.id(81158344224856457)
,p_plug_name=>'Search'
,p_region_css_classes=>'search-region padding-md'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(74528641814844229)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(81159082442856458)
,p_name=>'Master Records'
,p_template=>wwv_flow_api.id(74528801365844229)
,p_display_sequence=>30
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--showBadges:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    "ID",',
'    null link_class,',
'    apex_page.get_url(p_items => ''P29_ID'', p_values => "ID") link,',
'    null icon_class,',
'    null link_attr,',
'    null icon_color_class,',
'    case when nvl(:P29_ID,''0'') = "ID"',
'      then ''is-active'' ',
'      else '' ''',
'    end list_class,',
'    substr("Nombre", 1, 50)||( case when length("Nombre") > 50 then ''...'' end ) list_title,',
'    ''Entrega: '' || TO_CHAR("FECHA_ENTREGA", ''DD/MM/YY'') list_text,',
'    TO_CHAR(x."TOTAL",''FML999,999.99'') list_badge',
'from ',
'    "ORDENES_VIEW" x',
'where ',
'    (:P29_SEARCH is null',
'        or upper(x."Nombre") like ''%''||upper(:P29_SEARCH)||''%''',
'        or upper(x."FECHA_ENTREGA") like ''%''||upper(:P29_SEARCH)||''%''',
'        and upper(x."ESTADO") like ''%PENDIENTE%''',
'    )',
'and',
'    upper(x."ESTADO") = ''PENDIENTE''',
'order by ',
'    x."FECHA_ENTREGA" desc;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P29_SEARCH'
,p_query_row_template=>wwv_flow_api.id(74581699098844261)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<div class="u-tC">No Records Found</div>'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81159837555856463)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81160250960856463)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'Link Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81160641495856464)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'Link'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81161025942856464)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'Icon Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81161421302856465)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>5
,p_column_heading=>'Link Attr'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81161847183856465)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'Icon Color Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81162205709856465)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'List Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81162620629856466)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'List Title'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81163054249856466)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'List Text'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81163379712856467)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'List Badge'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81191146863856493)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18190337060404538)
,p_button_name=>'POP_ORDENES_DETALLES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--small:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Producto'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP,36:P36_ID_ORDEN:&P29_ID.'
,p_button_css_classes=>'sana-button'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81206193879856505)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(81166773019856471)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_image_alt=>unistr('Editar informaci\00F3n')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:RP,:P30_ID:&P29_ID.'
,p_icon_css_classes=>'fa-pencil-square-o'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81505145471930377)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(81156878273856455)
,p_button_name=>'DELIVERED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--success:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_api.id(74616805127844289)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\00A1Entregado!')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P29_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-thumbs-o-up'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18986419249179115)
,p_name=>'P29_ID_2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18986364537179114)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81124005097753408)
,p_name=>'P29_ID_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(81123878917753407)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81158683406856457)
,p_name=>'P29_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(81158344224856457)
,p_prompt=>'Search'
,p_placeholder=>'Search...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(74615355710844285)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81181807683856484)
,p_name=>'P29_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(81166773019856471)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81252144834266578)
,p_name=>'P29_ID_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(81252050569266577)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81505207564930378)
,p_name=>'P29_ENTREGADO_FLAG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(81123775732753406)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(81206592495856505)
,p_name=>'Perform Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P29_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81208432649856506)
,p_event_id=>wwv_flow_api.id(81206592495856505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(81159082442856458)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81208875800856507)
,p_event_id=>wwv_flow_api.id(81206592495856505)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(81373826183525296)
,p_name=>'Refresh on Edit INFO'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(81206193879856505)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81373898538525297)
,p_event_id=>wwv_flow_api.id(81373826183525296)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(81166773019856471)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81456362014074810)
,p_event_id=>wwv_flow_api.id(81373826183525296)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(81123878917753407)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81456442656074811)
,p_event_id=>wwv_flow_api.id(81373826183525296)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(81252050569266577)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81207617781856506)
,p_event_id=>wwv_flow_api.id(81373826183525296)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('apex.message.showPageSuccess(''Informaci\00F3n\005Cu0020actualizada'');')
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81455496971074802)
,p_event_id=>wwv_flow_api.id(81373826183525296)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#t_Alert_Success'').delay(2000).fadeOut();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(81505355352930379)
,p_name=>'ENREGADO'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(81505145471930377)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81505393914930380)
,p_event_id=>wwv_flow_api.id(81505355352930379)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    update ',
'        ordenes',
'    set ',
'        "ESTADO" = ''Entregado'', ',
'        "FECHA_ENTREGADO" = localtimestamp',
'    where',
'        id = :P29_ID;',
'end;'))
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81506030034930386)
,p_event_id=>wwv_flow_api.id(81505355352930379)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(81166773019856471)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81506072044930387)
,p_event_id=>wwv_flow_api.id(81505355352930379)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(81159082442856458)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81505532041930381)
,p_event_id=>wwv_flow_api.id(81505355352930379)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('apex.message.showPageSuccess(''\00A1Pedido Entregado!'');')
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81505622530930382)
,p_event_id=>wwv_flow_api.id(81505355352930379)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#t_Alert_Success'').delay(2000).fadeOut();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26137220266041172)
,p_name=>'hide alert'
,p_event_sequence=>220
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26137310914041173)
,p_event_id=>wwv_flow_api.id(26137220266041172)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#t_Alert_Success'').delay(2000).fadeOut();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18985024794179101)
,p_name=>'Refresh on Productos'
,p_event_sequence=>230
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(18190337060404538)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18985105534179102)
,p_event_id=>wwv_flow_api.id(18985024794179101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(18190337060404538)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18985219880179103)
,p_event_id=>wwv_flow_api.id(18985024794179101)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(81252050569266577)
);
wwv_flow_api.component_end;
end;
/
