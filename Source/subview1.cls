
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

	var totalNum = this.news_tabview.getAllTabs().length;

	this.this_page_num.setText(1);
	this.total_page_num.setText(totalNum);
	
};

function subview1*onActiveDone(isFirst)
{
	super.onActiveDone(isFirst);

	this.news_tabview.selectTabByIndex(0);
	this.this_page_num.setText(1);

};

function subview1*btn_next_click(comp, info, e)
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

function subview1*onBtn_prevClick(comp, info, e)
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
