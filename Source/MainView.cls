
/**
Constructor
Do not call Function in Constructor.
*/
class MainView()
{
	super();

	//TODO:edit here

}
extends AView;


function MainView*init(context, evtListener)
{
	super.init(context, evtListener);

	//TODO:edit here

};

function MainView*onInitDone()
{
	super.onInitDone();

	this.searchbox.setFocus();
	
	
	
	this.mainFeedTab.addTab('추천구독', 'Source/feed/feed_sub_view/feed_sub_view_1.lay', 'feed_sub_view1');
	this.mainFeedTab.selectTabById('feed_sub_view1');
	window.onscroll = function() {
		onSearch_areaScroll();
	};

	function onSearch_areaScroll(comp, info, e) {
		var scrollPosition = window.scrollY;

		if (scrollPosition > 300) {
		
			console.log("function_ON");
		}
	}
};

function MainView*onActiveDone(isFirst)
{
	super.onActiveDone(isFirst);

	//TODO:edit here

};

function MainView*onSearchboxFocus(comp, info, e)
{

	this.searchbox.setPlaceholder('검색어를 입력해 주세요.');

};

function MainView*onToggleClick(comp, info, e)
{
	// 1단계
	/*if (this.shortcut_group.isShow()) {
		this.shortcut_group.$ele.css('display', 'none');
	} else {
		this.shortcut_group.$ele.css('display', 'block');
	}*/
	
	// 2단계
	/*if (this.shortcut_group.isShow()) {
		this.shortcut_group.removeClass('on');
	} else {
		this.shortcut_group.addClass('on');
	}*/
	
	// 3단계
	this.shortcut_group.element.classList.toggle('on');
	this.more_icon.element.classList.toggle('on');
	this.shortcut_area.element.classList.toggle('on');
};


function MainView*scroll_top_btn_click(comp, info, e)
{

	window.scrollTo(0, 0);

};



function MainView*tab_item_click_news(comp, info, e)
{

	this.contant_tab.selectTabByIndex(0);

};

function MainView*tab_item_click_media(comp, info, e)
{

	this.contant_tab.selectTabByIndex(1);

};

function MainView*tab_item_click_ent(comp, info, e)
{

	this.contant_tab.selectTabByIndex(2);

};

function MainView*tab_item_click_sports(comp, info, e)
{

	this.contant_tab.selectTabByIndex(3);

};

function MainView*tab_item_click_ico(comp, info, e)
{

	this.contant_tab.selectTabByIndex(4);

};

function MainView*onSearchboxBlur(comp, info, e)
{

	this.searchbox.setPlaceholder('');

};
