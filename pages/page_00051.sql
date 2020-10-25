prompt --application/pages/page_00051
begin
--   Manifest
--     PAGE: 00051
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
 p_id=>51
,p_user_interface_id=>wwv_flow_api.id(74639230748844335)
,p_name=>'Compras Calendario'
,p_page_mode=>'MODAL'
,p_step_title=>'&APP_NAME.'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SANA'
,p_last_upd_yyyymmddhh24miss=>'20200630102405'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79219461251321583)
,p_plug_name=>'Compras Calendario'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(74555992002844245)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'COMPRAS_VIEW'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'FECHA'
,p_attribute_03=>'NOMBRE'
,p_attribute_04=>'ID'
,p_attribute_05=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:P5_ID:&ID.'
,p_attribute_07=>'N'
,p_attribute_11=>'month:week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_16=>'Q. &TOTAL.'
,p_attribute_17=>'Y'
,p_attribute_18=>'24'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_api.component_end;
end;
/
