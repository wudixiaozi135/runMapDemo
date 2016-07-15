package crew.executer 
{
	import base.CommandExecuter;
	import crew.data.NinjaPropsInfo;
	import crew.data.NinjaPropsPropertyInfo;
	import crew.data.NinjaPropsUpgradeInfo;
	import crew.model.NinjaPropsModel;
	import def.ModelDef;
	import serverProto.inc.ProtoNaurtoAllPropertyInfo;
	import serverProto.ninjaProps.ProtoNinjaPropsInfo;
	import serverProto.ninjaProps.ProtoNinjaPropsLevelUpInfo;
	
	/**
	 * 忍具解析类
	 * @author larryhou
	 * @createTime 2014/9/10 15:54
	 */
    import com.tencent.morefun.naruto.i18n.I18n;
	public class PropsParsingExecuter extends CommandExecuter
	{
		protected var model:NinjaPropsModel;
		
		/**
		 * 构造函数
		 * create a [PropsParsingExecuter] object
		 */
		public function PropsParsingExecuter(pluginName:String)
		{
			super(pluginName);
			model = plugin.retrieveModel(ModelDef.NINJA_PROPS) as NinjaPropsModel;
		}
		
		/**
		 * 解析忍具列表信息
		 */
		protected function decodeNinjaPropsInfoList(list:Array/*ProtoNinjaPropsInfo*/):Vector.<NinjaPropsInfo>
		{
			var result:Vector.<NinjaPropsInfo> = new Vector.<NinjaPropsInfo>();
			
			var count:uint;
			
			var info:NinjaPropsInfo;
			for each(var data:ProtoNinjaPropsInfo in list)
			{
				//if (data.id <= 0) continue;
				
				info = decodeNinjaPropsInfo(data);
				if (info.index == 0) count++;
				result.push(info);
			}
			
			if (count > 1) throw new Error(I18n.lang("as_include_1451031571_2588"));
			
			return result;
		}
		
		/**
		 * 解析忍具信息
		 */
		protected function decodeNinjaPropsInfo(data:ProtoNinjaPropsInfo):NinjaPropsInfo
		{
			var info:NinjaPropsInfo = new NinjaPropsInfo();
			info.cfg = model.getNinjaPropsCfgInfo(data.id);
			if (!info.cfg)
			{
				throw new Error(I18n.lang("as_include_1451031571_2589_0") + data.id + I18n.lang("as_include_1451031571_2589_1"));
			}
			
			info.id = data.id;
			info.level = data.level;
			info.exp = data.exp;
			info.index = data.index;
			info.using = false;
			info.equipLevel = data.useNeedLevel;
			info.maxLevel = data.maxLevel;
			
			info.levelUpInfo = decodeNinjaPropsUpgradeInfo(data.levelUpInfo);
			info.extraBuff = decodeNinjaPropsPropertyInfo(data.extensionProperty);
			info.upgradeBuff = decodeNinjaPropsPropertyInfo(data.levelUpProperty);
			decodeNinjaPropsPropertyInfo(data.baseProperty, info);
			return info;
		}
		
		/**
		 * 解析忍具升级信息
		 */
		protected function decodeNinjaPropsUpgradeInfo(data:ProtoNinjaPropsLevelUpInfo):NinjaPropsUpgradeInfo
		{
			var info:NinjaPropsUpgradeInfo = new NinjaPropsUpgradeInfo();
			if (!data) return info;
			
			info.exp = data.addExp;
			info.cost = data.needMoney;
			info.ultimate = data.isUltimate;
			info.levelUpExps = Vector.<uint>(data.levelUpExp);
			decodeNinjaPropsPropertyInfo(data.addPropery, info);
			return info;
		}
		
		/**
		 * 解析忍具属性
		 */
		protected function decodeNinjaPropsPropertyInfo(data:ProtoNaurtoAllPropertyInfo, info:NinjaPropsPropertyInfo = null):NinjaPropsPropertyInfo
		{
			info ||= new NinjaPropsPropertyInfo();
			info.keys = new Vector.<String>();
			if (!data) return info;
			
			if (data.hasHpUlimit) 
			{
				info.hp = data.hpUlimit;
				info.keys.push("hp");
			}
			
			if (data.hasBodyAttack)
			{
				info.attack = data.bodyAttack;
				info.keys.push("attack");
			}
			
			if (data.hasBodyDefense)
			{
				info.defense = data.bodyDefense;
				info.keys.push("defense");
			}
			
			if (data.hasNinjaAttack)
			{
				info.ninjutsu = data.ninjaAttack;
				info.keys.push("ninjutsu");
			}
			
			if (data.hasNinjaDefense)
			{
				info.resistance = data.ninjaDefense;
				info.keys.push("resistance");
			}
			
			if (data.hasCritValue)
			{
				info.crit = data.critValue;
				info.keys.push("crit");
			}
			
			if (data.hasCritDamageValue)
			{
				info.damage = data.critDamageValue;
				info.keys.push("damage");
			}
			
			if (data.hasSpeed)
			{
				info.speed = data.speed;
				info.keys.push("speed");
			}
			
			if (data.hasComboValue)
			{
				info.combo = data.comboValue;
				info.keys.push("combo");
			}
			
			if (data.hasControlValue)
			{
				info.control = data.controlValue;
				info.keys.push("control");
			}
			
			if (data.hasBodyPenetrateValue)
			{
				info.penetrationBody = data.bodyPenetrateValue;
				info.keys.push("penetrationBody");
			}
			
			if (data.hasNinjaPenetrateValue)
			{
				info.penetrationNinjutsu = data.ninjaPenetrateValue;
				info.keys.push("penetrationNinjutsu");
			}
			
			if (data.hasDamageReduceValue)
			{
				info.damageReduction = data.damageReduceValue;
				info.keys.push("damageReduction");
			}
			
			if (data.hasHpRestore)
			{
				info.restoration = data.hpRestore;
				info.keys.push("restoration");
			}
			
			if (data.hasFireResist)
			{
				info.resistanceFire = data.fireResist;
				info.keys.push("resistanceFire");
			}
			
			if (data.hasWindResist)
			{
				info.resistanceWind = data.windResist;
				info.keys.push("resistanceWind");
			}
			
			if (data.hasThunderResist)
			{
				info.resistanceThunder = data.thunderResist;
				info.keys.push("resistanceThunder");
			}
			
			if (data.hasEarthResist)
			{
				info.resistanceEarth = data.earthResist;
				info.keys.push("resistanceEarth");
			}
			
			if (data.hasWaterResist)
			{
				info.resistanceWater = data.waterResist;
				info.keys.push("resistanceWater");
			}
			
			return info;
		}		
	}

}