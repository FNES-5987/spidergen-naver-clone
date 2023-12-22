
/**
Constructor
Do not call Function in Constructor.
*/
class feed_sub_view_1()
{
	super();

	//TODO:edit here

}
extends AView;


function feed_sub_view_1*init(context, evtListener)
{
	super.init(context, evtListener);

	//TODO:edit here

};

function feed_sub_view_1*onInitDone()
{
	super.onInitDone();
	
	this.feedTab.addTab('추천_전체', 'Source/feed/feed_tab/feed_tab_1.lay', 'tab_1');
	this.feedTab.selectTabById('tab_1');
};

function feed_sub_view_1*onActiveDone(isFirst)
{
	super.onActiveDone(isFirst);

	//TODO:edit here

};
