--
-- Created by IntelliJ IDEA.
-- User: br
-- Date: 2/09/13
-- Time: 2:22 AM
-- To change this template use File | Settings | File Templates.
--

module "nav"

function findNavAid( string_name, string_id, lat, lon, frequency ) end
function getFirstNavAid() end
function getFirstNavAidOfType( navaid_type ) end
function getLastNavAidOfType( navaid_type ) end
function getNavAidInfo( navaid_id ) end
function getNextNavAid( nav_ref ) end
function getTypeName( navaid_type ) end
function setSearchGroups( airports, ndbs, vors, ils, localizers, glideslopes, outermarkers, middle_markers, innermarkers, fixes, dmes, latlons ) end
