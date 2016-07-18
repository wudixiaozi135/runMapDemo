package tx.mme
{

	import com.greensock.TweenLite;
	import tx.mme.datas.ActionData;
	import tx.mme.datas.AssetData;
	import tx.mme.datas.ColorData;
	import tx.mme.datas.ElementData;
	import tx.mme.datas.FlaData;
	import tx.mme.datas.FrameData;
	import tx.mme.datas.LayerData;
	import tx.mme.datas.MmeData;
	import tx.mme.datas.PhantomData;
	import tx.mme.datas.PointElementData;
	import tx.mme.utils.DeleteUtil;
	import tx.mme.utils.registerAlias;
	
	import flash.display.BitmapData;
	import flash.system.ApplicationDomain;
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;

	public class MmeAsset
	{
		{
			registerAlias(MmeData);
			registerAlias(AssetData);
			registerAlias(ActionData);
			registerAlias(LayerData);
			registerAlias(FrameData);
			registerAlias(ElementData);
			registerAlias(PointElementData);
			registerAlias(PhantomData);
			registerAlias(ColorData);
		}
		
		private static const KEY_MME_DATA:String = "mmeData";
		private static const KEY_APP_DOMAIN:String = "appDomain";
		private static const KEY_URL:String = "url";
		public static const KEY_CONFIG:String = "Config";
		public static const KEY_CONFIG_AMF:String = "ConfigAMF";
		private static const KEY_FLA_DATA:String = "flaData";
		private static const KEY_DISPOSE:String = "dispose";
		private static const KEY_DESTROY:String = "destroy";
		
		
		
		public static const mmeAsset:MmeAsset = new MmeAsset();
		public static function createObject(name:String,appDomain:ApplicationDomain):Object
		{
			try{
				var cl:Class = appDomain.getDefinition(name) as Class;
				if(cl)
				{
					var obj:Object = new cl;
					return obj;
				}
			}catch(e:Error){}
			return null;
		}
		public static function hasObject(name:String,appDomain:ApplicationDomain):Boolean
		{
			try{
				var cl:Class = appDomain.getDefinition(name) as Class;
				return cl != null;
			}catch(e:Error){
				
			}
			return false;
		}
		
		
		private var sharedAppDomain:ApplicationDomain;
		private var sharedMmeData:MmeData;
		private var assets:Dictionary;
		private var isDestroy:Boolean;
		
		public function MmeAsset()
		{
		}
		
		public function hasAppDomain(url:String):Boolean
		{
			for each(var obj:Object in assets)
			{
				if(obj.hasOwnProperty(KEY_URL) && obj[KEY_URL] == url)
				{
					return true;
				}
			}
			return false;
		}
		
		public function getAppDomain(url:String):ApplicationDomain
		{
			for each(var obj:Object in assets)
			{
				if(obj.hasOwnProperty(KEY_URL) && obj[KEY_URL] == url)
				{
					return obj[KEY_APP_DOMAIN];
				}
			}
			return null;
		}
		
		public function setSharedAppDomain(appDomain:ApplicationDomain,url:String):void
		{
			sharedAppDomain = appDomain;
			sharedMmeData = getMmeData(appDomain,url);
		}
		
		public function getSharedAppDomain():ApplicationDomain
		{
			return sharedAppDomain;
		}
		
		public function getSharedMmeData():MmeData
		{
			return sharedMmeData;
		}
		
		private function checkAsset(name:String,appDomain:ApplicationDomain):void
		{
			if(!assets)
			{
				assets = new Dictionary();
			}
			if(!assets[appDomain])
			{
				assets[appDomain] = {};
				assets[appDomain][KEY_APP_DOMAIN] = appDomain;
			}
		}
		
		internal function getMmeData(appDomain:ApplicationDomain,url:String):MmeData
		{
			if(isDestroy)
			{
				return null;
			}
			checkAsset(KEY_MME_DATA,appDomain);
			
			var mmeData:MmeData = assets[appDomain][KEY_MME_DATA] as MmeData;
			if(!mmeData)
			{
				var amf:ByteArray = createAMF(appDomain);
				if(amf)
				{
					var obj:* = amf.readObject();
					amf.position = 0;
					mmeData = amf.readObject();
				}else
				{
//					if(url == null || url == "" 
//					|| url.indexOf("assets/scene/map/") != -1 
//					|| url.indexOf("assets/task/tasknpc/") != -1
//					)
//					{
//						
//					}else
//					{
//						throw new Error("警告，这个资源还没有amf格式，需要用新的Mnme编辑器重新生成");
//					}
				}
				if(mmeData == null)
				{
					mmeData = new MmeData();
					var cfg:XML = new XML(createObject(KEY_CONFIG,appDomain));
					mmeData.decode(cfg);
				}
				assets[appDomain][KEY_MME_DATA] = mmeData;
				if(url)
				{
					assets[appDomain][KEY_URL] = url;
				}
			}
			return mmeData;
		}
		
		private function createAMF(appDomain:ApplicationDomain):ByteArray
		{
			var bytes:ByteArray = createObject(KEY_CONFIG_AMF,appDomain) as ByteArray;
			
			if(bytes)
			{
				var amf:ByteArray = new ByteArray();
				amf.writeBytes(bytes);
				amf.position = 0;
				bytes.clear();
				return amf;
			}else
			{
				return null;
			}
		}
		
		public function getFlaData(appDomain:ApplicationDomain):FlaData
		{
			if(isDestroy)
			{
				return null;
			}
			
			checkAsset(KEY_FLA_DATA,appDomain);
			
			var flaData:FlaData = assets[appDomain][KEY_FLA_DATA] as FlaData;
			return flaData;
		}
		
		public function setFlaData(appDomain:ApplicationDomain,flaData:FlaData):void
		{
			if(isDestroy)
			{
				return;
			}
			
			checkAsset(KEY_FLA_DATA,appDomain);
			
			assets[appDomain][KEY_FLA_DATA] = flaData;
		}
		
		public function getSharedAsset(name1:String):BitmapData
		{
			if(!sharedAppDomain || !sharedMmeData)return null;
			
			return getAsset(name1, sharedAppDomain);
			
//			var xmllist:XMLList = sharedMmeData.xml.asset.(hasOwnProperty("@assetName") && @assetName==name1);
//			if(xmllist.length()>0)
//			{
//				var className:String = xmllist[0].@className;
//				return getAsset(className,sharedAppDomain);
//			}
//			return null;
		}
		
		public function getSharedAssetData(assetName:String):AssetData
		{
			for each(var assetData:AssetData in sharedMmeData.assetDatas)
			{
				if(assetData.assetName == assetName)
				{
					return assetData;
				}
			}
			
			return null;
		}
		
		public function getAsset(name:String,appDomain:ApplicationDomain):BitmapData
		{
			if(isDestroy)
			{
				return null;
			}
			checkAsset(name,appDomain);
			if(!assets[appDomain][name])
			{
				assets[appDomain][name] = createObject(name,appDomain);
			}
			return assets[appDomain][name];
		}
		
		public function dispose(duration:int=0):void
		{
			if(assets)
			{
				var rs:Array = duration>0?[]:null;
				for each(var obj:Object in assets)
				{
					if(duration > 0)
					{
						disposeOneAppDomainOjbectDuration(obj,rs);
					}else
					{
						disposeOneAppDomainOjbect(obj);
					}
					DeleteUtil.deleteOjbect(obj);
				}
				DeleteUtil.deleteOjbect(assets);
				if(rs)
				{
					TweenLite.delayedCall(duration/10/1000,disposeDuration,[duration,rs,int(rs.length/10)]);
				}
			}
		}
		
		private function disposeDuration(duration:int,rs:Array,count:int):void
		{
			for(var i:int=0;i<count;i++)
			{
				var value:Object = rs.pop();
				if(value)
				{
					if(value.hasOwnProperty(KEY_DISPOSE))
					{
						value[KEY_DISPOSE]();
					}
					
					if(value.hasOwnProperty(KEY_DESTROY))
					{
						value[KEY_DESTROY]();
					}
				}else
				{
					return;
				}
			}
			if(rs.length>0)
			{
				TweenLite.delayedCall(duration/10/1000,disposeDuration,[duration,rs,count]);
			}
		}
		
		public function disposeAssets(appDomain:ApplicationDomain):void
		{
			for each(var obj:Object in assets)
			{
				if(obj[KEY_APP_DOMAIN] == appDomain)
				{
					disposeOneAppDomainOjbect(obj);
					DeleteUtil.deleteOjbect(obj);
					
					delete assets[obj[KEY_APP_DOMAIN]]
					return;
				}
			}
		}
		
		private function disposeOneAppDomainOjbect(obj:Object):void
		{
			for each(var value:Object in obj)
			{
				if(value.hasOwnProperty(KEY_DISPOSE))
				{
					value[KEY_DISPOSE]();
				}
				
				if(value.hasOwnProperty(KEY_DESTROY))
				{
					value[KEY_DESTROY]();
				}
			}
			DeleteUtil.deleteOjbect(obj);
		}
		
		private function disposeOneAppDomainOjbectDuration(obj:Object,arr:Array):void
		{
			for each(var value:Object in obj)
			{
				var b:Boolean = false;
				if(value.hasOwnProperty(KEY_DISPOSE))
				{
					b = true;
					arr.push(value);
				}
				
				if(b == false && value.hasOwnProperty(KEY_DESTROY))
				{
					arr.push(value);
				}
			}
			DeleteUtil.deleteOjbect(obj);
		}
		
		public function disposeAllAssets(duration:int=0):void
		{
			dispose(duration);
		}
		
//		public function disposeAllAppDomainsByUrl():void
//		{
//			for(var url:String in _appDomains)
//			{
//				delete _appDomains[url];
//			}
//		}
		
		public function destroy():void
		{
			isDestroy = true;
			
			disposeAllAssets();
			assets = null;
			
//			disposeAllAppDomainsByUrl();
//			_appDomains = null;
		}
	}
}