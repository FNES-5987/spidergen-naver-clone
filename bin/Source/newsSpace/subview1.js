
/**
Constructor
Do not call Function in Constructor.
*/

function subview1()
{
	AView.call(this);
	

}
afc.extendsClass(subview1, AView);

subview1.prototype.init = function(context, evtListener)
{
	AView.prototype.init.call(this, context, evtListener);

	//TODO:edit here

};

subview1.prototype.onInitDone = function()
{
	AView.prototype.onInitDone.call(this);

	var totalNum = this.news_tabview.getAllTabs().length; // 4

	this.this_page_num.setText(1);
	this.total_page_num.setText(totalNum);

};

subview1.prototype.onActiveDone = function(isFirst)
{
	AView.prototype.onActiveDone.call(this, isFirst);

	//TODO:edit here

};
