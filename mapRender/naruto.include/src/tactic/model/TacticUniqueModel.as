package tactic.model 
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import tactic.model.data.TacticInfo;
	
	/**
	 * 数据模型发生变化时派发
	 */
	[Event(name = "change", type = "flash.events.Event")]
	
	/**
	 * ...
	 * @author larryhou
	 * @createTime 2015/4/23 15:21
	 */
	public class TacticUniqueModel extends EventDispatcher
	{
		private var _type:uint;
		private var _list:Vector.<TacticInfo>;
		
		/**
		 * 构造函数
		 * create a [TacticUniqueModel] object
		 */
		public function TacticUniqueModel(type:uint) 
		{
			_type = type;
		}
		
		/**
		 * 导入战法数据
		 */
		public function replaceTactics(list:Vector.<TacticInfo>):void
		{
			_list = list;
			dispatchEvent(new Event(Event.CHANGE));
		}
		
		/**
		 * 获得战法信息
		 * @param	index 战法索引
		 */
		public function getTacticInfo(index:uint):TacticInfo
		{
			return index < _list.length? _list[index] : null;
		}
		
		/**
		 * 更新战法数据
		 */
		public function updateTacticInfo(tactic:TacticInfo):void
		{
			for (var i:int = 0; i < _list.length; i++)
			{
				if (_list[i].index == tactic.index)
				{
					tactic.selected = _list[i].selected;
					tactic.using = _list[i].using;
					
					_list.splice(i, 1, tactic);
					dispatchEvent(new Event(Event.CHANGE));
					break;
				}
			}
		}
		
		/**
		 * 获取当前正在使用的战法数据
		 */
		public function getCurrentTactic():TacticInfo
		{
			for each(var item:TacticInfo in _list)
			{
				if (item.using) return item;
			}
			
			return null;
		}
		
		/**
		 * 战法类型
		 * @see serverProto.inc.NinjaSourceType
		 */
		public function get type():uint { return _type; }
		
		/**
		 * 战法列表
		 */
		public function get list():Vector.<TacticInfo> { return _list; }
	}
}