
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

window.onscroll = function() {
	var where = window.scrollY;
	
	if (where >= 300) {
		console.log(1);
	}
};
