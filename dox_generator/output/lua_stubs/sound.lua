
sound = {}
function sound.getControl() end
function sound.load( [sound_buffer_id], "sound_filename.wav" ) end
function sound.newBuffer() end
function sound.newSource() end
function sound.pause( sound_source_id ) end
function sound.play( sound_source_id ) end
function sound.releaseControl() end
function sound.rewind( sound_source_id ) end
function sound.say( "string to vocalize" ) end
function sound.setDirection( sound_source_id, nx,ny,nz ) end
function sound.setGain( sound_source_id, gain_ratio ) end
function sound.setLoop( sound_source_id, loop_flag ) end
function sound.setPitch( sound_source_id, pitch_ratio ) end
function sound.setPosition( sound_source_id, x,y,z ) end
function sound.setVelocity( sound_source_id, vx,vy,vz ) end
function sound.stop( sound_source_id ) end
