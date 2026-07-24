

function InitUI()
{
	global.uiLayer = uiLayer;
	global.dialogPanel = dialogPanel;
	global.dialogText = dialogText;
	HideDialog();	
}

//var tooltipPanel = "pnl_tooltip";

function ShowDialog(text)
{	
	var textId = layer_text_get_id(global.uiLayer, global.dialogText);
	layer_text_text(textId, text);
	flexpanel_node_style_set_display(GetDialogPanel(), flexpanel_display.flex);
	
}

function HideDialog()
{
	flexpanel_node_style_set_display(GetDialogPanel(), flexpanel_display.none);
}

function GetDialogPanel()
{
	var ui = layer_get_flexpanel_node(global.uiLayer);
	return flexpanel_node_get_child(ui, global.dialogPanel);	
}