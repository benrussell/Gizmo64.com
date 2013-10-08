function API: 10.11.06+ end
function API: 10.11.22+ end
function _2D_Events.OnDraw_FirstCockpit() end
function _2D_Events.OnDraw_Gauges() end
function _2D_Events.OnDraw_Gauges_3D() end
function _2D_Events.OnDraw_LastCockpit() end
function _2D_Events.OnDraw_LocalMap2D() end
function _2D_Events.OnDraw_LocalMapProfile() end
function _2D_Events.OnDraw_Windows() end
function _3D_Events.OnDraw_Airplanes() end
function _3D_Events.OnDraw_Airports() end
function _3D_Events.OnDraw_DebugFlightPath() end
function _3D_Events.OnDraw_FirstScene() end
function _3D_Events.OnDraw_LastScene() end
function _3D_Events.OnDraw_LocalMap3D()	--WARNING: This function needs a name tweak to match the panel drawing signature convetion. end
function _3D_Events.OnDraw_Terrain() end
function _3D_Events.OnDraw_Vectors() end
function _3D_Events.OnDraw_World() end
function _Events.OnAircraftCrash() end
function _Events.OnAircraftLoad() end
function _Events.OnAircraftUnload() end
function _Events.OnAirportChanged() end
function _Events.OnBeforeReboot() end
function _Events.OnBoot() end
function _Events.OnCrash() end
function _Events.OnFirstFrame() end
function _Events.OnForceRedraw() end
function _Events.OnLiveryChanged() end
function _Events.OnMouseClick() end
function _Events.OnMouseWheel( x,y, wheel,clicks ) end
function _Events.OnPluginMessage( sig, path, message, integer_param ) end
function _Events.OnPluginMessageEx( sig, path, message, integer_param ) end
function _Events.OnSceneryLoaded() end
function _Events.OnSituationLoaded() end
function _Events.OnTrafficCountChanged() end
function _Events.main() end
function acf.getAStabHeading() end
function acf.getAStabPitch() end
function acf.getAStabRoll() end
function acf.getAlpha() end
function acf.getAltAgl() end
function acf.getAltMsl() end
function acf.getAuthor() end
function acf.getBeta() end
function acf.getDescription() end
function acf.getEncryptedScripts() end
function acf.getFCHeading() end
function acf.getFCPitch() end
function acf.getFCRoll() end
function acf.getFilename() end
function acf.getFolder() end
function acf.getGS() end
function acf.getGearDeployState() end
function acf.getGearHandleState() end
function acf.getHeading() end
function acf.getHeadingTrue() end
function acf.getIAS() end
function acf.getKIAS() end
function acf.getLat() end
function acf.getLiveryFolder() end
function acf.getLiveryName() end
function acf.getLon() end
function acf.getP() end
function acf.getP_dot() end
function acf.getPitch() end
function acf.getPosition() end
function acf.getPositionGL() end
function acf.getQ() end
function acf.getQ_dot() end
function acf.getR() end
function acf.getR_dot() end
function acf.getRelativeFolder() end
function acf.getRoll() end
function acf.getSessionTime() end
function acf.getTAS() end
function acf.getTrack() end
function acf.getVS() end
function acf.getYokeHeading() end
function acf.getYokePitch() end
function acf.getYokeRoll() end
function acf.reloadVehicle() end
function acf.setUsersAircraft( xp_relative_filename ) FIXME: gitbug:63 this function is broken end
function base64.decode( base64_encoded_string ) end
function base64.encode( plain_text_string ) end
function camera.getAttitude() end
function camera.getControl() end
function camera.getControlGreedy() end
function camera.getFOV() end
function camera.getPosition() end
function camera.getPositionGL() end
function camera.getZoom() end
function camera.lookAt( lat, lot, altitude ) end
function camera.lookAtGL( x,y,z ) end
function camera.releaseControl() end
function camera.setAttitude( p,r,h ) end
function camera.setFOV( fov ) end
function camera.setPosition( lat,lon,alt ) end
function camera.setPositionGL( x,y,z ) end
function camera.setZoom( zoom ) end
function coroutine.read_me() end
function debug.read_me() end
function dref.getArraySize( dref_id ) end
function dref.getBytes( dataref_id, start_at, number_to_fetch ) end
function dref.getDataref( "sim/dataref" ) end
function dref.getFloat( dataref_id ) end
function dref.getFloatV( dataref_id, start_at, number_to_fetch ) end
function dref.getInt( dataref_id ) end
function dref.getIntV( dataref_id, start_at, number_to_fetch ) end
function dref.getString( dataref_id ) end
function dref.newByteArray( "cdataref/name" ) end
function dref.newFloat( dataref_name, [hook_event_name] ) end
function dref.newFloatArray( "cdataref/name" ) end
function dref.newInt( dataref_name, [hook_event_name] ) end
function dref.newIntArray( "cdataref/name" ) end
function dref.setArraySize( dref_id, new_size ) end
function dref.setBytes( dataref_id, start_at, byte_string_var ) end
function dref.setFloat( dataref_id, value ) end
function dref.setFloatV( dataref_id, start_at, value1, value2, value3, ...., value10 ) end
function dref.setInt( dataref_id, value ) end
function dref.setIntV( dataref_id, start_at, value1, value2, value3, ...., value10 ) end
function dref.setString( dataref_id, byte_string_var ) end
function event.register( "event_name", "callback_function_name" ) end
function event.unregister( "event_name", "callback_function_name" ) end
function fmc.clear( index_number ) end
function fmc.clearAll() end
function fmc.getCount() end
function fmc.getDestination() end
function fmc.getDisplayed() end
function fmc.getGpsNavAid() end
function fmc.getGpsNavAidType() end
function fmc.getInfo( fmc_index_id ) end
function fmc.setDestination( fmc_index_id ) end
function fmc.setDisplayed( fmc_index_id ) end
function fmc.setInfo( fmc_index_id, navaid_id, altitude ) end
function fmc.setLatLon( fmc_index_id, Latitude, Longitude, altitude ) end
function font.drawString( font_id, string_to_draw, [x,y] ) end
function font.getFont( full_path_to_font_file, font_size ) end
function font.getStringWidth( font_id, "string" ) end
function font.measureString( font_id, "string" ) end
function gfx.bakeTerrainMap( texture_id ) end
function gfx.clearFBO() end
function gfx.clearMaskingTape() end
function gfx.clearTexture( texture_id, widht, height, bpp ) end
function gfx.disableReflectionDrawingCalls() end
function gfx.drawArc( radius, segments, begin_degrees, end_degrees ) end
function gfx.drawBox( left,bottom,width,height ) end
function gfx.drawCircle( radius,segments ) end
function gfx.drawFilledBox( left,bottom,width,height ) end
function gfx.drawFilledCircle( radius,segments ) end
function gfx.drawLine( a,b, x,y ) end
function gfx.drawObject( object_id, lat,lon,alt, p,r,h ) end
function gfx.drawObjectEx( object_handle, x,y,z, p,r,h ) end
function gfx.drawObjectGL( object_handle, x,y,z, p,r,h ) end
function gfx.drawRadial( heading, radius, length ) end
function gfx.drawString( string, [x,y] ) end
function gfx.drawTranslucentDarkBox( left,bottom,width,height ) end
function gfx.enableReflectionDrawingCalls() end
function gfx.getAircraftPositionGL() end
function gfx.getDrawDebugPath() end
function gfx.getFPS() end
function gfx.getFrameSpeed( target_speed_per_second ) end
function gfx.getM() end
function gfx.getScreenSize() end
function gfx.getStringWidth( "string" ) end
function gfx.getTexture_GizmoLogo() end
function gfx.getTexture_GizmoUI() end
function gfx.getTexture_LiteMap() end
function gfx.getTexture_LuaLogo() end
function gfx.getTexture_Paint() end
function gfx.getTexture_UI() end
function gfx.getTexture_XALogo() end
function gfx.isViewInsideCockpit() end
function gfx.loadObject( [object_id], "Aircraft/General Aviation/Cirrus Jet/objects/cockpit.obj" ) end
function gfx.loadPng( [texture_id], "/full/path/to/texture.png" ) end
function gfx.loadTga( [texture_id], "/full/path/to/texture.tga" ) end
function gfx.loadTgaBlob( texture_id, blob, blob_size ) end
function gfx.localToWorld( x,y,z ) end
function gfx.matchAircraftOrientation() end
function gfx.measureString( "string" ) end
function gfx.newFBO( texture_id, width, height ) end
function gfx.newTexture() end
function gfx.rebindFBO( fbo_id..... ) end
function gfx.releaseFBO() end
function gfx.setColor( r,g,b, a ) end
function gfx.setMaskingTape( x,y, w,h ) end
function gfx.setState( fog, numTexUnits, lighting, alphaTest, alphaBlend, depthTest, depthWrite ) end
function gfx.setTerrainMapMode_Predictive() end
function gfx.setTerrainMapMode_Relative() end
function gfx.setTerrainMapMode_Synthetic() end
function gfx.setTerrainMapMode_Topographic() end
function gfx.setTerrainMapOption_LookAhead( integer_flag ) end
function gfx.setTerrainMapOption_NorthUp( integer_flag ) end
function gfx.setTerrainMapOption_Range( meters_between_sample_points ) end
function gfx.setTerrainMapOption_RefreshRate( rate_value ) end
function gfx.setTerrainMapOption_Size( number_of_samples_along_an_edge ) end
function gfx.texOff() end
function gfx.texOn() end
function gfx.useFBO( fbo_id ) end
function gfx.useTexture( texture_id ) end
function gfx.worldToLocal( lat,lon,alt ) end
function gizmo.activate( serial_number, [write_to_disk] ) end
function gizmo.dofile( "filename", [firmware_mode] ) end
function gizmo.dofirmware( "filename" ) end
function gizmo.getActivated() end
function gizmo.getBuildDate() end
function gizmo.getDisabledEventNames() end
function gizmo.getPossibleEventNames() end
function gizmo.getRegisteredEmail() end
function gizmo.getVersion() end
function gizmo.getVersionFull() end
function gizmo.reboot() end
function gizmo.resetEventMap() end
function gizmo.resetFirmware() end
function gizmo.setDebugVerbose( flag ) end
function gizmo.sleep( duration_in_milliseconds, [power_saver] ) end
function gl.read_me() end
function glu.read_me() end
function gui.blur( gui_widget_id ) end
function gui.getCustomWidgetMouseXY( ) end
function gui.getCustomWidgetPosition( ) end
function gui.getCustomWidgetSize( ) end
function gui.getWidgetSize( gui_widget_id ) end
function gui.getWidgetValue( gui_widget_id ) end
function gui.getWindowList() end
function gui.getWindowSize( gui_window_id ) end
function gui.hideWidget( gui_widget_id ) end
function gui.hideWindow( gui_window_id ) end
function gui.newButton( gui_window_id, "MyClickHandlerFunction", "Button Caption", left, top, width ) end
function gui.newCheckbox( gui_window_id, "MyClickHandlerFunction", "Button Caption", left, top, width ) end
function gui.newCustomWidget( gui_window_id, "EventHandlerFunction", left, top, width ) end
function gui.newLabel( gui_window_id, "EventHandlerFunction", "Button Caption", left, top, width ) end
function gui.newListView( gui_window_id, "EventHandlerFunction", "Button Caption", left, top, width ) end
function gui.newPasswordBox( gui_window_id, "EventHandlerFunction", "Button Caption", left, top, width ) end
function gui.newRadioButton( gui_window_id, "MyClickHandlerFunction", "Button Caption", left, top, width ) end
function gui.newScreen( gui_window_id, "MyClickHandlerFunction", "Button Caption", left, top, width ) end
function gui.newSubWindow( gui_window_id, "MyClickHandlerFunction", "Button Caption", left, top, width ) end
function gui.newTextBox( gui_window_id, "EventHandlerFunction", "Box Contents", left, top, width ) end
function gui.newWindow( "WindowIdentifier" ) end
function gui.setCustomWidgetClipping( gui_widget_id, [0|1] ) end
function gui.setFocus( gui_widget_id ) end
function gui.setPasswordMode( gui_widget_id, int_flag ) end
function gui.setWidgetSize( gui_widget_id, left, top, width, height ) end
function gui.setWidgetValue( gui_widget_id, "new value" ) end
function gui.setWindowCaption( gui_window_id, "My Window Caption" ) end
function gui.setWindowSize( gui_window_id, left, top, width, height ) end
function gui.showWidget( gui_widget_id ) end
function gui.showWindow( gui_window_id ) end
function hash.md5File( "filename" ) end
function hash.md5String( "filename" ) end
function http.get( url, callback_function_name ) end
function http.post( url, callback_function_name, post_payload ) end
function http.resetProxy() end
function http.setProxy( "http://user:pass@proxy.host.lan:8001/" ) end
function http.urlDecode( data, data_length ) end
function http.urlEncode( data, data_length ) end
function io.read_me() end
function logging.debug( "debug message" ) end
function logging.error( "error message" ) end
function logging.getMessages() end
function logging.warning( "debug message" ) end
function map.bake( map_id, texture_id ) end
function map.newMap() end
function map.setColorMode( map_id, map.color_mode ) end
function map.setLookAhead( map_id, look_ahead ) end
function map.setNorthUp( map_id, north_up ) end
function map.setPosition( map_id, lat, lon, alt_agl, heading ) end
function map.setRange( map_id, range ) end
function math.abs(x) end
function math.acos(x) end
function math.asin(x) end
function math.atan(x) end
function math.atan2(y, x) end
function math.ceil(x) end
function math.cos(x) end
function math.cosh(x) end
function math.deg(x) end
function math.exp(x) end
function math.floor(x) end
function math.fmod(x, y) end
function math.frexp(x) end
function math.huge end
function math.ldexp(m, e) end
function math.log(x) end
function math.log10(x) end
function math.max(x, ...) end
function math.min(x, ...) end
function math.modf(x) end
function math.pi end
function math.pow(x, y) end
function math.rad(x) end
function math.random([m [, n]]) end
function math.randomseed(x) end
function math.sin(x) end
function math.sinh(x) end
function math.sqrt(x) end
function math.tan(x) end
function math.tanh(x) end
function matrix.transform3D( x,y,z,  tx,ty,tz,  tp,tr,th ) end
function memcache.get( "key name" ) end
function memcache.set( "key name", string_blob ) end
function menu.newItem( "Menu Label", "MenuEventName" ) end
function mouse.getXY() end
function mouse.setCursor( "CursorDrawingFunctionName" ) end
function nav.findNavAid( "name", "id", lat, lon, frequency ) end
function nav.getFirstNavAid() end
function nav.getFirstNavAidOfType( navaid_type ) end
function nav.getLastNavAidOfType( navaid_type ) end
function nav.getNavAidInfo( navaid_id ) end
function nav.getNextNavAid( navaid_type ) end
function nav.getTypeName( navaid_type ) end
function nav.setSearchGroups( airports, ndbs, vors, ils, localizers, glideslopes, outermarkers, middle_markers, innermarkers, fixes, dmes, latlons ) end
function navaid_types: end
function os.read_me() end
function package.read_me() end
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
function physics.applyForce( object_id, x,y,z ) end
function physics.applyImpulse( object_id, x,y,z ) end
function physics.applyOffsetImpulse( object_id, x,y,z ) - FIXME: empty hook end
function physics.applyTorque( object_id, x,y,z ) end
function physics.applyTorqueImpulse( object_id, x,y,z ) end
function physics.applyTorqueImpulse( object_id, x,y,z ) - FIXME: empty hook end
function physics.clearForces( object_id ) end
function physics.getAngularVelocity( object_id ) end
function physics.getLinearVelocity( object_id ) end
function physics.getOrientationQ( object_id ) end
function physics.loadCollada( "filename" ) end
function physics.newBox( edge_size ) end
function physics.newCapsule( radius, height ) end
function physics.newCone( radius, height ) end
function physics.newCylinder( radius, height ) end
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
function plugins.findPlugin( "signature" ) end
function plugins.getFolder() end
function plugins.sendMessage( "signature", code, "message" ) end
function shaders.compileShaders( shader_id, vertex_shader_string_blob, fragment_shader_string_blob ) end
function shaders.newShader() end
function shaders.release() end
function shaders.setParam( shader_id, "param_name", value ) end
function shaders.useShader( shader_id ) end
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
function string.read_me() end
function table.read_me() end
function timer.getInterval( timer_id ) end
function timer.getValue( timer_id ) end
function timer.newOneShot( "timer_function_name", interval ) end
function timer.newTimer( "timer_function_name", interval ) end
function timer.reset( timer_id ) end
function timer.setInterval( timer_id, interval ) end
function timer.stop( timer_id ) end
function trig.courseToLocation( x,y ) end
function trig.courseToLocation3D( x,y,z ) end
function trig.distanceBetweenPoints( a,b, x,y ) end
function trig.distanceBetweenWorldPoints( lat_a,lon_a, lat_b,lon_b ) end
function trig.interpolator( r,s,y, x,y,z, steps ) end
function trig.newPositionOffset( heading, speed ) end
function trig.newPositionOffset3D( heading, pitch, speed ) end
function utils.expScale( input, scale_factor ) end
function utils.getFileInfo( file_path ) end
function utils.getFolderContents( folder_path ) end
function utils.getStringFromCPointer( pointer_address, [length] ) end
function utils.newFolder( folder_path ) end
function utils.popWebBrowser( url ) end
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
