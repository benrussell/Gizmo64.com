--[[
Gizmo-Docs Lua Stub
Generated: 2014/09/11 02:07:07

Created by: https://github.com/benrussell/Gizmo-Docs-Generator
--]]

module "xp"

function clearReplay() end
function commandBeginByName( command_name ) end
function commandEndByName( command_name ) end
function commandOnceByName( command_name ) end
function getCycleNumber() end
function getElapsedTime() end
function getFolder() end
function getLanguage() end
function getOS() end
function getPaused() end
function getSDKVersion() end
function getTerrainData( x,y,z ) end
function getVersion() end
function loadReplay( filename ) end
function loadSituation( filename ) end
function newCommand( command_name, description, script_function_name ) end
function reloadScenery() end
function saveReplay( replay_filename ) end
function saveSituation( sit_filename ) end
function setPaused( integer_flag ) end
