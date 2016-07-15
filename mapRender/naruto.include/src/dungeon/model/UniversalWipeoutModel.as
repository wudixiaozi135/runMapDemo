package dungeon.model 
{
	import dungeon.event.UniversalWipeoutEvent;
	import dungeon.model.data.UniversalWipeoutIncome;
	import dungeon.model.data.UniversalWipeoutInfo;
	
	import flash.events.EventDispatcher;
	import flash.utils.Dictionary;
	
	import dungeon.def.UniversalWipeoutStateDef;
	
	/**
	 * 扫荡奖励变化时派发
	 */
	[Event(name = "incomeChange", type = "dungeon.event.UniversalWipeoutEvent")]
	
	/**
	 * 扫荡信息变更时派发
	 */
	[Event(name = "wipeOutChange", type = "dungeon.event.UniversalWipeoutEvent")]
	
	/**
	 * 扫荡数据模型
	 * @author larryhou
	 * @createTime 2014/6/24 15:10
	 */	
	
    import com.tencent.morefun.naruto.i18n.I18n;
	public class UniversalWipeoutModel extends EventDispatcher
	{
		private var _data:UniversalWipeoutInfo;
		
		private var _incomes:Vector.<UniversalWipeoutIncome>;
		private var _map:Dictionary;
		
		private var _type:uint;
		private var _startOrder:uint;
		
		/**
		 * 构造函数
		 * create a [UniversalWipeOutModel] object
		 */
		public function UniversalWipeoutModel(type:uint) 
		{
			_type = type;
			_startOrder = 1;
		}
		
		/**
		 * 重置扫荡信息
		 */
		public function reset():void
		{
			clearIncomes();
			
			_data = null;
		}
		
		/**
		 * 清楚奖励信息
		 */
		public function clearIncomes():void
		{
			_map = new Dictionary(false);
			_incomes = new Vector.<UniversalWipeoutIncome>();
		}
		
		/**
		 * 更新扫荡收入
		 * @param	list	扫荡收入
		 */
		public function importIncomes(list:Vector.<UniversalWipeoutIncome>, replace:Boolean):void
		{
			if (replace)
			{
				_incomes = new Vector.<UniversalWipeoutIncome>();
				_map = new Dictionary(false);
			}
			
			for each(var income:UniversalWipeoutIncome in list)
			{
				safeImportIncome(income);
			}
			
			validate();
			
			// 按扫荡顺序排序
			_incomes.sort(function(i1:UniversalWipeoutIncome, i2:UniversalWipeoutIncome):int
			{
				return i1.order > i2.order? 1 : -1;
			});
			
			dispatchEvent(new UniversalWipeoutEvent(UniversalWipeoutEvent.INCOME_CHANGE, _incomes));
		}
		
		/**
		 * 开始收集扫荡收益
		 */
		public function startCollectIncome():void
		{
			validate();
		}
		
		/**
		 * 更新扫荡收入
		 * @param	income	扫荡收入
		 */
		public function updateIncome(income:UniversalWipeoutIncome):void
		{
			if (!income.complete) return;
			
			safeImportIncome(income);
			validate();
			
			// 按扫荡顺序排序
			_incomes.sort(function(i1:UniversalWipeoutIncome, i2:UniversalWipeoutIncome):int
			{
				return i1.order > i2.order? 1 : -1;
			});
			
			dispatchEvent(new UniversalWipeoutEvent(UniversalWipeoutEvent.INCOME_CHANGE, _incomes));
		}
		
		/**
		 * 更新扫荡奖励
		 * @param	income	扫荡奖励
		 */
		private function safeImportIncome(income:UniversalWipeoutIncome):void
		{
			if (!_map[income.order])
			{
				_incomes.push(income);
			}
			else
			if (_map[income.order] != income)
			{
				var index:int = _incomes.indexOf(_map[income.order]);
				if (index >= 0)
				{
					_incomes.splice(index, 1, income);
				}
				else
				{
					throw new Error(I18n.lang("as_include_1451031571_3193") + income.order);
				}
			}
			
			_map[income.order] = income;
		}
		
		/**
		 * 获取某次扫荡获得奖励信息
		 * @param	order	扫荡次序
		 */
		public function getIncome(order:uint):UniversalWipeoutIncome
		{
			return _map[order] as UniversalWipeoutIncome;
		}
		
		/**
		 * 校验逻辑
		 */
		private function validate():void
		{
			var income:UniversalWipeoutIncome;
			if (this.state == UniversalWipeoutStateDef.RUNNING)
			{
				if (_data.remainCount > 0)
				{
					if (_data.currentCount == 0)
					{
						income = new UniversalWipeoutIncome(_type);
						income.order = _startOrder;
					}
					else
					{
						var order:uint = _data.currentCount + 1;
						income = getIncome(order) || new UniversalWipeoutIncome(_type);
						income.order = order;
					}
					
					income.complete = false;
					safeImportIncome(income);
				}
			}
			
			if (_incomes && _incomes.length)
			{
				var offset:uint = _incomes[_incomes.length - 1].complete? 1 : 2;
				
				// 只允许最后一个项目弹跳
				for (var i:int = 0; i < _incomes.length - 2; i++)
				{
					if (_incomes[i].animateFlag == 0)
					{
						_incomes[i].animateFlag = 1;
					}
				}
			}
		}
		
		/**
		 * 垃圾回收
		 */
		public function dispose():void
		{
			_map = null;
			
			if (_incomes)
			{
				_incomes.length = 0;
				_incomes = null;
			}
			
			_data = null;
		}
		
		/**
		 * 扫荡信息
		 */
		public function get data():UniversalWipeoutInfo { return _data; }
		public function set data(value:UniversalWipeoutInfo):void
		{
			_data = value;
			dispatchEvent(new UniversalWipeoutEvent(UniversalWipeoutEvent.WIPE_OUT_CHANGE, _data));
		}
		
		/**
		 * 扫荡状态
		 */
		public function get state():uint { return _data? _data.state : UniversalWipeoutStateDef.WAIT; }
		
		/**
		 * 扫荡奖励列表
		 */
		public function get incomes():Vector.<UniversalWipeoutIncome> { return _incomes; }
		
		/**
		 * 数据模型类型
		 */
		public function get type():uint { return _type; }
		
		/**
		 * 起始索引
		 */
		public function get startOrder():uint { return _startOrder; }
		public function set startOrder(value:uint):void 
		{
			_startOrder = value;
		}
	}

}