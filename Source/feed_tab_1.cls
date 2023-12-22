
/**
Constructor
Do not call Function in Constructor.
*/
class feed_tab_1()
{
	super();

	//TODO:edit here

}
extends AView;


function feed_tab_1*init(context, evtListener)
{
	super.init(context, evtListener);

	//TODO:edit here

};

function feed_tab_1*onInitDone()
{
	super.onInitDone();

	this.feedGrid.addClass('scale_img');
	console.log('test')
};

function feed_tab_1*onActiveDone(isFirst)
{
	super.onActiveDone(isFirst);

	//TODO:edit here

};
