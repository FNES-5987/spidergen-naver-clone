
/**
Constructor
Do not call Function in Constructor.
*/
function subview5()
{
	AView.call(this);

	//TODO:edit here

}
afc.extendsClass(subview5, AView);


subview5.prototype.init = function(context, evtListener)
{
	AView.prototype.init.call(this, context, evtListener);

	//TODO:edit here

};

subview5.prototype.onInitDone = function()
{
	AView.prototype.onInitDone.call(this);

	//TODO:edit here

};

subview5.prototype.onActiveDone = function(isFirst)
{
	AView.prototype.onActiveDone.call(this, isFirst);

	//TODO:edit here

};
