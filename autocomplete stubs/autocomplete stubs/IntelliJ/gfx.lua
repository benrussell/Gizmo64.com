--[[
Gizmo-Docs Lua Stub
Generated: 2014/09/11 02:07:07

Created by: https://github.com/benrussell/Gizmo-Docs-Generator
--]]

module "gfx"

function bakeTerrainMap( texture_id ) end
function clearFBO() end
function clearMaskingTape() end
function clearTexture( texture_id, widht, height, bpp ) end
function copyPixels( texture_id, left,bottom, width,height ) end
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
function drawTexturedQuad( x,y, w,h ) end
function drawTranslucentDarkBox( left,bottom,width,height ) end
function drawTriMesh( trimesh_id ) end
function drawVBO( vbo_id, tri_count ) end
function enableReflectionDrawingCalls() end
function generateTexture_Checkerboard() end
function getAircraftPositionGL() end
function getDrawDebugPath() end
function getFPS() end
function getFrameSpeed( target_speed_per_second ) end
function getIsViewInsideCockpit() end
function getM() end
function getScreenSize() end
function getStringWidth( string ) end
function getTexture_CELogo() end
function getTexture_GizmoLogo() end
function getTexture_LiteMap() end
function getTexture_LuaLogo() end
function getTexture_Paint() end
function getTexture_UI() end
function getTexture_XALogo() end
function loadObject( OPT_object_id, filename ) end
function loadPng( OPT_texture_id, filename ) end
function loadTga( OPT_texture_id, filename ) end
function loadTgaBlob( texture_id, blob, blob_size ) end
function localToWorld( x,y,z ) end
function matchAircraftOrientation() end
function measureString( string ) end
function newFBO( texture_id, width, height ) end
function newTexture() end
function plot( data_set, stride, scale ) end
function rebindFBO( fbo_id..... ) end
function releaseFBO( fbo_id ) end
function screenToGL( win_x, win_y ) end
function setColor( r,g,b, a ) end
function setMaskingTape( x,y, w,h ) //FIXME: mantis/118 end
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
function setupViewportProjection_Perspective( width,height,near,far ) end
function texOff() end
function texOn() end
function useFBO( fbo_id ) end
function useTexture( texture_id, OPT_texture_unit ) end
function worldToLocal( lat,lon,alt ) end
