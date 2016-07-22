package tx.sce.updateMsg
{
	public class UpdateMsg
	{
		public static const SET_TREE_SOURCE:String = "set_tree_source";
		public static const SHOW_NEW_LIBRARY_VIEW:String = "show_new_library_view";
		public static const SET_PREVIEW_PIC:String = "set_preview_pic";
		
		public static const FILE_DATA_LOADED:String = "file_data_loaded";
		public static const LIBRARY_DATA_READY:String = "Library_data_ready";
		public static const CHECK_DIRTY_FOR_CLOSE_RESULT:String = "check_dirty_for_close_result";
		public static const SAVE_FINISH:String = "save_finish";
		public static const CLOSE_VIEW:String = "close_view";
		public static const SHOW_NEW_EDIT_AREA:String = "show_new_edit_area";
		public static const SHOW_NEW_LAYERS_VIEW:String = "show_new_layers_view";
		
		public static const ADD_PIC_TO_VIEW:String = "add_pic_to_view";
		public static const REMOVE_PIC_FROM_VIEW:String = "remove_pic_from_view";
		
		public static const UPDATE_PIC_POSITION:String = "update_pic_position";
		public static const DRAW_GRID:String = "draw_grid";
		public static const SELECTED_LAYER:String = "selected_layer";
		public static const UPDATE_GRID_VALUE:String = "update_grid_value";
		public static const UPDATE_MOVE_PATH:String = "update_move_path";
		public static const UPDATE_RECT_SIZE:String = "update_rect_size";
		
		public static const UPDATE_SCENE_ITEM_CONFIG:String = "Update_scene_item_config";
		
		public static const EDIT_LIBRARY_ITEM:String = "edit_library_item";
		public static const MOVE_ITEM_TO_NEW_LAYER:String = "move_item_to_new_layer";
		
		public static const SHOW_EXPORT_PROGRESS:String = "show_export_progress";
		public static const SET_EXPORT_PROGRESS:String = "set_export_progress";
		public static const CLOSE_EXPORT_PROGRESS:String = "close_export_progress";
		
		public var type:String;
		public var msgData:Object;
		
		public function UpdateMsg(msgType:String, data:Object = null)
		{
			type = msgType;
			msgData = data;
		}
	}
}