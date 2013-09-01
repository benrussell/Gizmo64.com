--
-- Created by IntelliJ IDEA.
-- User: br
-- Date: 2/09/13
-- Time: 2:21 AM
-- To change this template use File | Settings | File Templates.
--


module "xp"

function clearReplay() end
function commandBeginByName( string_command_name ) end
function commandEndByName( string_command_name ) end
function commandOnceByName( string_command_name ) end
function getCycleNumber() end

--function getDataref( "sim/dataref" ) end

function getElapsedTime() end

--function getFloat( dataref_id ) end
--function getFloatV( dataref_id, start_at, number_to_fetch ) end
function getFolder() end
--function getInt( dataref_id ) end
--function getIntV( dataref_id, start_at, number_to_fetch ) end

function getLanguage() end
function getOS() end
function getPaused() end
function getPluginsFolder() end
function getSDKVersion() end
function getTerrainData( x,y,z ) end
function getVersion() end
function getXPlaneFolder() end
function loadReplay( string_xp_rel_filename ) end
function loadSituation( string_xp_rel_filename ) end
function newCommand( command_name, description, script_function_name ) end

--function newDataref( dataref_name, [hook_event_name] ) end
--function newFloatingPointDataref( dataref_name, [hook_event_name] ) end
--function newIntegerDataref( dataref_name, [hook_event_name] ) end

function reloadScenery() end
function saveReplay( string_xp_rel_filename ) end
function saveSituation( string_xp_rel_filename ) end
--function setFloat( dataref_id, value ) end
--function setFloatV( dataref_id, start_at, value1, value2, value3, ...., value10 ) end
--function setInt( dataref_id, value ) end
--function setIntV( dataref_id, start_at, value1, value2, value3, ...., value10 ) end
function setPaused( integer_flag ) end
