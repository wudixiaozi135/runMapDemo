package hud.data {
    /**
	 * <menuData label="装备" //用于按钮ICON的名字
        skinName="crew1" //皮肤里的属性名 唯一不可重复
        msg=I18n.lang("as_include_1451031571_3238") //描述
        sort="1" //排序 数字越大越靠前
        type="1"//1 右下角 2 右上角 0其他
        visible="true"//是否显示 true or false
        viewIgnoreScene="" // 在哪些地方不显示 MainUIStateDef 里定义的
        conditionProtoHudNotify="1I18n.lang("as_include_1451031571_3243")"表示忽悠这个条件
        conditionProfessions="1I18n.lang("as_include_1451031571_3244")"表示忽悠这个条件
        flyAppear="true"  //开启该功能后是否播放飞行到目标位置的动画 true or false
		 />
	 */
    import com.tencent.morefun.naruto.i18n.I18n;
    public class MenuItemData {
        public var menuId:int=0;
		/**
		 * 1是menu,2是topmenu
		 */
        public var type:int=0; //0是不属于菜单的,
        //public var location:int=0;
		/**
		 * 皮肤名称  skinName
		 */
        public var name:String="";
        public var msg:String="";
		public var label:String="";
		public var sort:int=0;
		public var visible:Boolean = true;
		public var flyAppear:Boolean = true;
		/**
		 *是否可以 伸缩控制   true 被控制 
		 */		
		public var triggerHide:Boolean = false;
		/**
		 *飞到哪里 
		 */		
		public var flyTo:int=0;
		/**
		 * 对应guide/guideconfig.xml里的ID
		 */
		public var guideId:int=-1;
		/**
		 * 哪些场景内不显示  null 表示无限制
		 */
		public var ignoreViewScene:Array=null;
		/**
		 * 协议内，开启的菜单 ，-1表示无限制
		 */
		public var conditionProtoHudNotify:int=-1;//
		/**
		 * 职业限定 -1表示无限定
		 */
		public var conditionProfessions:int=-1;
		/**
		 *是否不显示新功能开启 
		 */		
		public var hideNewOpen:Boolean = false;
		/**
		 *是否在新功能开启时自动点击
		 */		
		public var autoClickAfterNewFunOpen:Boolean = false;
		/**
		 *父节点的menuid 
		 */		
		public var parentId:int = 0;
        
        public function MenuItemData() {
        
        }
    }
}
