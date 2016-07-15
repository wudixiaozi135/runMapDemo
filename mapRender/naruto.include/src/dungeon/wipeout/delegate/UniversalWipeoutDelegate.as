package dungeon.wipeout.delegate 
{
	import com.tencent.morefun.naruto.base.interfaces.ISocketServer;
	import dungeon.event.UniversalWipeoutEvent;
	import dungeon.model.UniversalWipeoutModel;
	import dungeon.model.data.UniversalWipeoutInfo;
	import dungeon.wipeout.UniversalWipeoutClock;
	import com.tencent.morefun.naruto.util.padding;
	
	import flash.events.EventDispatcher;
	
	import dungeon.def.UniversalWipeoutStateDef;
	
	/**
	 * 扫荡初始化信息拉取完成后派发
	 */
	[Event(name = "init", type = "dungeon.event.UniversalWipeoutEvent")]
	
	/**
	 * 扫荡开始时派发
	 */
	[Event(name = "start", type = "dungeon.event.UniversalWipeoutEvent")]
	
	/**
	 * 扫荡停止时派发
	 */
	[Event(name = "cancel", type = "dungeon.event.UniversalWipeoutEvent")]
	
	/**
	 * 扫荡进度变更时派发
	 */
	[Event(name = "notify", type = "dungeon.event.UniversalWipeoutEvent")]
	
	/**
	 * 扫荡完成时派发
	 */
	[Event(name = "complete", type = "dungeon.event.UniversalWipeoutEvent")]
	
	/**
	 * 副本扫荡引起挑战次数变更时派发
	 */
	[Event(name = "passCountChange", type = "dungeon.event.DungeonEvent")]
	
	/**
	 * 扫荡代理器
	 * @author larryhou
	 * @createTime 2014/6/24 14:59
	 */
	public class UniversalWipeoutDelegate extends EventDispatcher
	{
		protected var _model:UniversalWipeoutModel;
		protected var _server:ISocketServer;
		
		protected var _clock:UniversalWipeoutClock;
		
		/**
		 * 构造函数
		 * create a [UniversalWipeOutDelegate] object
		 */
		public function UniversalWipeoutDelegate(server:ISocketServer) 
		{
			_model = new UniversalWipeoutModel(type);
			_model.data = new UniversalWipeoutInfo(type);
			
			_server = server;
			
			_clock = new UniversalWipeoutClock();
		}
		
		/**
		 * 拉取扫荡信息
		 */
		public function requestWipeoutInfo():void
		{
			
		}
		
		/**
		 * 开始扫荡
		 */
		public function start(data:Object):void
		{
			
		}
		
		/**
		 * 停止扫荡
		 */
		public function cancel():void
		{
			
		}
		
		/**
		 * 关闭相关窗口
		 */
		public function closeRelatedWindow():void
		{
			
		}
		
		/**
		 * 清空扫荡奖励展示
		 */
		public function clearWipeoutRewards():void
		{
			
		}
		
		/**
		 * 更新扫荡次/关数
		 * @param	count	扫荡次/关数
		 */
		public function validateCountInput(count:uint):Boolean
		{
			return false;
		}
		
		/**
		 * 更新输入数据
		 */
		public function updateCountInput(count:uint):void
		{
			
		}
		
		/**
		 * 推荐输入
		 */
		public function recommendCountInput():uint
		{
			return 0;
		}
		
		/**
		 * 计算扫荡消耗
		 */
		public function caculateWipeoutCost():uint
		{
			return 0;
		}
		
		/**
		 * 计算扫荡所需时间
		 */
		public function caculateWipeoutTime():String
		{
			return "00:00:00";
		}
		
		/**
		 * 格式化时间展示
		 * @param	time	秒
		 */
		public final function formatTimeText(time:uint):String
		{
			var result:String = padding(time % 60);
			
			time = time / 60 >> 0;
			result = padding(time % 60) + ":" + result;
			
			time = time / 60 >> 0;
			result = padding(time) + ":" + result;
			
			return result;
		}
		
		/**
		 * 垃圾回收
		 */
		public function dispose():void
		{
			if (_model)
			{
				_model.dispose();
				_model = null;
			}
			
			_server = null;
			
			if (_clock)
			{
				_clock.data = null;
				_clock = null;
			}
		}
		
		/**
		 * 代理器类型
		 */
		public function get type():int { return 0; }
		
		/**
		 * 扫荡数据模型
		 */
		public function get model():UniversalWipeoutModel { return _model; }
		
		/**
		 * 扫荡状态
		 */
		public function get state():uint { return _model? _model.state : UniversalWipeoutStateDef.WAIT; }
		
		/**
		 * 扫荡时钟
		 */
		public function get clock():UniversalWipeoutClock { return _clock; }
	}

}