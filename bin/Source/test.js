
/**
Constructor
Do not call Function in Constructor.
*/
function test()
{
	AView.call(this);

	//TODO:edit here

}
afc.extendsClass(test, AView);


test.prototype.init = function(context, evtListener)
{
	AView.prototype.init.call(this, context, evtListener);

	//TODO:edit here

};

test.prototype.onInitDone = function()
{
	AView.prototype.onInitDone.call(this);

	//TODO:edit here

};

test.prototype.onActiveDone = function(isFirst)
{
	AView.prototype.onActiveDone.call(this, isFirst);

	//TODO:edit here

};
