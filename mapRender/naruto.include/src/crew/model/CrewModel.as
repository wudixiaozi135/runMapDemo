package crew.model
{
    import com.tencent.morefun.naruto.model.BaseModel;
    import com.tencent.morefun.naruto.model.event.ModelEvent;
    
    import crew.def.CrewModelKeys;
    
    import def.ModelDef;
    
    import ninja.model.data.NinjaInfo;
    
    public class CrewModel extends BaseModel
    {
        private var _viewId:int;
        private var _selectedNinja:NinjaInfo;
        private var _multiSellActivated:Boolean;
		private var _majorRoleDisabled:Boolean;

        public function CrewModel()
        {
            super(ModelDef.CREW);
        }

        public function destroy():void
        {
        }

        public function get viewId():int
        {
            return _viewId;
        }

        public function set viewId(value:int):void
        {
            if (_viewId == value)
                return;

            _viewId = value;
        }

        public function get selectedNinja():NinjaInfo
        {
            return _selectedNinja;
        }

        public function set selectedNinja(value:NinjaInfo):void
        {
            if (_selectedNinja == value)
                return;

            var oldValue:NinjaInfo = _selectedNinja;
            _selectedNinja = value;

            this.dispModelEvent(ModelEvent.UPDATE, CrewModelKeys.SELECTED_NINJA_CHANGE, oldValue, value);
        }

        public function get multiSellActivated():Boolean
        {
            return _multiSellActivated;
        }

        public function set multiSellActivated(value:Boolean):void
        {
            if(_multiSellActivated == value)
                return;

            var oldValue:Boolean = _multiSellActivated;
            _multiSellActivated = value;

            this.dispModelEvent(ModelEvent.UPDATE, CrewModelKeys.MULTI_SELL_ACTIVATED, oldValue, value);
        }
		
		public function get majorRoleDisabled():Boolean
		{
			return _majorRoleDisabled;
		}
		
		public function set majorRoleDisabled(value:Boolean):void
		{
			if(_majorRoleDisabled == value)
				return;
			
			var oldValue:Boolean = _majorRoleDisabled;
			_majorRoleDisabled = value;
			
			this.dispModelEvent(ModelEvent.UPDATE, CrewModelKeys.MAJOR_ROLE_DISABLED, oldValue, value);
		}
    }
}