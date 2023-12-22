
/**
Constructor
Do not call Function in Constructor.
*/
function feed_tab_1()
{
	AView.call(this);

	//TODO:edit here

}
afc.extendsClass(feed_tab_1, AView);


feed_tab_1.prototype.init = function(context, evtListener)
{
	AView.prototype.init.call(this, context, evtListener);

	//TODO:edit here

};

feed_tab_1.prototype.onInitDone = function()
{
	AView.prototype.onInitDone.call(this);

	this.feedGrid.addClass('scale_img');
	console.log('test')
};

feed_tab_1.prototype.onActiveDone = function(isFirst)
{
	AView.prototype.onActiveDone.call(this, isFirst);

	//TODO:edit here

};
