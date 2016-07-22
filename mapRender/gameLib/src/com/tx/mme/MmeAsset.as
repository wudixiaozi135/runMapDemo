package com.tx.mme
{
	import com.tx.mme.data.ActionData;
	import com.tx.mme.data.AssetData;
	import com.tx.mme.data.ColorData;
	import com.tx.mme.data.ElementData;
	import com.tx.mme.data.FlaData;
	import com.tx.mme.data.FrameData;
	import com.tx.mme.data.LayerData;
	import com.tx.mme.data.MmeData;
	import com.tx.mme.data.MmeElementData;
	import com.tx.mme.data.PointElementData;
	import com.tx.mme.data.SoundData;
	import com.tx.mme.utils.registerAlias;

	import flash.display.BitmapData;
	import flash.system.ApplicationDomain;
	import flash.utils.Dictionary;

	/**
	 * 资源提供者
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class MmeAsset
	{
		registerAlias(MmeData);
		registerAlias(ActionData);
		registerAlias(LayerData);
		registerAlias(FrameData);
		registerAlias(ElementData);
		registerAlias(MmeElementData);
		registerAlias(PointElementData);
		registerAlias(ColorData);
		registerAlias(SoundData);
		registerAlias(AssetData);

		private static const KEY_MME_DATA:String = "mmeData";		//渲染数据
		private static const KEY_APP_DOMAIN:String = "appDomain";	//渲染资源
		private static const KEY_URL:String = "url";				//url
		private static const KEY_FLA_DATA:String = "flaData";		//fla数据
		private static const KEY_DISPOSE:String = "dispose";		//处理 		
		private static const KEY_DESTROY:String = "destroy";		//销毁

		/** 配置    key */
		public static const KEY_CONFIG:String = "Config";
//		public static const KEY_CONFIG_AMF:String = "ConfigAMF";	//废弃

		/** 单例 */
		public static const mmeAsset:MmeAsset = new MmeAsset();

		private var _sharedAppDomain:ApplicationDomain;				//共享的程序域
		private var _sharedMmeData:MmeData;							//共享的资源数据
		private var _assets:Dictionary;								//资源列表
		private var _isDestroy:Boolean;								//是否已经销毁

		/**
		 * 构造函数
		 *
		 */
		public function MmeAsset()
		{

		}

		/**
		 * 资源是否存在
		 * @param url    资源地址
		 * @return        存在=true
		 *
		 */
		public function hasAppDomain(url:String):Boolean
		{
			for each(var obj:Object in _assets)
			{
				if (obj.hasOwnProperty(KEY_URL) && obj[KEY_URL] == url)
				{
					return true;
				}
			}
			return false;
		}

		/**
		 * 获取程序域
		 * @param url    资源地址
		 * @return        程序域
		 *
		 */
		public function getAppDomain(url:String):ApplicationDomain
		{
			for each(var obj:Object in _assets)
			{
				if (obj.hasOwnProperty(KEY_URL) && obj[KEY_URL] == url)
				{
					return obj[KEY_APP_DOMAIN];
				}
			}
			return null;
		}

		/**
		 * 设置共享的资源
		 * @param appDomain    资源
		 * @param url        资源地址
		 *
		 */
		public function setSharedAppDomain(appDomain:ApplicationDomain, url:String):void
		{
			_sharedAppDomain = appDomain;
			_sharedMmeData = this.getMmeData(appDomain, url);
		}

		/**
		 * 获取共享的资源
		 * @return 资源
		 *
		 */
		public function getSharedAppDomain():ApplicationDomain
		{
			return _sharedAppDomain;
		}

		/**
		 * 获取共享的资源数据
		 * @return 资源数据
		 *
		 */
		public function getSharedMmeData():MmeData
		{
			return _sharedMmeData;
		}

		/**
		 * 根据名称保存资源
		 * @param name        资源名称
		 * @param appDomain    资源
		 *
		 */
		private function checkAsset(name:String, appDomain:ApplicationDomain):void
		{
			if (!_assets)
			{
				_assets = new Dictionary();
			}
			if (!_assets[appDomain])
			{
				_assets[appDomain] = {};
				_assets[appDomain][KEY_APP_DOMAIN] = appDomain;
			}
		}

		/**
		 * 获取资源数据
		 * @param appDomain    资源
		 * @param url        资源地址
		 * @return            资源数据
		 *
		 */
		internal function getMmeData(appDomain:ApplicationDomain, url:String):MmeData
		{
			if (_isDestroy)
			{
				return null;
			}
			checkAsset(KEY_MME_DATA, appDomain);

			var mmeData:MmeData = _assets[appDomain][KEY_MME_DATA] as MmeData;
			if (!mmeData)
			{
				mmeData = new MmeData();
				var cfg:XML = new XML(createObject(KEY_CONFIG, appDomain));
				mmeData.decode(cfg);
				_assets[appDomain][KEY_MME_DATA] = mmeData;
				if (url)
				{
					_assets[appDomain][KEY_URL] = url;
				}
			}
			return mmeData;
		}

		/**
		 * 获取fla资源数据
		 * @param appDomain    资源
		 * @return            资源数据
		 *
		 */
		public function getFlaData(appDomain:ApplicationDomain):FlaData
		{
			if (_isDestroy)
			{
				return null;
			}

			checkAsset(KEY_FLA_DATA, appDomain);

			var flaData:FlaData = _assets[appDomain][KEY_FLA_DATA] as FlaData;
			return flaData;
		}

		/**
		 * 设置fla资源数据
		 * @param appDomain    资源
		 * @param flaData    fla资源数据
		 *
		 */
		public function setFlaData(appDomain:ApplicationDomain, flaData:FlaData):void
		{
			if (_isDestroy)
			{
				return;
			}

			checkAsset(KEY_FLA_DATA, appDomain);

			_assets[appDomain][KEY_FLA_DATA] = flaData;
		}

		/**
		 * 获取共享的资源位图
		 * @param name1    名称
		 * @return        BitmapData
		 *
		 */
		public function getSharedAsset(name:String):BitmapData
		{
			if (_sharedAppDomain && _sharedMmeData)
			{
				return this.getAsset(name, _sharedAppDomain);
			}
			return null;
		}

		/**
		 * 获取共享的资源数据
		 * @param assetName    资源名称
		 * @return            资源数据
		 *
		 */
		public function getSharedAssetData(assetName:String):AssetData
		{
			for each(var assetData:AssetData in _sharedMmeData.assetDatas)
			{
				if (assetData.assetName == assetName)
				{
					return assetData;
				}
			}
			return null;
		}

		/**
		 * 获取位图
		 * @param name        资源名称
		 * @param appDomain    资源
		 * @return            位图
		 *
		 */
		public function getAsset(name:String, appDomain:ApplicationDomain):BitmapData
		{
			if (_isDestroy)
			{
				return null;
			}
			checkAsset(name, appDomain);
			if (!_assets[appDomain][name])
			{
				_assets[appDomain][name] = createObject(name, appDomain);
			}
			return _assets[appDomain][name];
		}

//		public function dispose(duration:int=0):void
//		{
//			if(_assets)
//			{
//				var rs:Array = duration>0?[]:null;
//				for each(var obj:Object in _assets)
//				{
//					if(duration > 0)
//					{
//						disposeOneAppDomainOjbectDuration(obj,rs);
//					}else
//					{
//						disposeOneAppDomainOjbect(obj);
//					}
//					DeleteUtil.deleteOjbect(obj);
//				}
//				DeleteUtil.deleteOjbect(_assets);
//				if(rs)
//				{
//					TweenLite.delayedCall(duration/10/1000,disposeDuration,[duration,rs,int(rs.length/10)]);
//				}
//			}
//		}

//		private function disposeDuration(duration:int,rs:Array,count:int):void
//		{
//			for(var i:int=0;i<count;i++)
//			{
//				var value:Object = rs.pop();
//				if(value)
//				{
//					if(value.hasOwnProperty(KEY_DISPOSE))
//					{
//						value[KEY_DISPOSE]();
//					}
//					
//					if(value.hasOwnProperty(KEY_DESTROY))
//					{
//						value[KEY_DESTROY]();
//					}
//				}else
//				{
//					return;
//				}
//			}
//			if(rs.length>0)
//			{
//				TweenLite.delayedCall(duration/10/1000,disposeDuration,[duration,rs,count]);
//			}
//		}

//		public function disposeAssets(appDomain:ApplicationDomain):void
//		{
//			for each(var obj:Object in _assets)
//			{
//				if(obj[KEY_APP_DOMAIN] == appDomain)
//				{
//					disposeOneAppDomainOjbect(obj);
//					DeleteUtil.deleteOjbect(obj);
//					
//					delete _assets[obj[KEY_APP_DOMAIN]]
//					return;
//				}
//			}
//		}

//		private function disposeOneAppDomainOjbect(obj:Object):void
//		{
//			for each(var value:Object in obj)
//			{
//				if(value.hasOwnProperty(KEY_DISPOSE))
//				{
//					value[KEY_DISPOSE]();
//				}
//				
//				if(value.hasOwnProperty(KEY_DESTROY))
//				{
//					value[KEY_DESTROY]();
//				}
//			}
//			DeleteUtil.deleteOjbect(obj);
//		}

//		private function disposeOneAppDomainOjbectDuration(obj:Object,arr:Array):void
//		{
//			for each(var value:Object in obj)
//			{
//				var b:Boolean = false;
//				if(value.hasOwnProperty(KEY_DISPOSE))
//				{
//					b = true;
//					arr.push(value);
//				}
//				
//				if(b == false && value.hasOwnProperty(KEY_DESTROY))
//				{
//					arr.push(value);
//				}
//			}
//			DeleteUtil.deleteOjbect(obj);
//		}

		/**
		 * 删除所有资源
		 * @param duration    延迟时间
		 *
		 */
		public function disposeAllAssets(duration:int = 0):void
		{
//			dispose(duration);
		}

//		public function disposeAllAppDomainsByUrl():void
//		{
//			for(var url:String in _appDomains)
//			{
//				delete _appDomains[url];
//			}
//		}

		/**
		 * 销毁
		 *
		 */
		public function destroy():void
		{
			_isDestroy = true;

			this.disposeAllAssets();
			_assets = null;

//			disposeAllAppDomainsByUrl();
//			_appDomains = null;
		}

		/**
		 * 根据资源名称创建对象
		 * @param name        名称
		 * @param appDomain    资源
		 * @return            new Class()
		 *
		 */
		public static function createObject(name:String, appDomain:ApplicationDomain):Object
		{
			try
			{
				var cl:Class = appDomain.getDefinition(name) as Class;
				if (cl)
				{
					var obj:Object = new cl;
					return obj;
				}
			}
			catch (e:Error)
			{

			}
			return null;
		}

		/**
		 * 检测对象是否存在
		 * @param name        对象名称
		 * @param appDomain    资源
		 * @return            存在=true
		 *
		 */
		public static function hasObject(name:String, appDomain:ApplicationDomain):Boolean
		{
			try
			{
				var cl:Class = appDomain.getDefinition(name) as Class;
				return cl != null;
			}
			catch (e:Error)
			{

			}
			return false;
		}
	}
}