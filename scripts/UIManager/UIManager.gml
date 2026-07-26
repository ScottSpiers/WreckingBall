

function InitUI()
{
	global.uiLayer = uiLayer;
	global.dialogPanel = dialogPanel;
	global.dialogText = dialogText;
	global.tooltipPanel = tooltipPanel;
	global.tooltipText = tooltipText;
	global.hudPanel = hudPanel;
	global.signatureText = signatureText;
	global.calendarText = calendarText;
	global.emailPanel = emailPanel;
	global.playerPromptPanel = playerPromptPanel;
	
	HideEmail();
	HidePlayerPrompt();
	HideDialog();
	HideTooltip();
}

function HideEmail()
{
	flexpanel_node_style_set_display(GetEmailPanel(), flexpanel_display.none);
}

function ShowEmail()
{
	flexpanel_node_style_set_display(GetEmailPanel(), flexpanel_display.flex);
}

function GetEmailPanel()
{
	var ui = layer_get_flexpanel_node(global.uiLayer);
	return flexpanel_node_get_child(ui, global.emailPanel);
}

function HidePlayerPrompt()
{
	flexpanel_node_style_set_display(GetPlayerPromptPanel(), flexpanel_display.none);
}

function ShowPlayerPrompt()
{
	flexpanel_node_style_set_display(GetPlayerPromptPanel(), flexpanel_display.flex);
}

function GetPlayerPromptPanel()
{
	var ui = layer_get_flexpanel_node(global.uiLayer);
	return flexpanel_node_get_child(ui, global.playerPromptPanel);
}

function UpdateCalendar()
{
	var textId = layer_text_get_id(global.uiLayer, global.calendarText);
	layer_text_text(textId, $"{global.daysLeft}");
}

function ShowHUD()
{
	flexpanel_node_style_set_display(GetHUDPanel(), flexpanel_display.flex);
}

function HideHUD()
{
	flexpanel_node_style_set_display(GetHUDPanel(), flexpanel_display.none);
}

function GetHUDPanel()
{
	var ui = layer_get_flexpanel_node(global.uiLayer);
	return flexpanel_node_get_child(ui, global.hudPanel);
}

function UpdateSignatureUI()
{
	var textId = layer_text_get_id(global.uiLayer, global.signatureText);
	layer_text_text(textId, $"x{global.signatures}");
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
	flexpanel_node_style_set_position(panel, flexpanel_edge.left, posX - 16, flexpanel_unit.point);
	flexpanel_node_style_set_position(panel, flexpanel_edge.top, posY - 80, flexpanel_unit.point);
	flexpanel_node_style_set_display(panel, flexpanel_display.flex);
	
}