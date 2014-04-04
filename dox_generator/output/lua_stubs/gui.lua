
gui = {}
function gui.blur( gui_widget_id ) end
function gui.getCustomWidgetMouseXY( ) end
function gui.getWidgetSize( gui_widget_id ) end
function gui.getWidgetValue( gui_widget_id ) end
function gui.getWindowList() end
function gui.getWindowSize( gui_window_id ) end
function gui.hideWidget( gui_widget_id ) end
function gui.hideWindow( gui_window_id ) end
function gui.newButton( gui_window_id, "MyClickHandlerFunction", "Button Caption", left, top, width ) end
function gui.newCheckbox( gui_window_id, "MyClickHandlerFunction", "Button Caption", left, top, width ) end
function gui.newCustomWidget( gui_window_id, "EventHandlerFunction", left, top, width, height ) end
function gui.newLabel( gui_window_id, "EventHandlerFunction", "Button Caption", left, top, width ) end
function gui.newListView( gui_window_id, "EventHandlerFunction", "Button Caption", left, top, width ) end
function gui.newPasswordBox( gui_window_id, "EventHandlerFunction", "Button Caption", left, top, width ) end
function gui.newRadioButton( gui_window_id, "MyClickHandlerFunction", "Button Caption", left, top, width ) end
function gui.newScreen( gui_window_id, "MyClickHandlerFunction", "Button Caption", left, top, width ) end
function gui.newSubWindow( gui_window_id, "MyClickHandlerFunction", left, top, width, height ) end
function gui.newTextBox( gui_window_id, "EventHandlerFunction", "Box Contents", left, top, width ) end
function gui.newWindow( "WindowIdentifier" ) end
function gui.setCustomWidgetClipping( gui_widget_id, [0|1] ) end
function gui.setFocus( gui_widget_id ) end
function gui.setPasswordMode( gui_widget_id, int_flag ) end
function gui.setWidgetSelection( gui_widget_id, selection_start, selection_end ) end
function gui.setWidgetSize( gui_widget_id, left, top, width, height ) end
function gui.setWidgetValue( gui_widget_id, "new value" ) end
function gui.setWindowCaption( gui_window_id, "My Window Caption" ) end
function gui.setWindowSize( gui_window_id, left, top, width, height ) end
function gui.showWidget( gui_widget_id ) end
function gui.showWindow( gui_window_id ) end
