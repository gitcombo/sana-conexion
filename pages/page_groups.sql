prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 300
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>16674536292368497
,p_default_application_id=>300
,p_default_id_offset=>20542468695429963
,p_default_owner=>'SANA_DEV'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(74645034105844360)
,p_group_name=>'Administration'
);
wwv_flow_api.component_end;
end;
/
