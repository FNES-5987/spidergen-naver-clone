
/**
Constructor
Do not call Function in Constructor.
*/

class subview1()
{
	super();
	

}
extends AView;

function subview1*init(context, evtListener)
{
	super.init(context, evtListener);

	//TODO:edit here

};

function subview1*onInitDone()
{
	super.onInitDone();

	var totalNum = this.news_tabview.getAllTabs().length; // 4

	this.this_page_num.setText(1);
	this.total_page_num.setText(totalNum);

};

function subview1*onActiveDone(isFirst)
{
	super.onActiveDone(isFirst);

	//TODO:edit here

};
