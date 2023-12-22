
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

	var totalNum = this.news_tabview.getAllTabs().length;

	this.this_page_num.setText(1);
	this.total_page_num.setText(totalNum);
	
};

subview1.prototype.onActiveDone = function(isFirst)
{
	AView.prototype.onActiveDone.call(this, isFirst);

	this.news_tabview.selectTabByIndex(0);
	this.this_page_num.setText(1);

};

subview1.prototype.btn_next_click = function(comp, info, e)
{

	let pageNum = +this.this_page_num.getText();
	let totalPageNum = +this.total_page_num.getText();
	
	if (pageNum < totalPageNum) {
		this.news_tabview.selectTabByIndex(pageNum++);
		
		this.this_page_num.setText(pageNum);
		
		console.log(pageNum);
	} else {
		// 상위 탭뷰 다음 탭으로 넘기기
	}

};

subview1.prototype.onBtn_prevClick = function(comp, info, e)
{

	let pageNum = +this.this_page_num.getText();
	let totalPageNum = +this.total_page_num.getText();
	
	if (pageNum > 1) {
		
		this.news_tabview.selectTabByIndex(--pageNum - 1);
		
		this.this_page_num.setText(pageNum);
		
		console.log(pageNum);
	} else {
		// 상위 탭뷰 마지막 탭으로 넘기기
	}

};
