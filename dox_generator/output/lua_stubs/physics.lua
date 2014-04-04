
physics = {}
function physics.applyForce( object_id, x,y,z ) end
function physics.applyImpulse( object_id, x,y,z ) end
function physics.applyOffsetImpulse( object_id, x,y,z ) end
function physics.applyTorque( object_id, x,y,z ) end
function physics.applyTorqueImpulse( object_id, x,y,z ) end
function physics.clearForces( object_id ) end
function physics.getAngularVelocity( object_id ) end
function physics.getLinearVelocity( object_id ) end
function physics.getOrientationQ( object_id ) end
function physics.loadCollada( "filename" ) end
function physics.newBox( edge_size ) end
function physics.newCapsule( radius, height ) end
function physics.newCone( radius, height ) end
function physics.newCylinder( radius, height, z ) end
function physics.newMultiSphere( ........fubar ) end
function physics.newSphere( radius ) end
function physics.restart() end
function physics.setAngularVelocity( id, x, y, z ) end
function physics.setBrush( object_id ) end
function physics.setBrushByID( physics_id, object_id ) end
function physics.setCursor( x,y,z ) end
function physics.setDebugMode( debug_mode_flag ) end
function physics.setEnabled( int_flag ) end
function physics.setGravityVector( x,y,z ) end
function physics.setInertia( vx,vy,vz ) end
function physics.setLinearVelocity( object_id, vx, vy, vz ) end
function physics.setMass( new_default_mass ) end
function physics.setOrigin( x,y,z ) end
function physics.setPaused( int_flag ) end
function physics.setPhysicsDrawingHack( int_flag ) end
function physics.stepOnce() end
function physics.translate( id, x,y,z ) end
