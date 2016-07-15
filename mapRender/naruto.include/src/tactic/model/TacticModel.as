package tactic.model 
{
	import com.tencent.morefun.naruto.model.BaseModel;
	import def.ModelDef;
	import flash.events.Event;
	import flash.utils.describeType;
	import flash.utils.Dictionary;
	import serverProto.inc.NinjaSourceType;
	import tactic.event.TacticModelEvent;
	
	/**
	 * 战法数据发生变更时派发
	 */
	[Event(name = "change", type = "tactic.event.TacticModelEvent")]
	
	/**
	 * 战法数据模型
	 * @author larryhou
	 * @createTime 2015/4/23 10:45
	 */
	public class TacticModel extends BaseModel
	{
		private var _models:Dictionary;
		
		/**
		 * 构造函数
		 * create a [TacticModel] object
		 */
		public function TacticModel() 
		{
			super(ModelDef.TACTIC);
			
			var dict:Dictionary = new Dictionary(false);
			var cfglist:XMLList = describeType(NinjaSourceType).constant;
			for each(var item:XML in cfglist)
			{
				var name:String = item.@name;
				var model:TacticUniqueModel = new TacticUniqueModel(NinjaSourceType[name]);
				model.addEventListener(Event.CHANGE, modelChangeHandler);
				dict[model.type] = model;
			}
			
			_models = dict;
		}
		
		/**
		 * 侦听数据模型数据变更事件
		 */
		private function modelChangeHandler(e:Event):void 
		{
			var model:TacticUniqueModel = e.currentTarget as TacticUniqueModel;
			
			var event:TacticModelEvent = new TacticModelEvent(TacticModelEvent.CHANGE, model.type);
			event.model = model;
			
			dispatchEvent(event);
		}
		
		public function updateUniqueTactic():void
		{
			
		}
		
		/**
		 * 获取数据模型
		 * @param	type @see serverProto.inc.NinjaSourceType
		 */
		public function getUniqueModel(type:uint):TacticUniqueModel
		{
			return _models[type] as TacticUniqueModel;
		}
		
		/**
		 * 单例模式
		 */
		private static var _singleton:TacticModel;
		static public function get singleton():TacticModel { return _singleton ||= new TacticModel(); }
	}

}