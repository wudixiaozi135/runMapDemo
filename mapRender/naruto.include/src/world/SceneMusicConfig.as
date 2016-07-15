package world
{
	import com.tencent.morefun.naruto.sound.data.BgMusicConfig;
	import com.tencent.morefun.naruto.sound.data.BgMusicInfo;
	
	import flash.utils.Dictionary;

	public class SceneMusicConfig
	{
		public static var musicConfig:BgMusicConfig;
		private static var dict:Dictionary;
		
		public function SceneMusicConfig()
		{
		}
		
		public static function init(mapMusicConfig:XML):void
		{
			musicConfig = new BgMusicConfig();
			musicConfig.importConfig(mapMusicConfig);
		}
		
		public static function getDefaultMusicPool(type:int):Vector.<BgMusicInfo>
		{
			return musicConfig.getDefaultMusicPool(type);
		}
		
		public static function getMusicInfo(id:uint):BgMusicInfo
		{
			return musicConfig.getMusicInfo(id);
		}
	}
}