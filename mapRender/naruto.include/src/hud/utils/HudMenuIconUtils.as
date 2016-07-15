package hud.utils {
    import flash.display.DisplayObject;
    import flash.geom.Point;
    import flash.utils.Dictionary;
    
    import hud.data.MenuCfgData;
    import hud.data.MenuItemData;
    
    /**
     * HUD插件对外访问接口
     * @author:Georgehu
     * @since:2014-01-15
     */
    public class HudMenuIconUtils {
        /**
         * menuId  res 的dictionary 类型
         */
        private static var _icons:Dictionary = new Dictionary();
		/**
		 * 用于存放开启了哪些menus
		 */
		private static var m_ids:Object = new Object();
		private static var listeners:Vector.<Function> = new Vector.<Function>;
		/**
		 * 
		 * 已开启的功能 
		 */
		public  static var protoHudNotify:Array = [];
		/**
		 * 当前所在的场景  具体见menusCfg.xml  SceneType.as
		 */
		public  static var sceneType:int=1;
		
		/**
		 * 已开启的副本IDS
		 */
		public  static var dungeon:Array = [];
		
		/**
		 * 已开启的精英副本ids
		 */
		public  static var  elite:Array = [];
		/**
		 * 当前的 经验条 是否显示
		 * true为显示 false隐藏
		 */
		public static var expBarVisible:Boolean = true;
        /**
         * enum  ProtoHudType 菜单 功能 menuid枚举  数据来源于menusCFG.XML 的枚举配置
         * 用于获取某个功能 的ID 、ICON 、position
         */
        public static var HUD_CREW:int = 1;//角色
        public static var HUD_NINJA:int = 2;//忍者
        public static var HUD_EQUIPMENT:int = 3;//强化
        public static var HUD_FRIENDS:int = 4;//好友
        public static var HUD_GUILD:int = 5;//公会
        public static var HUD_BASE:int = 6;//基地
        public static var HUD_ELITE:int = 7;//精英
        public static var HUD_SHOP:int = 8;//商城
        public static var HUD_DUNGEON:int = 9;//副本
        public static var HUD_TALENT:int = 10;//
        public static var HUD_EXAM:int = 11;//忍者考试
        public static var HUD_ACTIVITY_TASK:int = 12;//活动
        public static var HUD_BLACK_MARKET:int = 13;//黑市商人
        public static var HUD_CREWUPGRADE:int = 16;//主角晋级
        public static var HUD_TEAM_DUNGEON:int = 17;//组队副本
        public static var HUD_RANKBATTLE:int = 22;//排位赛
        public static var HUD_World_Boss:int = 23;//World Boss
        
        /**
		 * 只有HUD插件 MenuBarUI.as 内才能初始化这个 按钮 displayObject
         * 设置当前 菜单ICONS  即当前用户已开启的功能
         * @param :menus  res 的dictionary 类型
         */
        public static function set icons(menus:Dictionary):void { //value:Array
            if(menus == null)
                return;
            
            //clear();
            _icons = menus;
        }
		/**
		 * 里面存的是menuid 对应的 ICON皮肤
		 */
		public static function get icons():Dictionary{
			return _icons;
		}
		/**
		 * 已经开启的功能 mainuiexecuter.as 里添加
		 */
        public static function addMenuIds(menuIds:int):void{
			m_ids[menuIds] = 0;
			change();
		}
        /**
         * 通过menuId获取图标
         */
        public static function getIcon(menuId:int):DisplayObject {
            return _icons[menuId];
        }
        
        /**
         * 通过menuId获取图标 位置
         */
        public static function getIconPosByMenuId(menuId:int, center:Boolean = false):Point {
            var icon:DisplayObject = getIcon(menuId);
            return getIconPos(icon, center);
        }
        
        /**
         *是否开启了某个功能
         * @param id
         * @return
         *
         */
        public static function has(menuId:int):Boolean {
            return (m_ids[menuId] != undefined) ? true : false;
        }
        
        private static function getIconPos(icon:DisplayObject, center:Boolean = false):Point {
            if(icon == null || icon.parent == null)
                return null;
            
            var point:Point = new Point();
            var globalPoint:Point = icon.parent.localToGlobal(new Point(icon.x, icon.y));
            var iconX:int = globalPoint.x;
            var iconY:int = globalPoint.y;
            
            if(center) {
                point.x = iconX + icon.width / 2;
                point.y = iconY + icon.height / 2;
            } else {
                point.x = iconX;
                point.y = iconY;
            }
            
            return point;
        }
		public static function addChangeListener(listener:Function):void
		{
			if(listeners.indexOf(listener)==-1)
			{
				listeners.push(listener);
			}
		}
		
		public static function removeChangeListener(listener:Function):void
		{
			var index:int = listeners.indexOf(listener);
			if(index != -1)
			{
				listeners.splice(index,1);
			}
		}
		private static function change():void
		{
			for each(var listener:Function in listeners)
			{
				listener();
			}
		}
		
        private static function clear():void {
            for(var key:Object in _icons)
                delete _icons[key];
        }
        
        
        
        public function HudMenuIconUtils() {
            throw new Error(HudMenuIconUtils + " can not be instantiated.");
        }
		
		public static function getIconsByType(type:int):Array
		{
			var result:Array = new Array();
			var tmpMenuData:MenuItemData;
			var tmpIcon:DisplayObject;
			var tmpId:int;
			
			for (var tmpIdStr:String in m_ids)
			{
				tmpId = parseInt(tmpIdStr);
				tmpMenuData = MenuCfgData.getInstance().getMenuItemDataById(tmpId);
				if (tmpMenuData && tmpMenuData.type == type)
				{
					tmpIcon = getIcon(tmpId);
					(tmpIcon) && (result.push(tmpIcon));
				}
			}
			
			return result;
		}
		
		public static function dispatchChangeEvent():void
		{
			change();
		}
    }



}
