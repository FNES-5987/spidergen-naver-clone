
/**
Constructor
Do not call Function in Constructor.
*/
class NaverCloneApp()
{
	super();

	//TODO:edit here

}
extends AApplication;


function NaverCloneApp*onReady()
{
	super.onReady();

	this.setMainContainer(new APage('main'));
	this.mainContainer.open('Source/MainView.lay');

	//TODO:edit here

};

function NaverCloneApp*unitTest(unitUrl)
{
	//TODO:edit here

	this.onReady();

	super.unitTest(unitUrl);
};
