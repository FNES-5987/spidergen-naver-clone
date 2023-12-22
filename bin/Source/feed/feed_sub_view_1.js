
/**
Constructor
Do not call Function in Constructor.
*/
function feed_sub_view_1()
{
	AView.call(this);

	//TODO:edit here

}
afc.extendsClass(feed_sub_view_1, AView);


feed_sub_view_1.prototype.init = function(context, evtListener)
{
	AView.prototype.init.call(this, context, evtListener);

	//TODO:edit here

};

feed_sub_view_1.prototype.onInitDone = function()
{
	AView.prototype.onInitDone.call(this);
	
	this.feedTab.addTab('추천_전체', 'Source/feed/feed_tab/feed_tab_1.lay', 'tab_1');
	this.feedTab.selectTabById('tab_1');
};

feed_sub_view_1.prototype.onActiveDone = function(isFirst)
{
	AView.prototype.onActiveDone.call(this, isFirst);

	//TODO:edit here

};
