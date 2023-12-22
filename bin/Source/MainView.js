
/**
Constructor
Do not call Function in Constructor.
*/
function MainView()
{
	AView.call(this);

	//TODO:edit here

}
afc.extendsClass(MainView, AView);


MainView.prototype.init = function(context, evtListener)
{
	AView.prototype.init.call(this, context, evtListener);

	//TODO:edit here

};

MainView.prototype.onInitDone = function()
{
	AView.prototype.onInitDone.call(this);

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

MainView.prototype.onActiveDone = function(isFirst)
{
	AView.prototype.onActiveDone.call(this, isFirst);

	//TODO:edit here

};

MainView.prototype.onSearchboxFocus = function(comp, info, e)
{

	this.searchbox.setPlaceholder('검색어를 입력해 주세요.');

};

MainView.prototype.onToggleClick = function(comp, info, e)
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


MainView.prototype.scroll_top_btn_click = function(comp, info, e)
{

	window.scrollTo(0, 0);

};



MainView.prototype.tab_item_click_news = function(comp, info, e)
{

	this.contant_tab.selectTabByIndex(0);

};

MainView.prototype.tab_item_click_media = function(comp, info, e)
{

	this.contant_tab.selectTabByIndex(1);

};

MainView.prototype.tab_item_click_ent = function(comp, info, e)
{

	this.contant_tab.selectTabByIndex(2);

};

MainView.prototype.tab_item_click_sports = function(comp, info, e)
{

	this.contant_tab.selectTabByIndex(3);

};

MainView.prototype.tab_item_click_ico = function(comp, info, e)
{

	this.contant_tab.selectTabByIndex(4);

};

MainView.prototype.onSearchboxBlur = function(comp, info, e)
{

	this.searchbox.setPlaceholder('');

};
