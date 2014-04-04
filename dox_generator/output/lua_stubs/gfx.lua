
gfx = {}
function gfx.bakeTerrainMap( texture_id ) end
function gfx.clearFBO() end
function gfx.clearMaskingTape() end
function gfx.clearTexture( texture_id, widht, height, bpp ) end
function gfx.disableReflectionDrawingCalls() end
function gfx.drawArc( radius, segments, begin_degrees, end_degrees ) end
function gfx.drawBox( left,bottom,width,height ) end
function gfx.drawCircle( radius,segments ) end
function gfx.drawFilledArc( radius, segments, begin_degrees, end_degrees ) end
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
function gfx.getIsViewInsideCockpit() end
function gfx.getM() end
function gfx.getScreenSize() end
function gfx.getStringWidth( "string" ) end
function gfx.getTexture_CELogo() end
function gfx.getTexture_GizmoLogo() end
function gfx.getTexture_LiteMap() end
function gfx.getTexture_LuaLogo() end
function gfx.getTexture_Paint() end
function gfx.getTexture_UI() end
function gfx.getTexture_XALogo() end
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
function gfx.releaseFBO( fbo_id ) end
function gfx.screenToGL( win_x, win_y ) end
function gfx.setColor( r,g,b, a ) end
function gfx.setMaskingTape( x,y, w,h ) //FIXME: mantis/118 end
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
