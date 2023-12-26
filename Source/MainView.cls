
/**
Constructor
Do not call Function in Constructor.
*/
class MainView()
{
	super();
	
	this.interval = null;
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
	
	var thisObj = this;
	
	this.searchbox.setFocus();
	
	this.mainFeedTab.addTab('추천구독', 'Source/feed/feed_sub_view/feed_sub_view_1.lay', 'feed_sub_view1');
	this.mainFeedTab.selectTabById('feed_sub_view1');
	
	// scroll
	window.onscroll = function() {
	
		var scrollPosition = window.scrollY;
		
		var searchArea = thisObj.search_area.element;
		var searchGroup = thisObj.search_group.element;
		
		if (scrollPosition > 300) {
			searchArea.classList.add('fixed');
			searchGroup.classList.add('fixed');
		} else {
			searchArea.classList.remove('fixed');
			searchGroup.classList.remove('fixed');
		}
		
	};
	
	this.time_label.setText(this.nowTime());
	
	
	this.setSlide();
	console.log(this);
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

function MainView*onSearchboxBlur(comp, info, e)
{

	this.searchbox.setPlaceholder('');

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

function MainView*nowTime() {
	/*var koreanTime = new Date().toLocaleString('ko-KR');

	var formattedTime = koreanTime.replace(",", "");
	var parts = formattedTime.split(" ");
	var dateParts = parts[0].split("/");
	var timeParts = parts[1].split(":");

	var month = +dateParts[0];
	var date = +dateParts[1];
	var hour = +timeParts[0];
	var minite = +timeParts[1];

	if (hour < 13) {
		hour += 12;
	} else if (hour == 12) {
		hour = 0;
	}

	var result = month + "." + date + ". " + hour + ":" +minite;*/
	
	var koreanTime = new Date();
	var koreanMonth = koreanTime.getMonth()+1;
	var koreanDate = koreanTime.getDate();
	var koreanHours = koreanTime.getHours().toString().padStart(2, '0');
	var koreanMinutes = koreanTime.getMinutes();
	
	var result = `${koreanMonth}.${koreanDate}. ${koreanHours}:${koreanMinutes}`;

	return result;
};

function MainView*onBtn_refreshClick(comp, info, e)
{

	this.time_label.setText(this.nowTime());

};

function MainView*setSlide() {
	// rolling
	
	var thisObj = this;
	
	var timeCount = 0;
	this.interval = setInterval(function() {
		if (timeCount < 2) {
			timeCount++;
		} else {
			timeCount = 0;
			thisObj.banner_rolling.element.classList.toggle('on');
		}
	}, 1000);
};

function MainView*onSlideActionenter(comp, info, e)
{
	clearInterval(this.interval);
};

function MainView*onSlideActionleave(comp, info, e)
{

	this.setSlide();

};
