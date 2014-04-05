--
-- Created by IntelliJ IDEA.
-- User: br
-- Date: 2/09/13
-- Time: 2:07 AM
-- To change this template use File | Settings | File Templates.
--

module "dref"

function getArraySize( dref_id ) end
function getBytes( dataref_id, start_at, number_to_fetch ) end
function getDataref( string_dataref_name ) end
function getFloat( dataref_id ) end
function getFloatV( dataref_id, start_at, number_to_fetch ) end
function getInt( dataref_id ) end
function getIntV( dataref_id, start_at, number_to_fetch ) end
function getString( dataref_id ) end
function newByteArray( string_dataref_name ) end
function newFloat( dataref_name, OPT_hook_event_name ) end
function newFloatArray( string_dataref_name ) end
function newInt( dataref_name, OPT_hook_event_name ) end
function newIntArray( string_dataref_name ) end
function publish( string_dataref_name ) end
function setArraySize( dref_id, new_size ) end
function setAutoPublish( boolean ) end
function setBytes( dataref_id, start_at, byte_string_var ) end
function setFloat( dataref_id, value ) end
function setFloatV( dataref_id, start_at, value1, value2, value3, ... ) end
function setInt( dataref_id, value ) end
function setIntV( dataref_id, start_at, value1, value2, value3, ... ) end
function setString( dataref_id, byte_string_var ) end