--[[
Gizmo-Docs Lua Stub
Generated: __date__ __time__

Created by: https://github.com/benrussell/Gizmo-Docs-Generator
--]]

module "gui"

function blur( gui_widget_id ) end
function getCustomWidgetMouseXY( ) end
function getWidgetSize( gui_widget_id ) end
function getWidgetValue( gui_widget_id ) end
function getWidgetVisible( gui_widget_id ) end
function getWindowList() end
function getWindowSize( gui_window_id ) end
function getWindowVisible( gui_window_id ) end
function hideWidget( gui_widget_id ) end
function hideWindow( gui_window_id ) end
function newButton( gui_window_id, click_handler_function_name_string, button_caption, left, top, width ) end
function newCheckbox( gui_window_id, click_handler_function_string, button_caption, left, top, width ) end
function newCustomWidget( gui_window_id, event_handler_function, left, top, width, height ) end
function newLabel( gui_window_id, event_handler_function, button_caption, left, top, width ) end
function newListView( gui_window_id, event_handler_function, button_caption, left, top, width ) end
function newPasswordBox( gui_window_id, event_handler_function, button_caption, left, top, width ) end
function newScreen( gui_window_id, event_handler_function, button_caption, left, top, width ) end
function newSubWindow( gui_window_id, event_handler_function, button_caption, left, top, width ) end
function newTextBox( gui_window_id, event_handler_function, button_caption, left, top, width ) end
function newWindow( window_name ) end
function setCustomWidgetClipping( gui_widget_id, integer_bool_flag ) end
function setFocus( gui_widget_id ) end
function setPasswordMode( gui_widget_id, int_flag ) end
function setWidgetSelection( gui_widget_id, selection_start, selection_end ) end
function setWidgetSize( gui_widget_id, left, top, width, height ) end
function setWidgetValue( gui_widget_id, new_value ) end
function setWindowCaption( gui_window_id, window_caption ) end
function setWindowSize( gui_window_id, left, top, width, height ) end
function showWidget( gui_widget_id ) end
function showWindow( gui_window_id ) end
