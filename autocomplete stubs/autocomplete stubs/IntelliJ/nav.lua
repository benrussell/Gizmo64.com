--[[
Gizmo-Docs Lua Stub
Generated: 2014/09/11 02:07:07

Created by: https://github.com/benrussell/Gizmo-Docs-Generator
--]]

module "nav"

function findNavAid( name, id, lat, lon, frequency ) end
function getFirstNavAid() end
function getFirstNavAidOfType( navaid_type ) end
function getLastNavAidOfType( navaid_type ) end
function getNavAidInfo( navaid_id ) end
function getNextNavAid( nav_ref ) end
function getTypeName( navaid_type ) end
function setSearchGroups( airports, ndbs, vors, ils, localizers, glideslopes, outermarkers, middle_markers, innermarkers, fixes, dmes, latlons ) end
