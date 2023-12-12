
/**
Constructor
Do not call Function in Constructor.
*/
function subview4()
{
	AView.call(this);

	//TODO:edit here

}
afc.extendsClass(subview4, AView);


subview4.prototype.init = function(context, evtListener)
{
	AView.prototype.init.call(this, context, evtListener);

	//TODO:edit here

};

subview4.prototype.onInitDone = function()
{
	AView.prototype.onInitDone.call(this);

	//TODO:edit here

};

subview4.prototype.onActiveDone = function(isFirst)
{
	AView.prototype.onActiveDone.call(this, isFirst);

	//TODO:edit here

};
