package tx.sce.command
{
	public class Command
	{
		public static const NEW_PROJECT:String = "new_project";
		public static const SAVE_PROJECT:String = "save_project";
		public static const OPEN_PROJECT:String = "open_project";
		public static const CREATE_FROM_FILE:String = "create_from_file";
		public static const CREATE_SCENE_AREA:String = "create_scene_area"; //打开文件的时候，layerController要等Library弄好后才开始create。
		public static const SAVE_AS:String = "save_as";
		public static const CHECK_DIRTY_FOR_CLOSE:String = "check_dirty_for_close";
		public static const CLOSE_PROJECT:String = "close_project";
		public static const EXPORT_SCENE:String = "export_scene";
		
		public static const UNDO:String = "undo";
		public static const REDO:String = "redo";
		
		public static const ADD_FILES_TO_LIBRARY:String = "add_files_to_library";
		public static const NEW_FOLDER:String = "new_folder";
		public static const PREVIEW_PIC:String = "preview_pic";
		public static const DEL_FILES_OR_FOLDERS:String = "del_files_or_folders";
		public static const RENAME_FOLDER:String = "rename_folder";
	    public static const ADD_PIC_TO_SCENE:String = "add_pic_to_scene";
		public static const EDIT_LIBRARY_ITEM:String = "edit_library_item";
		public static const CHANGE_LIBRARY_ITEM_ORDER:String = "change_library_item_order";
		
		public static const SELECT_LAYER:String = "select_layer";
		public static const SET_GRID_VALUE:String = "set_grid_value";
		
		public static const MOVE_PIC:String = "move_pic";
		public static const NPC_TURN_RIGHT:String = "npc_turn_right";
		public static const NPC_TURN_LEFT:String = "npc_turn_left";
		public static const MOVE_PATH_CHANGE:String = "move_path_change";
		public static const REMOVE_SCENE_ITEM:String = "remove_scene_item";
		
		public static const SET_SCENE_ITEM_CONFIG:String = "set_scene_item_config";
		public static const SET_PIC_OBSTACLES:String = "set_pic_obstacles";
		public static const DRAG_DROP_LAYER_ITEM:String = "drag_drop_layer_item";
		
		public var type:String;
		public var commandData:Object;
		public var can_undo:Boolean;
		
		public function Command(cmdType:String, cmdData:Object = null, cmd_can_undo:Boolean = true)
		{
			type = cmdType;
			commandData = cmdData;
			can_undo = cmd_can_undo;
		}
	}
}