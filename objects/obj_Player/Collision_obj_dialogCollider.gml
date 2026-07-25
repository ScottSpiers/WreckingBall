if(other.isNPC)
	return;

StepBack(other.moveX, other.moveY);

ShowDialog(other._dialogs[0]);
other.isShowingDialog = true;

