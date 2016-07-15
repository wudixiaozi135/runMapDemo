package hud.data {
    import com.tencent.morefun.naruto.util.XString;
    
    /**
     * 菜单的配置数据
     * @author:Georgehu
     * @since:2014-01-07
     * <menuData label="装备" //用于按钮ICON的名字
        skinName="crew1" //皮肤里的属性名 唯一不可重复
        msg=I18n.lang("as_include_1451031571_3229") //描述
        sort="1" //排序 数字越大越靠前
        type="1"//1 右下角 2 右上角 0其他
        visible="true"//是否显示 true or false
        viewIgnoreScene="" // 在哪些地方不显示 MainUIStateDef 里定义的
        conditionProtoHudNotify="1I18n.lang("as_include_1451031571_3234")"表示忽悠这个条件
        conditionProfessions="1I18n.lang("as_include_1451031571_3235")"表示忽悠这个条件
        />
     */
    import com.tencent.morefun.naruto.i18n.I18n;
    public class MenuCfgData {
        /**
         * 菜单的配置数据
         */
        private var m_hashMapMenus:Vector.<MenuItemData> = new Vector.<MenuItemData>();
		/**
		 *场景 widgets 控制 
		 */		
		public var m_sceneTypeCfg:Object = {};
        static private var m_instance:MenuCfgData = null;
        
        public function MenuCfgData() {
        }
        
        static public function getInstance():MenuCfgData {
            if(m_instance == null) {
                m_instance = new MenuCfgData();
                    //m_instance.initData();
            }
            return m_instance;
        }
        
        /**
         * 获取所有菜单的数据
         */
        public function menusCfgData():Vector.<MenuItemData> {
            return m_hashMapMenus;
        }
        
        /**
         * 初始化菜单
         */
        public function initData(menusCfg:XML):void {
            var tmpMenuData:MenuItemData = null;
            var item:XML;
            for(var i:int = 0 ;i< menusCfg.Menus[0].children().length();i++) {
				item = menusCfg.Menus[0].children()[i];
                tmpMenuData = new MenuItemData();
                tmpMenuData.menuId = item.@menuId;
                tmpMenuData.name = item.@skinName;
				tmpMenuData.label = item.@label;
                tmpMenuData.msg = item.@msg;
                tmpMenuData.type = item.@type;
                tmpMenuData.sort = item.@sort;
				tmpMenuData.guideId = item.@guideId;
				tmpMenuData.visible = (item.@visible == "true")?true:false;
                tmpMenuData.ignoreViewScene = splitString(",", item.@ignoreViewScene);
                tmpMenuData.conditionProtoHudNotify = (item.@conditionProtoHudNotify == "" )?-1:item.@conditionProtoHudNotify;
                tmpMenuData.conditionProfessions = (item.@conditionProfessions == "")?-1 :item.@conditionProfessions;
				tmpMenuData.flyAppear = (item.@flyAppear == "true")?true:false;
				tmpMenuData.triggerHide = (item.@triggerHide == "1" )?true:false;
				tmpMenuData.hideNewOpen = (item.@hideNewOpen == "1" )?true:false;
				tmpMenuData.flyTo = (item.@flyTo == "")?0:parseInt(item.@flyTo);
				tmpMenuData.autoClickAfterNewFunOpen = (item.@autoClickAfterNewFunOpen == "true")?true:false;
				tmpMenuData.parentId = (item.@parentId == "")?0:parseInt(item.@parentId); 
				if(tmpMenuData.parentId > 0){
					tmpMenuData.flyTo = tmpMenuData.parentId;
				}
                //tmpMenuData.location = item.@skinName;
                
                m_hashMapMenus.push(tmpMenuData);
            }
            //增加了 主界面内 widgets  的管理
			
			for(i= 0 ;i< menusCfg.SceneType[0].children().length();i++) {
				item = menusCfg.SceneType[0].children()[i];
				//trace(item.@id,item.@name,item.@showWidgets);
				var str:String = item.@showWidgets;
				var arr:Array = (str == "")?[]:str.split(",");
				for(var k:int = 0 ;k<arr.length;k++){
					arr[k] = (int)(arr[k]);
				}
				m_sceneTypeCfg[parseInt(item.@id)] = [String(item.@name),arr];
			}
        }
        
        /**
         * 返回 条件限定 过滤后的 菜单列表
         */
        public function getFilterMenus(protoHudList:Array, professions:int, mainUIStateDef:int,mustHasProtoHub:Boolean = false):Array {
			var menus:Array = new Array();
			for each(var tmpMenuData:MenuItemData in m_hashMapMenus ){
				if(mustHasProtoHub && tmpMenuData.conditionProtoHudNotify == -1){//必须符合协议配置，没有协议配置的过滤掉
					continue;
				}
				else if(!checkConditionProtoHud(tmpMenuData, protoHudList)){
					continue;
				}
				else if(tmpMenuData.conditionProfessions!=-1 &&  tmpMenuData.conditionProfessions !=professions){
					continue;
				}
				else if(mainUIStateDef!=-1000 && tmpMenuData.ignoreViewScene  !=null  &&  inArray(mainUIStateDef , tmpMenuData.ignoreViewScene ) ){
					continue;
				}
				else{
				
					menus.push(tmpMenuData);
				}
			}
	        
			return menus;
        }
        /**
		 *判断是否 符合条件 
		 * @return :Boolean true or false 
		 */
		private function checkConditionProtoHud(tmpMenuData:MenuItemData,protoHudList:Array):Boolean{
			if( tmpMenuData.conditionProtoHudNotify==-1){
				return true;
			}
			else if(protoHudList == null || protoHudList.length == 0){
				return false;
			}
			else{
				for(var i:int = 0 ;i<= protoHudList.length;i++){
					if(protoHudList[i] == tmpMenuData.conditionProtoHudNotify ){
						return true;
					}
				}
				return false;
			}
		}
		/**
		 * 判断是否在数组中
		 * @return true or false
		 */
		private function inArray(key:int,arr:Array):Boolean{
			for(var i:int ;i<arr.length;i++){
				if(int(arr[i]) == key){
					return true;
				}
			}
			return false;
		}
        private function splitString(delim:String, str:String):Array {
            str = XString.trimAll(str);
            
            if(str == "") {
                return null;
            } else {
                return str.split(delim);
            }
        }
		
		public function getMenuItemDataById(menuId:int):MenuItemData
		{
			for each (var menuData:MenuItemData in m_hashMapMenus)
			{
				if (menuData.menuId == menuId)
				{
					return menuData;
				}
			}
			return null;
		}
		public function getMenuItemDataByMenuSkinName(skinName:String):MenuItemData
		{
			for each (var menuData:MenuItemData in m_hashMapMenus)
			{
				if (menuData.name == skinName)
				{
					return menuData;
				}
			}
			return null;
		}
		/**
		 * 通过协议里配置的开启id 获取icon数据
		 */
		public function getMenuItemDataByProtoId(protoid:int):MenuItemData{
			for each (var menuData:MenuItemData in m_hashMapMenus)
			{
				if (menuData.conditionProtoHudNotify == protoid)
				{
					return menuData;
				}
			}
			return null;
		}
    }
}
