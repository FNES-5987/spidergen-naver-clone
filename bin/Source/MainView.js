
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

window.onscroll = function() {
	var where = window.scrollY;
	
	if (where >= 300) {
		console.log(1);
	}
};
