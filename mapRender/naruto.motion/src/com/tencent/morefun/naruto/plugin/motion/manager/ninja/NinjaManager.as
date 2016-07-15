package com.tencent.morefun.naruto.plugin.motion.manager.ninja
{

	import com.tencent.morefun.framework.loader.mission.LoaderMission;
	import com.tencent.morefun.framework.log.logger;
	import com.tencent.morefun.naruto.plugin.motion.data.NinjaBattleCfgInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.ShareEffectDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.view.Effect;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.NinjaEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.res.data.MMEAssetsProvider;
	import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;
	import com.tencent.morefun.naruto.util.CollectionClearUtil;
	
	import flash.display.Loader;
	import flash.events.EventDispatcher;
	import flash.system.ApplicationDomain;
	import flash.utils.Dictionary;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class NinjaManager extends EventDispatcher
	{
		private static var ms_instance:NinjaManager;
		/**
		 * position to Ninja
		 */
		private var ninjaMap:Dictionary = new Dictionary();
		private var domainMap:Dictionary;
		private var defaultDomain:ApplicationDomain;
		private var uiDomain:ApplicationDomain;
		private var requestNinjaList:Array = [];
		
		private var decodingList:Array = [];
		private var decodingCooldown:Boolean;
		
		public function NinjaManager()
		{
			super(null);
		}
		
		public static function get singleton():NinjaManager
		{
			if(ms_instance == null)
			{
				ms_instance = new NinjaManager();
			}
			
			return ms_instance;
		}
		
		public function renderer():void
		{
			var ninja:Ninja;
			
			for each(ninja in ninjaMap)
			{
				ninja.preRender();
			}
			
			for each(ninja in ninjaMap)
			{
				ninja.render();
			}
			
			for each(ninja in ninjaMap)
			{
				ninja.afterRender();
			}
		}
		
		private function init():void
		{
			if(domainMap["plugin.battle.battleUI"] && uiDomain == null)
			{
				uiDomain = (domainMap["plugin.battle.battleUI"] as Loader).contentLoaderInfo.applicationDomain;
			}
			
			if(domainMap["plugin.battle.ninjaDefault"] && defaultDomain == null)
			{
				defaultDomain = (domainMap["plugin.battle.ninjaDefault"] as Loader).contentLoaderInfo.applicationDomain;
			}
		}
		
		public function set resMap(value:Dictionary):void
		{
			domainMap = value;
			
			init();
		}
		
		public function get resMap():Dictionary
		{
			return domainMap;
		}
		
		public function getNinjaMap():Dictionary
		{
			return ninjaMap;
		}
		
		public function getResRequestNinjaList():Array
		{
			return requestNinjaList;
		}
		
		public function resetRequest():void
		{
			requestNinjaList = [];
		}
		
		public function createNinja(data:NinjaInfo, isRealLeft:Boolean, isCallUp:Boolean = false):void
		{
			var callupEffectId:int;
			var exeuntEffectId:int;
			var callupEffect:EffectInfo;
			var exeuntEffect:EffectInfo;
			var event:NinjaEvent;
			var ninja:Ninja;
			var cfg:NinjaBattleCfgInfo;
			var posArr:Array;
			var minX:int;
			var maxX:int;
			var minY:int;
			var maxY:int;
			
			logger.output("createNinja", data.pos);
			
			init();
			
			if(uiDomain == null || defaultDomain == null)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4233"));
				return ;
			}
			
			//填充配置信息
			cfg = NinjaConfig.getNinjaInfoById(data.ninjaId);
			data.isCall = isCallUp;
			setNinjaRes(data, cfg, isRealLeft);
			
			callupEffectId = cfg.cfgInfo.callupType;
			exeuntEffectId = cfg.cfgInfo.callupExeuntType;
			
			callupEffect = EffectConfig.getShareEffectInfoById(cfg.cfgInfo.callupType);
			exeuntEffect = EffectConfig.getShareEffectInfoById(cfg.cfgInfo.callupExeuntType);
			
			data.callupEffect = EffectConfig.getShareEffectInfoById(cfg.cfgInfo.callupType).clone();
			data.exeuntEffect = EffectConfig.getShareEffectInfoById(cfg.cfgInfo.callupExeuntType).clone();
			data.comboEffect = EffectConfig.getShareEffectInfoById(ShareEffectDef.COMBO_EFFECT).clone();
			
			data.buffTransformEffect = EffectConfig.getShareEffectInfoById(ShareEffectDef.BUFF_TRANSFORM_EFFECT).clone();
			
			if(callupEffectId != 0 && callupEffect == null)//TODO : 这里明显有逻辑问题，如果是ＮＵＬＬ，上面就会报错了
			{
				throw new Error(I18n.lang("as_motion_1451031573_4235_0") + callupEffectId + I18n.lang("as_motion_1451031573_4235_1"));
			}
			
			if(exeuntEffectId != 0 && exeuntEffect == null)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4236_0") + exeuntEffectId + I18n.lang("as_motion_1451031573_4236_1"));
			}
			
			if(cfg.resCfgInfo.scene != 0)
			{
				ninjaSceneList.push(cfg.resCfgInfo.scene);
			}
			
			ninja = new Ninja();
			ninja.cfg = cfg;
			ninja.data = data;
			ninja.isRealLeft = isRealLeft;
			ninjaMap[data.pos] = ninja;
			//检查资源是否已经存在
			if(domainMap[data.res] == null)
			{
				ninja.setRoleDomain(defaultDomain, null);
				//				event = new NinjaEvent(NinjaEvent.RES_REQUEST);
				//				event.url = ninjaInfo.res;
				//				dispatchEvent(event);
				
				ninja.playLoading();
				requestNinjaList.push(data.res);
			}
			else
			{
				ninja.setRoleDomain((domainMap[data.res] is LoaderMission)?domainMap[data.res].applicationDomain:domainMap[data.res], data.res, true);
			}
			ninja.shadowDomain = (domainMap["plugin.battle.ninjaShadow"] as Loader).contentLoaderInfo.applicationDomain;
		}
		
		public function setNinjaRes(data:NinjaInfo, cfg:NinjaBattleCfgInfo, isLeft:Boolean):void
		{
			if(isLeft == false && cfg.resCfgInfo.mirrorRes)
			{
				data.res = cfg.resCfgInfo.rightRes;
			}
			else
			{
				data.res = cfg.resCfgInfo.leftRes;
			}
		}
		
		public function getNinjaInfoByPos(pos:int):NinjaInfo
		{
			var ninja:Ninja;
			
			ninja = ninjaMap[pos];
			if(ninja != null)
			{
				return ninja.data;
			}
			
			return null;
		}
		
		public function destroy():void
		{
			var list:Array;
			var ninja:Ninja;
			
			list = [];
			for each(ninja in ninjaMap)
			{
				list.push(ninja);
			}
			
			for each(ninja in list)
			{
				releaseNinja(ninja.data.pos);
			}
			
			CollectionClearUtil.clearDictionary(ninjaMap);
			CollectionClearUtil.clearList(list);
			
			ninjaSceneList = [];
			ninjaMap = new Dictionary();
			domainMap = new Dictionary();
			
			TimerProvider.removeTimeTask(100, resetDecoding);
		}
		
		public function releaseNinja(pos:int):void
		{
			var ninja:Ninja;
			var ninjaCfg:NinjaBattleCfgInfo;
			
			logger.output("releaseNinja", pos);
			
			ninja = ninjaMap[pos];
			ninjaCfg = ninja.cfg;
			
			if(ninjaCfg.resCfgInfo.scene != 0)
			{
				ninjaSceneList.splice(ninjaSceneList.indexOf(ninjaCfg.resCfgInfo.scene), 1);//TODO 删除会不会有BUG？如果有两个忍者引用到同一个场景
			}
			
			ninja.destroy();
			delete ninjaMap[pos];
		}
		
		public function getNinjaByPos(pos:int):Ninja
		{
			return ninjaMap[pos];
		}
		
		public function getNinjaByArea(pos:int):Ninja
		{
			for each(var ninja:Ninja in ninjaMap)
			{
				if(ninja.data.areaPositions.indexOf(pos) != -1)
				{
					return ninja;
				}
			}
			
			return null;
		}
		
		public function getNinjaByEffect(effect:Effect):Ninja
		{
			for each(var ninja:Ninja in ninjaMap)
			{
				if(ninja.effect == effect)
				{
					return ninja;
				}
			}
			
			return null;
		}
		
		public function onMissionComplete(res:String, domian:ApplicationDomain):void
		{
			TimerProvider.addTimeTask(100, resetDecoding);
			
			for each(var decoInfo:Object in decodingList)
			{
				if(decoInfo.res == res && decoInfo.domian == domian)
				{
					return ;
				}
			}
			
			decodingList.push({res:res, domian:domian});
			setingNextNinjaDomain();
			
			domainMap[res] = domian;
		}
		
		private function resetDecoding():void
		{
			decodingCooldown = false;
			setingNextNinjaDomain();
		}
		
		private function setingNextNinjaDomain():void
		{
			var domianInfo:Object;
			var domain:ApplicationDomain;
			var isDecoded:Boolean;
			
			if(decodingList.length == 0)
			{
				return ;
			}
			
			domianInfo = decodingList[0];
			domain = domianInfo.domain;
			isDecoded = MMEAssetsProvider.asstets.hasAppDomain(domianInfo.res);
			if(decodingCooldown == true && isDecoded == false)
			{
				return ;
			}
			
			
			decodingCooldown = true;
			decodingList.shift();
			if(domianInfo == null)//TODO: 这是断死代码  
			{
				TimerProvider.removeTimeTask(100, resetDecoding);
				return ;
			}
			
			for each(var ninja:Ninja in ninjaMap)
			{
				if(ninja.data.res == domianInfo.res)
				{
					ninja.setRoleDomain(domianInfo.domian, domianInfo.res, true);
				}
			}
			
			if(isDecoded == false)
			{
				setingNextNinjaDomain()
			}
		}
		
		public function onMissionProgress(res:String, bytesTotal:uint, bytesLoaded:uint):void
		{
			var progress:int;
			
			progress = (bytesLoaded / bytesTotal) * 100;
			for each(var ninja:Ninja in ninjaMap)
			{
				if(ninja.data.res == res)
				{
					ninja.resProgress = progress;
				}
			}
		}
		
		private var ninjaSceneList:Array = [];
		public function getBindingNinjaSceneList():Array
		{
			return ninjaSceneList;
		}
		
		public function onMissionError(res:String):void
		{
			
		}
		
		private function traceFun(...arg):void
		{
			
		}
	
															
		public function autoSetNull():void
		{

			ms_instance = null;
			ninjaMap = null;
			domainMap = null;
			defaultDomain = null;
			uiDomain = null;
			requestNinjaList = null;
			decodingList = null;
			ninjaSceneList = null;
		}
	}
}