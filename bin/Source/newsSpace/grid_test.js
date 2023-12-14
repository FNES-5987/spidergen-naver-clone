
/**
Constructor
Do not call Function in Constructor.
*/
function grid_test()
{
	AView.call(this);

	//TODO:edit here

}
afc.extendsClass(grid_test, AView);


grid_test.prototype.init = function(context, evtListener)
{
	AView.prototype.init.call(this, context, evtListener);

	//TODO:edit here

};

grid_test.prototype.onInitDone = function()
{
	AView.prototype.onInitDone.call(this);

	//TODO:edit here

};

grid_test.prototype.onActiveDone = function(isFirst)
{
	AView.prototype.onActiveDone.call(this, isFirst);

	//TODO:edit here

};
