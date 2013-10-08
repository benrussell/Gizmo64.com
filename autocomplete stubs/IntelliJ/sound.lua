--
-- Created by IntelliJ IDEA.
-- User: br
-- Date: 2/09/13
-- Time: 2:18 AM
-- To change this template use File | Settings | File Templates.
--


module "sound"

function getControl() end
function load( OPT_sound_buffer_id, string_sound_filename ) end
function newBuffer() end
function newSource() end
function pause( sound_source_id ) end
function play( sound_source_id ) end
function releaseControl() end
function rewind( sound_source_id ) end
function say( string_vocalize_value ) end
function setDirection( sound_source_id, nx,ny,nz ) end
function setGain( sound_source_id, gain_ratio ) end
function setLoop( sound_source_id, loop_flag ) end
function setPitch( sound_source_id, pitch_ratio ) end
function setPosition( sound_source_id, x,y,z ) end
function setVelocity( sound_source_id, vx,vy,vz ) end
function stop( sound_source_id ) end