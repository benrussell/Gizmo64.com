
dref = {}
function dref.getArraySize( dref_id ) end
function dref.getBytes( dataref_id, start_at, number_to_fetch ) end
function dref.getDataref( string_dataref_name ) end
function dref.getFloat( dref_id ) end
function dref.getFloatV( dataref_id, start_at, number_to_fetch ) end
function dref.getInt( dataref_id ) end
function dref.getIntV( dataref_id, start_at, number_to_fetch ) end
function dref.getString( dataref_id ) end
function dref.newByteArray( string_dataref_name ) end
function dref.newFloat( dataref_name, OPT_hook_event_name ) end
function dref.newFloatArray( string_dataref_name ) end
function dref.newInt( dataref_name, OPT_hook_event_name ) end
function dref.newIntArray( string_dataref_name ) end
function dref.publish( string_dataref_name ) end
function dref.setArraySize( dref_id, new_size ) end
function dref.setAutoPublish( boolean ) end
function dref.setBytes( dataref_id, start_at, byte_string_var ) end
function dref.setFloat( dataref_id, value ) end
function dref.setFloatV( dataref_id, start_at, value1, value2, value3, ... ) end
function dref.setInt( dataref_id, value ) end
function dref.setIntV( dataref_id, start_at, value1, value2, value3, ... ) end
function dref.setString( dataref_id, byte_string_var ) end
