--
-- Created by IntelliJ IDEA.
-- User: br
-- Date: 2/09/13
-- Time: 2:12 AM
-- To change this template use File | Settings | File Templates.
--

module "gui"

function blur( gui_widget_id ) end
function getCustomWidgetMouseXY( ) end
function getWidgetSize( gui_widget_id ) end
function getWidgetValue( gui_widget_id ) end
function getWindowList() end
function getWindowSize( gui_window_id ) end
function hideWidget( gui_widget_id ) end
function hideWindow( gui_window_id ) end
function newButton( gui_window_id, string_click_handler_function_name, string_button_caption,left, top, width ) end
function newCheckbox( gui_window_id, string_click_handler_function_name, string_button_caption,left, top, width ) end
function newCustomWidget( gui_window_id, string_event_handler_function_name, left, top, width, height ) end
function newLabel( gui_window_id, string_event_handler_function_name, string_button_caption,left, top, width ) end
function newListView( gui_window_id, string_event_handler_function_name, string_button_caption,left, top, width ) end
function newPasswordBox( gui_window_id, string_event_handler_function_name, string_button_caption,left, top, width ) end
function newRadioButton( gui_window_id, string_click_handler_function_name, string_button_caption,left, top, width ) end
function newScreen( gui_window_id, string_click_handler_function_name, string_button_caption,left, top, width ) end
function newSubWindow( gui_window_id, string_click_handler_function_name, left, top, width, height ) end
function newTextBox( gui_window_id, string_event_handler_function_name, string_widget_value, left, top, width ) end
function newWindow( string_window_name ) end
function setCustomWidgetClipping( gui_widget_id, flag ) end
function setFocus( gui_widget_id ) end
function setPasswordMode( gui_widget_id, int_flag ) end
function setWidgetSize( gui_widget_id, left, top, width, height ) end
function setWidgetValue( gui_widget_id, string_new_value ) end
function setWindowCaption( gui_window_id, string_new_caption ) end
function setWindowSize( gui_window_id, left, top, width, height ) end
function showWidget( gui_widget_id ) end
function showWindow( gui_window_id ) end

