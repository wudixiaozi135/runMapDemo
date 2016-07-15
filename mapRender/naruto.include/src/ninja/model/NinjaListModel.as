package ninja.model 
{
	import com.tencent.morefun.framework.net.pub;
	import com.tencent.morefun.naruto.model.BaseModel;
	
	import def.ModelDef;
	
	import flash.events.Event;
	
	import flash.utils.Dictionary;
	
	import ninja.model.data.NinjaInfo;
	
	use namespace pub;
	
	/**
	 * 忍者列表发生变更时派发
	 */
	[Event(name = "change", type = "flash.events.Event")]
	
	/**
	 * 忍者列表数据模型
	 * @author larryhou
	 * @createTime 2013/12/27 13:33
	 */
    import com.tencent.morefun.naruto.i18n.I18n;
	public class NinjaListModel extends BaseModel
	{
		private var _type:uint;
		private var _uin:String;
		
		private var _list:Vector.<NinjaInfo>;
		
		private var _map:Dictionary;
		private var _sequenceMap:Dictionary;
		
		private var _available:Boolean;
		
		/**
		 * 构造函数
		 * create a [NinjaListModel] object
		 */
		public function NinjaListModel(type:uint, uin:String = null)
		{
			super(ModelDef.NINJA + "#NinjaList#" + uin);
			
			_type = type;
			_uin = uin;
			
			_list = new Vector.<NinjaInfo>();
			
			_sequenceMap = new Dictionary(false);
			_map = new Dictionary(false);
		}
		
		/**
		 * 导入忍者列表
		 */
		public function importNinjas(ninjas:Vector.<NinjaInfo>, replace:Boolean):void
		{
			var info:NinjaInfo;
			
			if (replace)
			{
				while (_list.length)
				{
					info = _list.shift();
					delete _map[info.id];
					delete _sequenceMap[info.id];
				}
			}
			
			var flag:Boolean = false;
			for each(info in ninjas) 
			{
				flag = true;
				updateNinja(info, false);
			}
			
			if (replace || flag)
			{
				dispatchEvent(new Event(Event.CHANGE));
			}
			
			_available = true;
		}
		
		/**
		 * 更新忍者信息
		 * @param	ninja	忍者信息
		 */
		public function updateNinja(ninja:NinjaInfo, flag:Boolean = true):void
		{
			if (!ninja) return;
			
			var info:NinjaInfo = _map[ninja.id];
			
			_sequenceMap[ninja.sequence] = ninja;
			_map[ninja.id] = ninja;
			
			if (!info)
			{
				_list.push(ninja);
			}
			else
			{
				var index:int = _list.indexOf(info);
				if (index >= 0)
				{
					_list.splice(index, 1);
				}
				else
				{
					throw new Error(this + I18n.lang("as_include_1451031572_3365"));
				}
				
				_list.push(ninja);
			}
			
			flag && dispatchEvent(new Event(Event.CHANGE));
		}
		
		/**
		 * 根据忍者阵法状态过滤出忍者列表
		 * @param	status	忍者阵法类型 @see serverProto.inc.NinjaSourceType
		 */
		public function filterNinjaWith(status:Vector.<uint>):Vector.<NinjaInfo>
		{
			var mask:uint = 0;
			for each(var offset:uint in status) mask |= 1 << offset;
			
			var result:Vector.<NinjaInfo> = new Vector.<NinjaInfo>();
			for each(var ninja:NinjaInfo in _list)
			{
				if ((ninja.status & mask) == mask) result.push(ninja);
			}
			
			return result;
		}
		
		/**
		 * 根据忍者唯一标记获取忍者信息
		 * @param	sequence	忍者唯一标记
		 */
		public function getNinja(sequence:uint):NinjaInfo
		{
			return _sequenceMap[sequence] as NinjaInfo;
		}
		
		/**
		 * 根据忍者id获取忍者信息
		 * @param	id	忍者id
		 */
		pub function getNinja(id:uint):NinjaInfo
		{
			return _map[id] as NinjaInfo;
		}
		
		/**
		 * 根据忍者唯一标记移除忍者
		 * @param	sequence	忍者唯一标记
		 */
		public function removeNinja(sequence:uint):NinjaInfo
		{
			var ninja:NinjaInfo = public::getNinja(sequence);
			if (ninja)
			{
				var index:int = _list.indexOf(ninja);
				if (index >= 0)
				{
					_list.splice(index, 1);
				}
				else
				{
					throw new Error(this + I18n.lang("as_include_1451031572_3366"));
				}
				
				delete _sequenceMap[ninja.sequence];
				delete _map[ninja.id];
			}
			
			dispatchEvent(new Event(Event.CHANGE));
			return ninja;
		}
		
		/**
		 * 根据忍者id移除忍者
		 * @param	id	忍者id
		 */
		pub function removeNinja(id:uint):NinjaInfo
		{
			var ninja:NinjaInfo = pub::getNinja(id);
			return ninja? public::removeNinja(ninja.sequence) : null;
		}
		
		/**
		 * 根据排序函数排序
		 * @param	rule	排序函数
		 */
		public function sort(rule:Function):void
		{
			rule && _list.sort(rule);
		}
		
		/**
		 * 列表类型
		 */
		public function get type():uint { return _type; }
		
		/**
		 * 忍者列表
		 */
		public function get list():Vector.<NinjaInfo> { return _list.concat(); }
		
		/**
		 * 忍者数量
		 */
		public function get length():uint { return _list.length; }
		
		/**
		 * 玩家号码
		 */
		public function get uin():String { return _uin; }
		
		/**
		 * 是否包含有效数据
		 */
		public function get available():Boolean { return _available; }
	}

}