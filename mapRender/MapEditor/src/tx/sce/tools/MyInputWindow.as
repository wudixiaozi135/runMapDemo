package tx.sce.tools
{	
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.utils.Dictionary;
	
	import mx.events.CloseEvent;
	import mx.managers.PopUpManager;
	
	import spark.components.Button;
	import spark.components.Group;
	import spark.components.HGroup;
	import spark.components.Label;
	import spark.components.TextInput;
	import spark.components.TitleWindow;
	import spark.layouts.HorizontalAlign;
	import spark.layouts.TileLayout;
	import spark.layouts.VerticalAlign;
	import spark.layouts.VerticalLayout;
	import spark.layouts.supportClasses.LayoutBase;
	
	public class MyInputWindow extends TitleWindow
	{
		private var myLabel:Label;
		private var myTextInput:TextInput;
		private var myLayout:VerticalLayout;
		private var group:Group;
		private var groupLayout:TileLayout;
		private var hgroup:HGroup;
		private var ok:Button;
		private var cancle:Button;
		private var okFun:Function;
		
		public function MyInputWindow(title:String, content:Array, okFunction:Function)
		{
			super();
			okFun = okFunction;
			myLayout = new VerticalLayout();
			myLayout.horizontalAlign = "center";
			myLayout.paddingBottom = 10;
			myLayout.paddingTop = 10;
			myLayout.paddingLeft = 10;
			myLayout.paddingRight = 10;
			this.title = title;
			this.layout = myLayout;
			
			group = new Group();
			groupLayout = new TileLayout();
			groupLayout.requestedColumnCount = 2;
			groupLayout.horizontalAlign = HorizontalAlign.CENTER;
			groupLayout.verticalAlign = VerticalAlign.MIDDLE;
			groupLayout.paddingBottom = 15;
			group.layout = groupLayout;
			
			this.addElement(group);
			for each (var item:Object in content)
			{
				myLabel = new Label();
				myLabel.text = item.label+":";
				myTextInput = new TextInput();
				myTextInput.name = item.label;
				myTextInput.text = item.value;
				group.addElement(myLabel);
				group.addElement(myTextInput);
			}
			
			ok = new Button();
			ok.label = "确定";
			ok.addEventListener(MouseEvent.CLICK,onOk);
			
			cancle = new Button();
			cancle.label = "取消";
			cancle.addEventListener(MouseEvent.CLICK,onCancle);
			this.addEventListener(CloseEvent.CLOSE,onCancle);
			
			hgroup = new HGroup();
			hgroup.gap = 30;
			hgroup.addElement(ok);
			hgroup.addElement(cancle);
			
			//this.addElement(group);
			this.addElement(hgroup);
			
		}
		
		protected function onCancle(event:Event):void
		{
			// TODO Auto-generated method stub
			PopUpManager.removePopUp(this);
			
		}
		
		protected function onOk(event:MouseEvent):void
		{
			// TODO Auto-generated method stub
			var result:Object = {};
			var tmpText:TextInput;
			for (var i:int = 0; i < group.numChildren; i++)
			{
				tmpText = group.getChildAt(i) as TextInput;
				if (!tmpText) continue;  //get到的对象不一定是textInput，可能是label
				result[tmpText.name] = tmpText.text;
			}
			PopUpManager.removePopUp(this);
			okFun(result);
		}
	}
}