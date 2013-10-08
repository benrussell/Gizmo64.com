--
-- Created by IntelliJ IDEA.
-- User: br
-- Date: 2/09/13
-- Time: 2:15 AM
-- To change this template use File | Settings | File Templates.
--


module "particles"

function newParticles() end
function setBirthRate( particle_emitter_id, particles_per_second ) end
function setBounce( particle_emitter_id, int_flag ) end
function setColor( particle_emitter_id, r,g,b, a ) end
function setCount( particle_emitter_id, max_particle_count ) end
function setDisabled( particle_emitter_id ) end
function setDrag( particle_emitter_id, particle_drag ) end
function setEnabled( particle_emitter_id ) end
function setEnergyMax( particle_emitter_id, emax ) end
function setEnergyMin( particle_emitter_id, energy_min_value ) end
function setGravity( particle_emitter_id, float_value ) end
function setHardDeck( particle_emitter_id, deck_altitude ) end
function setLife( particle_emitter_id, life_span_in_seconds ) end
function setOrigin( particle_emitter_id, x,y,z ) end
function setOriginOffset( particle_emitter_id, off_x,off_y,off_z ) end
function setScaleRate( particle_emitter_id, rate_value ) end
function setSize( particle_emitter_id, size ) end
function setStreamHeading( particle_emitter_id, value ) end
function setStreamNoise( particle_emitter_id, value ) end
function setStreamPitch( particle_emitter_id, value ) end
function setStuckToAcf( particle_emitter_id, sticky ) end
function setTexture( particle_emitter_id, texture_id ) end
function setTextureSpriteCount( particle_emitter_id, nx,ny ) end
function setType_Cubic( particle_emitter_id ) end
function setType_Spherical( particle_emitter_id ) end
function setType_Stream( particle_emitter_id ) end
function start( particle_emitter_id ) end