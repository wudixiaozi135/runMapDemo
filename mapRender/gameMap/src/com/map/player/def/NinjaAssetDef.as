package com.map.player.def
{
	import com.tx.loader.FileManager;

	public class NinjaAssetDef
	{
		/**
		 * 忍者资源的数据动作名称，，专门用以记录坐标
		 */
		public static const AVATAR_POS_ACTION_NAME:String = "posData";
		/**
		 * 数据动作里面的头位置的坐标名称，，用以记录头位置的pos名称
		 */
		public static const AVATAR_HEAD_POS_NAME:String = "head";

		public static const HEAD_BIG:String = "head_big";
		public static const HEAD_SMALL:String = "head_small";
		public static const IMAGE:String = "image";
		public static const PROPERTY_ICON:String = "propertyIcon";
		public static const AVATAR:String = "avatar";
		public static const HEAD_WIDE:String = "head_wide";
		public static const NINJA_BIG_IMG:String = "ninja_big_img";
		public static const NINJA_IMG120:String = "ninja_img120";
		public static const LOGIN_FACE_IMG:String = "login_face_img";
		public static const NINJA_ICON:String = "ninja_icon"; // 半身像
		public static const NINJA_PROPERTY:String = "ninja_property";
		static public const ROLE_IDLE:String = "roleIdle";
		public static const PREVIEW:String = "preview";


		public function NinjaAssetDef()
		{

		}

		public static function isMajor(id:int):Boolean
		{
			return MajorNinjaDef.isMajorNinjaId(id);
		}

		public static function getAsset(type:String, id:uint, playerBoo:Boolean = false, faceid:int = 1):String
		{
			if (MajorNinjaDef.isMajorNinjaId(id))
			{
				if (type != AVATAR)
				{
					id = MajorNinjaDef.toBaseMajorId(id);
				}
				playerBoo = true;
			} else
			{
			}

			var url:String;
			if (playerBoo)
			{
				switch (type)
				{
					case ROLE_IDLE:
						url = "assets/role/role_idle/" + id + ".swf";
						break;
					case HEAD_BIG:
						url = "assets/battle/role/head_110_100/" + id + "/" + faceid + ".png";
						break;
					case HEAD_SMALL:
						url = "assets/battle/role/head_45_45/" + id + "/" + faceid + ".png";
						break;
					case IMAGE:
						url = "assets/user/ninja/ninjaImg/" + id + ".swf";
						break;
					case PROPERTY_ICON:
						url = "assets/user/ninja/propertyIcon/" + id + ".png";
						break;
					case AVATAR:
						url = "assets/role/npc/scene/npcres/" + id + "_outdoor.swf";
						break;
					case HEAD_WIDE:
						url = "assets/battle/role/head_176_68/" + id + "/" + faceid + ".png";
						break;
					case LOGIN_FACE_IMG:
						url = "assets/battle/role/head_60_60/" + id + "/" + faceid + ".png";
						break;
					case NINJA_ICON:
						url = "assets/battle/role/avatar/" + id + "/1.png";
						break;
					case NINJA_BIG_IMG:
						url = "assets/user/ninja/ninjaBigImg/" + id + ".png";
						break;
					case NINJA_IMG120:
						url = "assets/user/ninja/ninjaBigImg/H120/" + id + ".png";
						break;
					case PREVIEW:
					{
						url = "assets/bag/ninja/preview/" + id + ".png";
						break;
					}
					default:
						throw new ArgumentError("type is illegal.");
				}
			}
			else
			{
				switch (type)
				{
					case HEAD_BIG:
						url = "assets/battle/role/head_110_100/" + id + ".png";
						break;
					case HEAD_SMALL:
						url = "assets/battle/role/head_45_45/" + id + ".png";
						break;
					case IMAGE:
						url = "assets/user/ninja/ninjaImg/" + id + ".swf";
						break;
					case PROPERTY_ICON:
						url = "assets/user/ninja/propertyIcon/" + id + ".png";
						break;
					case AVATAR:
						url = "assets/role/npc/scene/npcres/" + id + "_outdoor.swf";
						break;
					case HEAD_WIDE:
						url = "assets/battle/role/head_176_68/" + id + ".png";
						break;
					case NINJA_BIG_IMG:
						url = "assets/user/ninja/ninjaBigImg/" + id + ".png";
						break;
					case NINJA_IMG120:
						url = "assets/user/ninja/ninjaBigImg/H120/" + id + ".png";
						break;
					case NINJA_ICON:
						break;
					case NINJA_PROPERTY:
						url = "assets/user/ninja/ninjaPropertyIcon/" + id + ".png";
						break;
					case PREVIEW:
					{
						url = "assets/bag/ninja/preview/" + id + ".png";
						break;
					}
					default:
						throw new ArgumentError("type is illegal.");
				}
			}
			return FileManager.getQualifiedUrl(url);
		}
	}
}