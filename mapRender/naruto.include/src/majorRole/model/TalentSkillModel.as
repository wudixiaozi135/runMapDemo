package majorRole.model
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	import majorRole.commands.RequestRefreshTalentSkillCommand;
	
	[Event(name="change", type="flash.events.Event")]
	public class TalentSkillModel extends EventDispatcher implements ITalentSkillModel
	{
		private var _type:int;
		private var _isResponded:Boolean = false;
		private var _special:int;
		private var _normal:int;
		private var _skills:Array;
		private var _beast:int;
		
		public function TalentSkillModel(type:int)
		{
			super();
			this._type = type;
		}
		
		public function get type():int
		{
			return _type;
		}

		/**
		 * 是否有数据
		 */
		public function get isResponded():Boolean
		{
			return _isResponded;
		}
		
		public function set isResponded(value:Boolean):void
		{
			var old:Boolean = _isResponded;
			if(old == value)
			{
				return;
			}
			_isResponded = value;
			
			dispatchChange();
		}
		
		private function dispatchChange():void
		{
			if(isResponded && hasEventListener(Event.CHANGE))
			{
				dispatchEvent(new Event(Event.CHANGE))
			}
		}
		
		/**
		 * 当前奥义技 
		 */
		public function get special():int
		{
			return _special;
		}
		public function set special(value:int):void
		{
			var old:int = _special;
			if(old==value)
			{
				return;
			}
			_special = value;
			
			dispatchChange();
		}
		
		/**
		 * 当前普攻技
		 */
		public function get normal():int
		{
			return _normal;
		}
		public function set normal(value:int):void
		{
			var old:int = _normal;
			if(old==value)
			{
				return;
			}
			_normal = value;
			
			dispatchChange();
		}
		
		/**
		 * 当前技能(除奥义技和普攻技以外的所有技能)
		 */
		public function get skills():Array
		{
			return _skills;
		}
		public function set skills(value:Array):void
		{
			if(_skills == value)
			{
				return;
			}
			if(_skills && _skills.length == value.length)
			{
				var allsame:Boolean = true;
				for(var i:int=0;i<_skills.length;i++)
				{
					if(_skills[i]!=value[i])
					{
						allsame = false;
						break;
					}
				}
				if(allsame)
				{
					return;
				}
			}
			_skills = value;
			
			dispatchChange();
		}
		
		/**
		 * 当前通灵术
		 */
		public function get beast():int
		{
			return _beast;
		}
		public function set beast(value:int):void
		{
			if(_beast == value)
			{
				return;
			}
			_beast = value;
			
			dispatchChange();
		}
		
		
		/**
		 * 请求刷新天赋数据
		 */
		public function requestRefresh():void
		{
			new RequestRefreshTalentSkillCommand(type).call();
		}
	}
}