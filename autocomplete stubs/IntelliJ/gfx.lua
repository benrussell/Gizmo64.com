--
-- Created by IntelliJ IDEA.
-- User: br
-- Date: 2/09/13
-- Time: 2:08 AM
-- To change this template use File | Settings | File Templates.
--





module "gfx"

function bakeTerrainMap( texture_id ) end
function clearFBO() end
function clearMaskingTape() end
function clearTexture( texture_id, widht, height, bpp ) end
function disableReflectionDrawingCalls() end
function drawArc( radius, segments, begin_degrees, end_degrees ) end
function drawBox( left,bottom,width,height ) end
function drawCircle( radius,segments ) end
function drawFilledArc( radius, segments, begin_degrees, end_degrees ) end
function drawFilledBox( left,bottom,width,height ) end
function drawFilledCircle( radius,segments ) end
function drawLine( a,b, x,y ) end
function drawObject( object_id, lat,lon,alt, p,r,h ) end
function drawObjectEx( object_handle, x,y,z, p,r,h ) end
function drawObjectGL( object_handle, x,y,z, p,r,h ) end
function drawRadial( heading, radius, length ) end
function drawString( string, OPT_x,OPT_y ) end
function drawTranslucentDarkBox( left,bottom,width,height ) end
function enableReflectionDrawingCalls() end
function getAircraftPositionGL() end
function getDrawDebugPath() end
function getFPS() end
function getFrameSpeed( target_speed_per_second ) end
function getIsViewInsideCockpit() end
function getM() end
function getScreenSize() end
function getStringWidth( string ) end
function getTexture_GizmoLogo() end
function getTexture_GizmoUI() end
function getTexture_LiteMap() end
function getTexture_LuaLogo() end
function getTexture_Paint() end
function getTexture_UI() end
function getTexture_XALogo() end
function loadObject( OPT_object_id, string_xplane_rel_path ) end
function loadPng( OPT_texture_id, string_full_path ) end
function loadTga( OPT_texture_id, string_full_path ) end
function loadTgaBlob( texture_id, blob, blob_size ) end
function localToWorld( x,y,z ) end
function matchAircraftOrientation() end
function measureString( string ) end
function newFBO( texture_id, width, height ) end
function newTexture() end
function rebindFBO( fbo_id, foo ) end
function releaseFBO( fbo_id ) end
function setColor( r,g,b, a ) end
function setMaskingTape( x,y, w,h )
function setState( fog, numTexUnits, lighting, alphaTest, alphaBlend, depthTest, depthWrite ) end
function setTerrainMapMode_Predictive() end
function setTerrainMapMode_Relative() end
function setTerrainMapMode_Synthetic() end
function setTerrainMapMode_Topographic() end
function setTerrainMapOption_LookAhead( integer_flag ) end
function setTerrainMapOption_NorthUp( integer_flag ) end
function setTerrainMapOption_Range( meters_between_sample_points ) end
function setTerrainMapOption_RefreshRate( rate_value ) end
function setTerrainMapOption_Size( number_of_samples_along_an_edge ) end
function texOff() end
function texOn() end
function useFBO( fbo_id ) end
function useTexture( texture_id ) end
function worldToLocal( lat,lon,alt ) end
