
xp = {}
function xp.clearReplay() end
function xp.commandBeginByName( "sim/command" ) end
function xp.commandEndByName( "sim/command" ) end
function xp.commandOnceByName( "sim/command" ) end
function xp.getCycleNumber() end
function xp.getDataref( "sim/dataref" ) end
function xp.getElapsedTime() end
function xp.getFloat( dataref_id ) end
function xp.getFloatV( dataref_id, start_at, number_to_fetch ) end
function xp.getFolder() end
function xp.getInt( dataref_id ) end
function xp.getIntV( dataref_id, start_at, number_to_fetch ) end
function xp.getLanguage() end
function xp.getOS() end
function xp.getPaused() end
function xp.getPluginsFolder() end
function xp.getSDKVersion() end
function xp.getTerrainData( x,y,z ) end
function xp.getVersion() end
function xp.getXPlaneFolder() end
function xp.loadReplay( "Output/replays/replay.mov" ) end
function xp.loadSituation( "Output/situations/capnsully.sit" ) end
function xp.newCommand( command_name, description, script_function_name ) end
function xp.newDataref( dataref_name, [hook_event_name] ) end
function xp.newFloatingPointDataref( dataref_name, [hook_event_name] ) end
function xp.newIntegerDataref( dataref_name, [hook_event_name] ) end
function xp.reloadScenery() end
function xp.saveReplay( "Output/replays/filename.mov" ) end
function xp.saveSituation( "Output/situations/filename.sit" ) end
function xp.setFloat( dataref_id, value ) end
function xp.setFloatV( dataref_id, start_at, value1, value2, value3, ...., value10 ) end
function xp.setInt( dataref_id, value ) end
function xp.setIntV( dataref_id, start_at, value1, value2, value3, ...., value10 ) end
function xp.setPaused( integer_flag ) end
