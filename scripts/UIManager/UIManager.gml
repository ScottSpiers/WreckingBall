

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
	global.endEmailPanel = emailEndPanel;
	global.nameText = nameText;
	global.namePanel = namePanel;
	
	HideEmail();
	HideEndEmail();
	HidePlayerPrompt();
	HideDialog();
	HideTooltip();
}

function HideEndEmail()
{
	flexpanel_node_style_set_display(GetEmailEndPanel(), flexpanel_display.none);
}

function ShowEndEmail()
{
	flexpanel_node_style_set_display(GetEmailEndPanel(), flexpanel_display.flex);
}

function GetEmailEndPanel()
{
	var ui = layer_get_flexpanel_node(global.uiLayer);
	return flexpanel_node_get_child(ui, global.endEmailPanel);
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

function ShowDialog(text, name = noone)
{	
	global.IsShowingDialog = true;
	
	if(name == noone)
	{
		HideDialogName();
	}
	else
	{
		var nameTextId = layer_text_get_id(global.uiLayer, global.nameText);
		layer_text_text(nameTextId, name);
		ShowDialogName();
	}
	
	var dialogTextId = layer_text_get_id(global.uiLayer, global.dialogText);	
	layer_text_text(dialogTextId, text);
	
	flexpanel_node_style_set_display(GetDialogPanel(), flexpanel_display.flex);
}

function HideDialog()
{
	HideDialogName();
	flexpanel_node_style_set_display(GetDialogPanel(), flexpanel_display.none);
	global.IsShowingDialog = false;
}

function GetDialogPanel()
{
	var ui = layer_get_flexpanel_node(global.uiLayer);
	return flexpanel_node_get_child(ui, global.dialogPanel);	
}

function ShowDialogName()
{
	flexpanel_node_style_set_display(GetDialogNamePanel(), flexpanel_display.flex);
}

function HideDialogName()
{
	flexpanel_node_style_set_display(GetDialogNamePanel(), flexpanel_display.none);
}

function GetDialogNamePanel()
{
	var ui = layer_get_flexpanel_node(global.uiLayer);
	return flexpanel_node_get_child(ui, global.namePanel);	
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