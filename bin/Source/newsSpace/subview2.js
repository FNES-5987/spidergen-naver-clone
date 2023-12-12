
/**
Constructor
Do not call Function in Constructor.
*/
function subview2()
{
	AView.call(this);

	//TODO:edit here

}
afc.extendsClass(subview2, AView);


subview2.prototype.init = function(context, evtListener)
{
	AView.prototype.init.call(this, context, evtListener);

	//TODO:edit here

};

subview2.prototype.onInitDone = function()
{
	AView.prototype.onInitDone.call(this);

	//TODO:edit here

};

subview2.prototype.onActiveDone = function(isFirst)
{
	AView.prototype.onActiveDone.call(this, isFirst);

	//TODO:edit here

};
