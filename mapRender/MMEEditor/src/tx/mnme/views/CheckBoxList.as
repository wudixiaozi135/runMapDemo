package tx.mnme.views
{
	import flash.events.Event;
	
	import mx.controls.CheckBox;
	
	import spark.components.BorderContainer;
	import spark.components.Group;
	import spark.components.Scroller;
	import spark.layouts.VerticalLayout;
	
	[Event(name="change", type="flash.events.Event")]
	public class CheckBoxList extends BorderContainer
	{
		private var scroller:Scroller;
		private var scrollerGroup:Group;
		public var selectedItems:Array;
		private var cbs:Vector.<CheckBox>;
		
		
		public function CheckBoxList()
		{
			super();
			
			selectedItems = [];
			cbs = new Vector.<CheckBox>;
			
			scroller = new Scroller();
			scroller.left = 0;
			scroller.top = scroller.right = scroller.bottom = 0;
			scroller.setStyle("horizontalScrollPolicy","off");
			
			scrollerGroup = new Group();
			scrollerGroup.left = scrollerGroup.right = scrollerGroup.top = scrollerGroup.bottom = 0;
			
			var layout:VerticalLayout = new VerticalLayout();
			layout.gap = 0;
			layout.paddingLeft = 5;//layout.paddingRight = layout.paddingTop = layout.paddingBottom = 5;
			scrollerGroup.layout = layout;
			scroller.viewport = scrollerGroup;
			
			addElement(scroller);
			
		}
		
		private function change():void
		{
			dispatchEvent(new Event(Event.CHANGE));
		}
		
		public function removeItems():void
		{
			for each(var cb:CheckBox in cbs)
			{
				cb.data = null;
				cb.removeEventListener(Event.CHANGE,onChange);
				scrollerGroup.removeElement(cb);
			}
			
			cbs.length = 0;
			selectedItems.length = 0;
			change();
		}
		
		public function addItem(obj:Object,selected:Boolean=false):void
		{
			var cb:CheckBox = new CheckBox();
			cb.selected = selected;
			cb.mouseChildren = false;
			cb.label = obj.toString();
			cb.data = obj;
			cb.y = cbs.length * cb.height;
			cb.addEventListener(Event.CHANGE,onChange);
			cbs.push(cb);
			scrollerGroup.addElement(cb);
			if(selected)
			{
				selectedItems.push(obj);
				change();
			}
		}
		
		public function updateSelectedItems():void
		{
			for each(var cb:CheckBox in cbs)
			{
				cb.selected = selectedItems.indexOf(cb.data)!=-1;
			}
		}
		
		protected function onChange(event:Event):void
		{
			var cb:CheckBox = event.currentTarget as CheckBox;
			var sni:int = selectedItems.indexOf(cb.data);
			if(cb.selected)
			{
				selectedItems.push(cb.data);
			}else
			{
				selectedItems.splice(sni,1);
			}
			change();
		}
	}
}