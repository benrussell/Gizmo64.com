--[[
Gizmo-Docs Lua Stub
Generated: 2014/09/11 02:07:07

Created by: https://github.com/benrussell/Gizmo-Docs-Generator
--]]

module "physics"

function applyForce( object_id, x,y,z ) end
function applyImpulse( object_id, x,y,z ) end
function applyOffsetImpulse( object_id, x,y,z ) end
function applyTorque( object_id, x,y,z ) end
function applyTorqueImpulse( object_id, x,y,z ) end
function clearForces( object_id ) end
function getAngularVelocity( object_id ) end
function getLinearVelocity( object_id ) end
function getOrientationQ( object_id ) end
function loadCollada( filename ) end
function newBox( edge_size ) end
function newCapsule( radius, height ) end
function newCone( radius, height ) end
function newCylinder( radius, height, z ) end
function newMultiSphere( ........fubar ) end
function newSphere( radius ) end
function restart() end
function setAngularVelocity( id, x, y, z ) end
function setBrush( object_id ) end
function setBrushByID( physics_id, object_id ) end
function setCursor( x,y,z ) end
function setDebugMode( debug_mode_flag ) end
function setEnabled( int_flag ) end
function setGravityVector( x,y,z ) end
function setInertia( vx,vy,vz ) end
function setLinearVelocity( object_id, vx, vy, vz ) end
function setMass( new_default_mass ) end
function setOrigin( x,y,z ) end
function setPaused( int_flag ) end
function setPhysicsDrawingHack( int_flag ) end
function stepOnce() end
function translate( id, x,y,z ) end
