package hud.utils
{
    import com.tencent.morefun.framework.apf.core.facade.Facade;
    
    import flash.geom.Rectangle;
    
    import def.PluginDef;
    
    import hud.IHudPlugin;
    
    import serverProto.hud.ProtoHudInfo;
    

    public class HudUtils
    {
        private static var _userIconRect:Rectangle;
		private static var _openedHudTypeList:Array = [];   //已开启的功能列表，元素是int类型，枚举见ProtoHudType
		private static var _unOpenedHudInfoList:Array = [];   //未开启的功能列表，元素是ProtoUnopenedHudInfo
		/**
		 *开启等级 
		 */		
		public  static  var hudProtoTypeToLevel:Object={};

        public static function get plugin():IHudPlugin
        {
            return Facade.getInstance().retrievePlugin(PluginDef.HUD) as IHudPlugin;
        }

        public static function get userIconRect():Rectangle
        {
            return _userIconRect;
        }

        public static function set userIconRect(value:Rectangle):void
        {
            _userIconRect = value;
        }

        public function HudUtils()
        {
            throw new Error(HudUtils + " can not be instantiated.");
        }
		
		public static function addOpenedHudType(type:int):void
		{
			var unOpenedHudInfo:ProtoHudInfo;
			
			if (_openedHudTypeList.indexOf(type) == -1)
			{
				_openedHudTypeList.push(type);
			}
			
			for (var i:int = 0; i < _unOpenedHudInfoList.length; i++)
			{
				unOpenedHudInfo = _unOpenedHudInfoList[i] as ProtoHudInfo;
				if (unOpenedHudInfo && unOpenedHudInfo.type == type)
				{
					_unOpenedHudInfoList.splice(i, 1);
					break;
				}
			}
		}
		
		public static function addUnOpenedHudInfo(type:int, openLevel:int):void
		{
			var hudInfo:ProtoHudInfo;
			
			for each (var tmpHudInfo:ProtoHudInfo in _unOpenedHudInfoList)
			{
				if (tmpHudInfo.type == type) return;
			}
			
			hudInfo = new ProtoHudInfo();
			hudInfo.type = type;
			hudInfo.openLevel = openLevel;
			
			_unOpenedHudInfoList.push(hudInfo);
		}
		
		public static function set openedHudTypeList(list:Array):void
		{
			while (_openedHudTypeList.length > 0) _openedHudTypeList.pop();
			
			if (list)
			{
				for each (var type:int in list)
				{
					addOpenedHudType(type);
				}
			}
		}
		
		public static function set unOpenedHudInfoList(list:Array):void
		{
			while (_unOpenedHudInfoList.length > 0) _unOpenedHudInfoList.pop();
			
			if (list)
			{
				for each (var hudInfo:ProtoHudInfo in list)
				{
					addUnOpenedHudInfo(hudInfo.type, hudInfo.openLevel);
				}
			}
		}
		
		public static function isHudOpened(type:int):Boolean
		{
			return (_openedHudTypeList.indexOf(type) != -1);
		}
		
		public static function hudOpenLevel(type:int):int
		{
			for each (var tmpHudInfo:ProtoHudInfo in _unOpenedHudInfoList)
			{
				if (tmpHudInfo.type == type) return tmpHudInfo.openLevel;
			}
			
			return 0;
		}

       

        public static function isOtherHudOpened(type:int, userLevel:int):Boolean
        {
            return userLevel >= hudProtoTypeToLevel[type];
        }
    }
}