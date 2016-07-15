package majorRole.model
{
	import com.tencent.morefun.naruto.model.BaseModel;
	import com.tencent.morefun.naruto.model.event.ModelEvent;
	
	import def.ModelDef;
	
	/**
	 * 主角天赋数据
	 */
	public class TalentModel extends BaseModel implements ITalentSkillModel
	{
		public static const KEY_IS_RESPONDED:String = "isResponded";
		public static const KEY_INDEX:String = "index";
		public static const KEY_NAMES:String = "names";
		public static const KEY_SPECIAL:String = "special";
		public static const KEY_NORMAL:String = "normal";
		public static const KEY_SKILL:String = "skill";
		public static const KEY_BEAST:String = "beast";
		
		private var _isResponded:Boolean;
		private var _index:int;
		private var _names:Array;
		private var _special:int;
		private var _normal:int;
		private var _skills:Array;
		private var _beast:int;
		
		public function TalentModel()
		{
			super(ModelDef.TALENT);
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
			
			dispModelEvent(ModelEvent.UPDATE, KEY_IS_RESPONDED, old, value);
		}

		
		/**
		 * 当前选择的下标
		 */
		public function get index():int
		{
			return _index;
		}
		public function set index(value:int):void
		{
			var old:int = _index;
			if(old==value)
			{
				return;
			}
			_index = value;
			
			_isResponded && dispModelEvent(ModelEvent.UPDATE,KEY_INDEX,old,value);
		}

		/**
		 * 天赋名称列表
		 */
		public function get names():Array
		{
			return _names;
		}
		public function set names(value:Array):void
		{
			_names = value;
			
			_isResponded && dispModelEvent(ModelEvent.UPDATE,KEY_NAMES,null,value);
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
			
			_isResponded && dispModelEvent(ModelEvent.UPDATE, KEY_SPECIAL, old, value);
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
			
			_isResponded && dispModelEvent(ModelEvent.UPDATE, KEY_NORMAL, old, value);
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
			if(skills == value)
			{
				return;
			}
//			if(skills.length == value.length)
//			{
//				var same:Boolean = false;
//				for(var i:int=0;i<skills.length;i++)
//				{
//					if(skills[i]==value[i])
//					{
//						
//					}
//				}
//				if(same)
//				{
//					return;
//				}
//			}
			_skills = value;
			
			_isResponded && dispModelEvent(ModelEvent.UPDATE, KEY_SKILL, null, value);
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
			_beast = value;
			
			_isResponded && dispModelEvent(ModelEvent.UPDATE, KEY_SKILL, null, value);
		}
		
	}
}