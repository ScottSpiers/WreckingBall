

function InitUI()
{
	global.uiLayer = uiLayer;
	global.dialogPanel = dialogPanel;
	global.dialogText = dialogText;
	global.tooltipPanel = tooltipPanel;
	global.tooltipText = tooltipText;
	HideDialog();
	HideTooltip();
}

function ShowDialog(text)
{	
	global.IsShowingDialog = true;
	var textId = layer_text_get_id(global.uiLayer, global.dialogText);
	layer_text_text(textId, text);
	flexpanel_node_style_set_display(GetDialogPanel(), flexpanel_display.flex);
}

function HideDialog()
{
	flexpanel_node_style_set_display(GetDialogPanel(), flexpanel_display.none);
	global.IsShowingDialog = false;
}

function GetDialogPanel()
{
	var ui = layer_get_flexpanel_node(global.uiLayer);
	return flexpanel_node_get_child(ui, global.dialogPanel);	
}

function GetTooltipPanel()
{
	var ui = layer_get_flexpanel_node(global.uiLayer);
	return flexpanel_node_get_child(ui, global.tooltipPanel);
}

function HideTooltip()
{
	flexpanel_node_style_set_display(GetTooltipPanel(), flexpanel_display.none);
	global.IsShowingTooltip = false;
}

function ShowTooltip(_x, _y)
{
	global.IsShowingTooltip = true;
	
	var panel = GetTooltipPanel();
	
	var posX = ((_x - camera_get_view_x(view_camera[0])) /  camera_get_view_width(view_camera[0])) * display_get_gui_width();
	var posY = ((_y - camera_get_view_y(view_camera[0])) / camera_get_view_height(view_camera[0])) * display_get_gui_height();
	
	flexpanel_node_style_set_position_type(panel, flexpanel_position_type.absolute);
	flexpanel_node_style_set_position(panel, flexpanel_edge.left, posX - 4, flexpanel_unit.point);
	flexpanel_node_style_set_position(panel, flexpanel_edge.top, posY - 64, flexpanel_unit.point);
	flexpanel_node_style_set_display(panel, flexpanel_display.flex);
	
}