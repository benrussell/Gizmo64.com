
particles = {}
function particles.newParticles() end
function particles.setBirthRate( particle_emitter_id, particles_per_second ) end
function particles.setBounce( particle_emitter_id, int_flag ) end
function particles.setColor( particle_emitter_id, r,g,b, a ) end
function particles.setCount( particle_emitter_id, max_particle_count ) end
function particles.setDisabled( particle_emitter_id ) end
function particles.setDrag( particle_emitter_id, particle_drag ) end
function particles.setEnabled( particle_emitter_id ) end
function particles.setEnergyMax( particle_emitter_id, emax ) end
function particles.setEnergyMin( particle_emitter_id, energy_min_value ) end
function particles.setGravity( particle_emitter_id, float_value ) end
function particles.setHardDeck( particle_emitter_id, deck_altitude ) end
function particles.setLife( particle_emitter_id, life_span_in_seconds ) end
function particles.setOrigin( particle_emitter_id, x,y,z ) end
function particles.setOriginOffset( particle_emitter_id, off_x,off_y,off_z ) end
function particles.setScaleRate( particle_emitter_id, rate_value ) end
function particles.setSize( particle_emitter_id, size ) end
function particles.setStreamHeading( particle_emitter_id, value ) end
function particles.setStreamNoise( particle_emitter_id, value ) end
function particles.setStreamPitch( particle_emitter_id, value ) end
function particles.setStuckToAcf( particle_emitter_id, sticky ) end
function particles.setTexture( particle_emitter_id, texture_id ) end
function particles.setTextureSpriteCount( particle_emitter_id, nx,ny ) end
function particles.setType_Cubic( particle_emitter_id ) end
function particles.setType_Spherical( particle_emitter_id ) end
function particles.setType_Stream( particle_emitter_id ) end
function particles.start( particle_emitter_id ) end
