package activity.firstSave 
{
	import bag.data.ItemData;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	/**
	 * ...
	 * @author Devin Lee
	 */
	public class FSModel extends EventDispatcher
	{
		static public const UPDATE_ALL:String = "updateAll";
		static private var _instance:FSModel;
		static public function getInstance():FSModel {
			if (!_instance) {
				_instance = new FSModel;
			}
			return _instance;
		}
				
		/**
		 * //0:不可领取 1:可领取
		 */
		public var awardStatus:int;
		public var awardList:Vector.<ItemData>;
		public function FSModel() 
		{
			
			_instance = this;
		
		}
		
		public function updateAll():void 
		{
			dispatchEvent(new Event(UPDATE_ALL));
			
		}
		
		
		
	}

}