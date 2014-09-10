--[[
Gizmo-Docs Lua Stub
Generated: 2014/09/11 02:07:07

Created by: https://github.com/benrussell/Gizmo-Docs-Generator
--]]

module "map"

function bakeHeightMap( terrainmesh_id, texture_id, OPT_minAlt, OPT_maxAlt ) end
function bakeHeightMap_32bit( terrainmesh_id, texture_id ) end
function bakeNormalMap( terrainmesh_id, texture_id ) end
function delQueryPoints( qpid ) end
function getTerrainProfile( start_position_gl, end_position_gl, resolution ) end
function getTriMeshOrigin( trimesh_id ) end
function newQueryPoints( x,y,z, range, resolution ) end
function newTerrainMesh( map_query_points_id ) end
function newTriMesh( terrain_mesh_id ) end
