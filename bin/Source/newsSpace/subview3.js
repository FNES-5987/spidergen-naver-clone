
/**
Constructor
Do not call Function in Constructor.
*/
function subview3()
{
	AView.call(this);

	//TODO:edit here

}
afc.extendsClass(subview3, AView);


subview3.prototype.init = function(context, evtListener)
{
	AView.prototype.init.call(this, context, evtListener);

	//TODO:edit here

};

subview3.prototype.onInitDone = function()
{
	AView.prototype.onInitDone.call(this);

	//TODO:edit here

};

subview3.prototype.onActiveDone = function(isFirst)
{
	AView.prototype.onActiveDone.call(this, isFirst);

	//TODO:edit here

};
