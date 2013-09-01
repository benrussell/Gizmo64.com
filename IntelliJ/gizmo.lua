--
-- Created by IntelliJ IDEA.
-- User: br
-- Date: 2/09/13
-- Time: 2:09 AM
-- To change this template use File | Settings | File Templates.
--


module "gizmo"

function activate( serial_number, OPT_write_to_disk ) end
function disable( string_filename ) end
function dofile( string_filename ) end
function dofirmware( string_filename ) end
function getActivated() end
function getBuildDate() end
function getDisabledEventNames() end
function getPossibleEventNames() end
function getRegisteredEmail() end
function getVersion() end
function getVersionFull() end
function reboot() end
function resetEventMap() end
function resetFirmware() end
function setDebugVerbose( flag ) end
function sleep( duration_in_milliseconds, OPT_power_saver_flag ) end
