package  com.map.consDef
{
	import tx.loader.FileManager;
	import tx.mme.MmeAssetEx;

	public class NpcAssetDef
	{
		public static const OUTDOOR:String = "outdoor";
		public static const FUNCTION_ICON:String = "functionIcon";

		public static const MME_ASSET:MmeAssetEx = new MmeAssetEx();

		public static function getAsset(id:int, type:String):String
		{
			var url:String;
			switch (type)
			{
				case OUTDOOR:
					url = "assets/role/npc/scene/npcres/" + id + "_outdoor.swf";
					break;
				case FUNCTION_ICON:
					url = "assets/npc/functionIcon/" + id + ".png";
					break;
			}
			return FileManager.getQualifiedUrl(url);
		}
	}
}