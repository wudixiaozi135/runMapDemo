package def
{
	import com.tencent.morefun.framework.loader.FileManager;
	
	import majorRole.def.MajorNinjaDef;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class PlotAssetDef
	{
		public static const TYPE_ACTOR:String = "actor";
		public static const TYPE_ACTOR_ALONE:String = "actorAlone";
		public static const TYPE_ACTOR_HEAD:String = "actorHead";
		public static const TYPE_DIALOG_AVATAR:String = "dialogAvatar";
		public static const TYPE_BUBBLE_AVATAR:String = "bubbleAvatar";
		public static const TYPE_OLDPLOT_AVATAR:String = "oldplotAvatar";
		public function PlotAssetDef()
		{
		}
		
		public static function getAsset(type:String, resId:*, resType:int=0):String
		{
			var url:String;
            var resTypeStr:String = resType < 10 ? ("0" + resType) : String(resType);
			if(MajorNinjaDef.isMajorNinjaId(resId) && type != TYPE_ACTOR && type != TYPE_ACTOR_ALONE)
			{
				resId = MajorNinjaDef.toBaseMajorId(resId);
			}
			switch(type)
			{
				case TYPE_ACTOR:
					url = "assets/role/npc/scene/npcres/" + resId + "_outdoor.swf";
					break;
				case TYPE_ACTOR_ALONE:
					url = "assets/role/npc/scene/npcres/" + resId + "_rpg.swf";
					break;
				case TYPE_ACTOR_HEAD:
					url = "assets/newplot/heads/" + resId + ".swf";
					break;
				case TYPE_DIALOG_AVATAR:
					url = "assets/newplot/dialog/" + resId + "/" + resTypeStr + ".png";
					break;
				case TYPE_BUBBLE_AVATAR:
					url = "assets/newplot/bubble/" + resId + "/" + resTypeStr + ".png";
					break;
				case TYPE_OLDPLOT_AVATAR:
					url = "assets/newplot/dialog/" + resId + ".png";
					break;
				default:
					throw new Error(I18n.lang("as_include_1451031571_2649")+type);
			}

			return FileManager.getQualifiedUrl(url);
		}
	}
}