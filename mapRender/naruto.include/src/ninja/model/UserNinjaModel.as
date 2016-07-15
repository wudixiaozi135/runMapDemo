package ninja.model 
{
	import com.tencent.morefun.framework.net.pub;
	import com.tencent.morefun.naruto.model.BaseModel;
	
	import flash.events.Event;
	import flash.utils.Dictionary;
	import flash.utils.describeType;
	
	import RSModel.RSModelNotifier;
	import RSModel.event.RSModelEvent;
	
	import def.ModelDef;
	
	import ninja.event.NinjaModelEvent;
	import ninja.model.data.FormationInfo;
	import ninja.model.data.NinjaArrangeInfo;
	import ninja.model.data.NinjaInfo;
	import ninja.utils.NinjaUtils;
	
	import serverProto.formation.FormationType;
	import serverProto.inc.NinjaSourceType;
	
	/**
	 * 忍者背包数据发生变更时派发
	 */
	[Event(name = "packageChange", type = "ninja.event.NinjaModelEvent")]
	
	/**
	 * 忍者仓库数据发生变更时派发
	 */
	[Event(name = "storageChange", type = "ninja.event.NinjaModelEvent")]
	
	/**
	 * 阵法数据发生变更时派发
	 */
	[Event(name = "formationChange", type = "ninja.event.NinjaModelEvent")]
	
	/**
	 * 用户忍者数据模型
	 * @author larryhou
	 * @createTime 2013/12/27 12:00
	 */
	public class UserNinjaModel extends BaseModel
	{
		private var _stgMap:Dictionary;
		private var _pkgMap:Dictionary;
		
		private var _bag:NinjaListModel;
		private var _storage:NinjaListModel;
		
		private var _formations:Dictionary;
		
		private var _uin:String;
		
		/**
		 * 构造函数
		 * create a [UserNinjaModel] object
		 */
		public function UserNinjaModel(uin:String = null)
		{
			uin ||= Math.random().toFixed(8).substr(2);
			super(ModelDef.NINJA + "#" + uin);
			
			_uin = uin;
			_formations = new Dictionary(false);
			
			initNinjaModel();
		}
		
		/**
		 * 初始化数据模型
		 */
		private function initNinjaModel():void
		{
			var list:Vector.<uint> = new Vector.<uint>();
			
			var key:String;
			var desc:XMLList = describeType(NinjaSourceType).constant;
			for each(var node:XML in desc)
			{
				key = String(node.@name);
				list.push(NinjaSourceType[key]);
			}
			
			_stgMap = new Dictionary(false);
			_pkgMap = new Dictionary(false);
			
			var model:NinjaListModel, type:uint;
			while (list.length)
			{
				type = list.shift();
				
				model = _stgMap[type] = new NinjaListModel(type, uin);
				model.addEventListener(Event.CHANGE, storageChangeHandler);
				
				model = _pkgMap[type] = new NinjaListModel(type, uin);
				model.addEventListener(Event.CHANGE, packageChangeHandler);
			}
			
			_storage = getNinjaStorage(NinjaSourceType.NINJA_SOURCE_TYPE_DEFAULT);
			_bag = getNinjaPackage(NinjaSourceType.NINJA_SOURCE_TYPE_DEFAULT);
		}
		
		/**
		 * 背包忍者排序
		 */
		private function sortRule(n1:NinjaInfo, n2:NinjaInfo):int
		{
			var mask:uint = 1 << sortFormation;
			if ((n1.status & mask) != (n2.status & mask))
			{
				return (n1.status & mask) > (n2.status & mask)? -1 : 1;	// 上阵降序排列
			}
			
			if ( (n1.sequence == 0) || (n2.sequence == 0)) return ((n1.sequence == 0)? -1:1);
			if (n1.level != n2.level) return n1.level > n2.level? -1 : 1;	// 等级降序排列
			if (n1.combat != n2.combat) return n1.combat > n2.combat? -1 : 1; // 战斗力降序排列
			if (n1.id != n2.id) return n1.id > n2.id? 1 : -1;	// id升序排列
			return n1.sequence > n2.sequence? 1 : -1;	// sequence升序排列
		}
		
		/**
		 * 背包忍者变更时处理
		 */
		private var sortFormation:int = FormationType.DEFAULT_FORMATION;
		private function packageChangeHandler(e:Event):void 
		{
			var model:NinjaListModel = e.currentTarget as NinjaListModel;
			sortFormation = NinjaUtils.getFormationType(model.type);
			model.sort(sortRule);
			
			updateFormationFlag(getFormation(NinjaUtils.getFormationType(model.type)), model);
			
			var msg:RSModelEvent;
			if (model.type == NinjaSourceType.NINJA_SOURCE_TYPE_DEFAULT)
			{
				// 广播忍者背包数据变更消息
				msg = new RSModelEvent(RSModelEvent.DEFAULT_NINJA_PACKAGE_CHANGE, model.list);
				RSModelNotifier.dispatchEvent(msg);
			}
			
			var evt:NinjaModelEvent = new NinjaModelEvent(NinjaModelEvent.PACKAGE_CHANGE);
			evt.ninjas = model.list;
			evt.id = model.type;
			dispatchEvent(evt);
			
			// 广播忍者背包数据变更消息
			msg = new RSModelEvent(RSModelEvent.NINJA_PACKAGE_CHANGE, model.list);
			msg.id = model.type;
			RSModelNotifier.dispatchEvent(msg);
			sortFormation = FormationType.DEFAULT_FORMATION;
		}
		
		/**
		 * 处理忍者变更事件
		 */
		private function storageChangeHandler(e:Event):void 
		{
			var model:NinjaListModel = e.currentTarget as NinjaListModel;
			sortFormation = NinjaUtils.getFormationType(model.type);
			model.sort(sortRule);
			
			var msg:RSModelEvent;
			switch(model.type)
			{
				case NinjaSourceType.NINJA_SOURCE_TYPE_DEFAULT:
				{
					// 广播忍者仓库数据变更消息
					msg = new RSModelEvent(RSModelEvent.DEFAULT_NINJA_STORAGE_CHANGE, model.list);
					RSModelNotifier.dispatchEvent(msg);
					break;
				}
			}
			
			var evt:NinjaModelEvent = new NinjaModelEvent(NinjaModelEvent.STORAGE_CHANGE);
			evt.ninjas = model.list;
			evt.id = model.type;
			dispatchEvent(evt);
			
			// 广播忍者仓库数据变更消息
			msg = new RSModelEvent(RSModelEvent.NINJA_STORAGE_CHANGE, model.list);
			msg.id = model.type;
			RSModelNotifier.dispatchEvent(msg);
			sortFormation = FormationType.DEFAULT_FORMATION;
		}
		
		/**
		 * 获取忍者仓库
		 * @param	type	仓库类型 @see serverProto.ninjaSystem.NinjaSourceType
		 */
		public function getNinjaStorage(type:uint):NinjaListModel
		{
			return _stgMap[type] as NinjaListModel;
		}
		
		/**
		 * 获取忍者背包
		 * @param	type	背包类型 @see serverProto.ninjaSystem.NinjaSourceType
		 */
		public function getNinjaPackage(type:uint):NinjaListModel
		{
			return _pkgMap[type] as NinjaListModel;
		}
		
		/**
		 * 根据忍者唯一标记获得忍者信息
		 * @param	sequence	唯一标记
		 */
		public function getNinja(sequence:uint):NinjaInfo
		{
			var ninja:NinjaInfo = _bag.getNinja(sequence);
			if (!ninja) ninja = _storage.getNinja(sequence);
			return ninja;
		}
		
		/**
		 * 根据忍者id获取忍者信息
		 * @param	id	忍者id
		 */
		pub function getNinja(id:uint):NinjaInfo
		{
			var ninja:NinjaInfo = _bag.pub::getNinja(id);
			if (!ninja) ninja = _storage.pub::getNinja(id);
			return ninja;
		}
		
		/**
		 * 更新阵法信息
		 */
		public function updateFormation(formation:FormationInfo):void
		{
			if (!formation) return;
			
			_formations[formation.id] = formation;
			
			var msg:RSModelEvent;
			
			var ninjas:Vector.<NinjaInfo>;
			if (formation.id == FormationType.DEFAULT_FORMATION)
			{
				ninjas = updateFormationFlag(formation, _bag);
				
				// 广播阵法数据变更消息
				msg = new RSModelEvent(RSModelEvent.DEFAULT_FORMATION_CHANGE, formation);
				RSModelNotifier.dispatchEvent(msg);
			}
			else
			{
				updateFormationFlag(formation, getNinjaStorage(NinjaUtils.getNinjaSourceType(formation.id)));
				updateFormationFlag(formation, getNinjaPackage(NinjaUtils.getNinjaSourceType(formation.id)));
			}
			
			var evt:NinjaModelEvent = new NinjaModelEvent(NinjaModelEvent.FORMATION_CHANGE);
			evt.id = formation.id;
			evt.formation = formation;
			evt.ninjas = ninjas;
			dispatchEvent(evt);
			
			// 广播阵法数据变更消息
			msg = new RSModelEvent(RSModelEvent.FORMATION_CHANGE, formation);
			msg.id = formation.id;
			RSModelNotifier.dispatchEvent(msg);
		}
		
		/**
		 *  更新阵法标记
		 */
		private function updateFormationFlag(formation:FormationInfo, model:NinjaListModel):Vector.<NinjaInfo>
		{
			if (!formation || !model) return null;
			
			var ninja:NinjaInfo;
			var mask:uint = 1 << formation.id;
			
			var flags:Dictionary = new Dictionary(false);
			for each(var arrange:NinjaArrangeInfo in formation.arranges)
			{
				flags[arrange.sequence] = true;
			}
			
			for each(ninja in model.list)
			{
				if (flags[ninja.sequence])
				{
					ninja.status |= mask;
				}
				else
				{
					ninja.status &= ~mask;
				}
			}
			
			sortFormation = formation.id;
			model.sort(sortRule);
			sortFormation = FormationType.DEFAULT_FORMATION;
			return model.list;
		}
		
		/**
		 * 获取阵法信息
		 * @param	id	阵法类型 @see serverProto.inc.NinjaSourceType
		 */
		public function getFormation(id:uint):FormationInfo
		{
			return _formations[id] as FormationInfo;
		}
		
		/**
		 * 玩家号码
		 */
		public function get uin():String { return _uin; }
		
		/**
		 * 小队忍者背包
		 */
		public function get bag():NinjaListModel { return _bag; }
		
		/**
		 * 小队忍者仓库
		 */
		public function get storage():NinjaListModel { return _storage; }
		
		/**
		 * 所有忍者：背包忍者+仓库忍者
		 */
		public function get list():Vector.<NinjaInfo> { return _bag.list.concat(_storage.list); }
	}

}