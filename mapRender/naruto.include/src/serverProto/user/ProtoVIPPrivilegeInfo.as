package serverProto.user {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoItemInfo;
	import serverProto.inc.ProtoPlayerVipLevel;
	import serverProto.inc.ProtoNaurtoAllPropertyInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoVIPPrivilegeInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.user.ProtoVIPPrivilegeInfo.vip_level", "vipLevel", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.ProtoPlayerVipLevel);

		private var vip_level$field:int;

		private var hasField$0:uint = 0;

		public function clearVipLevel():void {
			hasField$0 &= 0xfffffffe;
			vip_level$field = new int();
		}

		public function get hasVipLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set vipLevel(value:int):void {
			hasField$0 |= 0x1;
			vip_level$field = value;
		}

		public function get vipLevel():int {
			return vip_level$field;
		}

		/**
		 *  @private
		 */
		public static const PRICE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.price", "price", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var price$field:int;

		public function clearPrice():void {
			hasField$0 &= 0xfffffffd;
			price$field = new int();
		}

		public function get hasPrice():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set price(value:int):void {
			hasField$0 |= 0x2;
			price$field = value;
		}

		public function get price():int {
			return price$field;
		}

		/**
		 *  @private
		 */
		public static const DISCOUNT_PRICE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.discount_price", "discountPrice", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var discount_price$field:int;

		public function clearDiscountPrice():void {
			hasField$0 &= 0xfffffffb;
			discount_price$field = new int();
		}

		public function get hasDiscountPrice():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set discountPrice(value:int):void {
			hasField$0 |= 0x4;
			discount_price$field = value;
		}

		public function get discountPrice():int {
			return discount_price$field;
		}

		/**
		 *  @private
		 */
		public static const LAST_DAY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.last_day", "lastDay", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var last_day$field:int;

		public function clearLastDay():void {
			hasField$0 &= 0xfffffff7;
			last_day$field = new int();
		}

		public function get hasLastDay():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set lastDay(value:int):void {
			hasField$0 |= 0x8;
			last_day$field = value;
		}

		public function get lastDay():int {
			return last_day$field;
		}

		/**
		 *  @private
		 */
		public static const AUTO_OFFER_TASK:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.user.ProtoVIPPrivilegeInfo.auto_offer_task", "autoOfferTask", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var auto_offer_task$field:Boolean;

		public function clearAutoOfferTask():void {
			hasField$0 &= 0xffffffef;
			auto_offer_task$field = new Boolean();
		}

		public function get hasAutoOfferTask():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set autoOfferTask(value:Boolean):void {
			hasField$0 |= 0x10;
			auto_offer_task$field = value;
		}

		public function get autoOfferTask():Boolean {
			return auto_offer_task$field;
		}

		/**
		 *  @private
		 */
		public static const AUTO_HUNT_LIFE:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.user.ProtoVIPPrivilegeInfo.auto_hunt_life", "autoHuntLife", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var auto_hunt_life$field:Boolean;

		public function clearAutoHuntLife():void {
			hasField$0 &= 0xffffffdf;
			auto_hunt_life$field = new Boolean();
		}

		public function get hasAutoHuntLife():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set autoHuntLife(value:Boolean):void {
			hasField$0 |= 0x20;
			auto_hunt_life$field = value;
		}

		public function get autoHuntLife():Boolean {
			return auto_hunt_life$field;
		}

		/**
		 *  @private
		 */
		public static const AUTO_SIGN_IN:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.user.ProtoVIPPrivilegeInfo.auto_sign_in", "autoSignIn", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var auto_sign_in$field:Boolean;

		public function clearAutoSignIn():void {
			hasField$0 &= 0xffffffbf;
			auto_sign_in$field = new Boolean();
		}

		public function get hasAutoSignIn():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set autoSignIn(value:Boolean):void {
			hasField$0 |= 0x40;
			auto_sign_in$field = value;
		}

		public function get autoSignIn():Boolean {
			return auto_sign_in$field;
		}

		/**
		 *  @private
		 */
		public static const STRENGTH:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.strength", "strength", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var strength$field:int;

		public function clearStrength():void {
			hasField$0 &= 0xffffff7f;
			strength$field = new int();
		}

		public function get hasStrength():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set strength(value:int):void {
			hasField$0 |= 0x80;
			strength$field = value;
		}

		public function get strength():int {
			return strength$field;
		}

		/**
		 *  @private
		 */
		public static const STRENGTH_BUY_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.strength_buy_num", "strengthBuyNum", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var strength_buy_num$field:int;

		public function clearStrengthBuyNum():void {
			hasField$0 &= 0xfffffeff;
			strength_buy_num$field = new int();
		}

		public function get hasStrengthBuyNum():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set strengthBuyNum(value:int):void {
			hasField$0 |= 0x100;
			strength_buy_num$field = value;
		}

		public function get strengthBuyNum():int {
			return strength_buy_num$field;
		}

		/**
		 *  @private
		 */
		public static const DUNGEON_EXP_PRECENT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.dungeon_exp_precent", "dungeonExpPrecent", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dungeon_exp_precent$field:int;

		public function clearDungeonExpPrecent():void {
			hasField$0 &= 0xfffffdff;
			dungeon_exp_precent$field = new int();
		}

		public function get hasDungeonExpPrecent():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set dungeonExpPrecent(value:int):void {
			hasField$0 |= 0x200;
			dungeon_exp_precent$field = value;
		}

		public function get dungeonExpPrecent():int {
			return dungeon_exp_precent$field;
		}

		/**
		 *  @private
		 */
		public static const ELITE_DUNGEON_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.elite_dungeon_num", "eliteDungeonNum", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var elite_dungeon_num$field:int;

		public function clearEliteDungeonNum():void {
			hasField$0 &= 0xfffffbff;
			elite_dungeon_num$field = new int();
		}

		public function get hasEliteDungeonNum():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set eliteDungeonNum(value:int):void {
			hasField$0 |= 0x400;
			elite_dungeon_num$field = value;
		}

		public function get eliteDungeonNum():int {
			return elite_dungeon_num$field;
		}

		/**
		 *  @private
		 */
		public static const BRINGIN_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.bringin_money", "bringinMoney", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var bringin_money$field:int;

		public function clearBringinMoney():void {
			hasField$0 &= 0xfffff7ff;
			bringin_money$field = new int();
		}

		public function get hasBringinMoney():Boolean {
			return (hasField$0 & 0x800) != 0;
		}

		public function set bringinMoney(value:int):void {
			hasField$0 |= 0x800;
			bringin_money$field = value;
		}

		public function get bringinMoney():int {
			return bringin_money$field;
		}

		/**
		 *  @private
		 */
		public static const EXPEDITION_MONEY_PRECENT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.expedition_money_precent", "expeditionMoneyPrecent", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var expedition_money_precent$field:int;

		public function clearExpeditionMoneyPrecent():void {
			hasField$0 &= 0xffffefff;
			expedition_money_precent$field = new int();
		}

		public function get hasExpeditionMoneyPrecent():Boolean {
			return (hasField$0 & 0x1000) != 0;
		}

		public function set expeditionMoneyPrecent(value:int):void {
			hasField$0 |= 0x1000;
			expedition_money_precent$field = value;
		}

		public function get expeditionMoneyPrecent():int {
			return expedition_money_precent$field;
		}

		/**
		 *  @private
		 */
		public static const RANK_BATTLE_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.rank_battle_num", "rankBattleNum", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rank_battle_num$field:int;

		public function clearRankBattleNum():void {
			hasField$0 &= 0xffffdfff;
			rank_battle_num$field = new int();
		}

		public function get hasRankBattleNum():Boolean {
			return (hasField$0 & 0x2000) != 0;
		}

		public function set rankBattleNum(value:int):void {
			hasField$0 |= 0x2000;
			rank_battle_num$field = value;
		}

		public function get rankBattleNum():int {
			return rank_battle_num$field;
		}

		/**
		 *  @private
		 */
		public static const PATCH_SIGN_IN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.patch_sign_in", "patchSignIn", (15 << 3) | com.netease.protobuf.WireType.VARINT);

		private var patch_sign_in$field:int;

		public function clearPatchSignIn():void {
			hasField$0 &= 0xffffbfff;
			patch_sign_in$field = new int();
		}

		public function get hasPatchSignIn():Boolean {
			return (hasField$0 & 0x4000) != 0;
		}

		public function set patchSignIn(value:int):void {
			hasField$0 |= 0x4000;
			patch_sign_in$field = value;
		}

		public function get patchSignIn():int {
			return patch_sign_in$field;
		}

		/**
		 *  @private
		 */
		public static const DAILY_MONEY_COUPON:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.daily_money_coupon", "dailyMoneyCoupon", (16 << 3) | com.netease.protobuf.WireType.VARINT);

		private var daily_money_coupon$field:int;

		public function clearDailyMoneyCoupon():void {
			hasField$0 &= 0xffff7fff;
			daily_money_coupon$field = new int();
		}

		public function get hasDailyMoneyCoupon():Boolean {
			return (hasField$0 & 0x8000) != 0;
		}

		public function set dailyMoneyCoupon(value:int):void {
			hasField$0 |= 0x8000;
			daily_money_coupon$field = value;
		}

		public function get dailyMoneyCoupon():int {
			return daily_money_coupon$field;
		}

		/**
		 *  @private
		 */
		public static const FIRST_REWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoVIPPrivilegeInfo.first_reward", "firstReward", (17 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var firstReward:Array = [];

		/**
		 *  @private
		 */
		public static const WEEKEND_REWARD:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.user.ProtoVIPPrivilegeInfo.weekend_reward", "weekendReward", (18 << 3) | com.netease.protobuf.WireType.VARINT);

		private var weekend_reward$field:Boolean;

		public function clearWeekendReward():void {
			hasField$0 &= 0xfffeffff;
			weekend_reward$field = new Boolean();
		}

		public function get hasWeekendReward():Boolean {
			return (hasField$0 & 0x10000) != 0;
		}

		public function set weekendReward(value:Boolean):void {
			hasField$0 |= 0x10000;
			weekend_reward$field = value;
		}

		public function get weekendReward():Boolean {
			return weekend_reward$field;
		}

		/**
		 *  @private
		 */
		public static const PROPERTY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoVIPPrivilegeInfo.property", "property", (19 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoNaurtoAllPropertyInfo);

		private var property$field:serverProto.inc.ProtoNaurtoAllPropertyInfo;

		public function clearProperty():void {
			property$field = null;
		}

		public function get hasProperty():Boolean {
			return property$field != null;
		}

		public function set property(value:serverProto.inc.ProtoNaurtoAllPropertyInfo):void {
			property$field = value;
		}

		public function get property():serverProto.inc.ProtoNaurtoAllPropertyInfo {
			return property$field;
		}

		/**
		 *  @private
		 */
		public static const CAN_GET_FIRST_REWARD:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.user.ProtoVIPPrivilegeInfo.can_get_first_reward", "canGetFirstReward", (20 << 3) | com.netease.protobuf.WireType.VARINT);

		private var can_get_first_reward$field:Boolean;

		public function clearCanGetFirstReward():void {
			hasField$0 &= 0xfffdffff;
			can_get_first_reward$field = new Boolean();
		}

		public function get hasCanGetFirstReward():Boolean {
			return (hasField$0 & 0x20000) != 0;
		}

		public function set canGetFirstReward(value:Boolean):void {
			hasField$0 |= 0x20000;
			can_get_first_reward$field = value;
		}

		public function get canGetFirstReward():Boolean {
			return can_get_first_reward$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, vip_level$field);
			}
			if (hasPrice) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, price$field);
			}
			if (hasDiscountPrice) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, discount_price$field);
			}
			if (hasLastDay) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, last_day$field);
			}
			if (hasAutoOfferTask) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, auto_offer_task$field);
			}
			if (hasAutoHuntLife) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, auto_hunt_life$field);
			}
			if (hasAutoSignIn) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, auto_sign_in$field);
			}
			if (hasStrength) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, strength$field);
			}
			if (hasStrengthBuyNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, strength_buy_num$field);
			}
			if (hasDungeonExpPrecent) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, dungeon_exp_precent$field);
			}
			if (hasEliteDungeonNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, elite_dungeon_num$field);
			}
			if (hasBringinMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, bringin_money$field);
			}
			if (hasExpeditionMoneyPrecent) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, expedition_money_precent$field);
			}
			if (hasRankBattleNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, rank_battle_num$field);
			}
			if (hasPatchSignIn) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 15);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, patch_sign_in$field);
			}
			if (hasDailyMoneyCoupon) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 16);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, daily_money_coupon$field);
			}
			for (var firstReward$index:uint = 0; firstReward$index < this.firstReward.length; ++firstReward$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 17);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.firstReward[firstReward$index]);
			}
			if (hasWeekendReward) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 18);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, weekend_reward$field);
			}
			if (hasProperty) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 19);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, property$field);
			}
			if (hasCanGetFirstReward) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 20);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, can_get_first_reward$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var vip_level$count:uint = 0;
			var price$count:uint = 0;
			var discount_price$count:uint = 0;
			var last_day$count:uint = 0;
			var auto_offer_task$count:uint = 0;
			var auto_hunt_life$count:uint = 0;
			var auto_sign_in$count:uint = 0;
			var strength$count:uint = 0;
			var strength_buy_num$count:uint = 0;
			var dungeon_exp_precent$count:uint = 0;
			var elite_dungeon_num$count:uint = 0;
			var bringin_money$count:uint = 0;
			var expedition_money_precent$count:uint = 0;
			var rank_battle_num$count:uint = 0;
			var patch_sign_in$count:uint = 0;
			var daily_money_coupon$count:uint = 0;
			var weekend_reward$count:uint = 0;
			var property$count:uint = 0;
			var can_get_first_reward$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVIPPrivilegeInfo.vipLevel cannot be set twice.');
					}
					++vip_level$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (price$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVIPPrivilegeInfo.price cannot be set twice.');
					}
					++price$count;
					this.price = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (discount_price$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVIPPrivilegeInfo.discountPrice cannot be set twice.');
					}
					++discount_price$count;
					this.discountPrice = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (last_day$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVIPPrivilegeInfo.lastDay cannot be set twice.');
					}
					++last_day$count;
					this.lastDay = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (auto_offer_task$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVIPPrivilegeInfo.autoOfferTask cannot be set twice.');
					}
					++auto_offer_task$count;
					this.autoOfferTask = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 6:
					if (auto_hunt_life$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVIPPrivilegeInfo.autoHuntLife cannot be set twice.');
					}
					++auto_hunt_life$count;
					this.autoHuntLife = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 7:
					if (auto_sign_in$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVIPPrivilegeInfo.autoSignIn cannot be set twice.');
					}
					++auto_sign_in$count;
					this.autoSignIn = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 8:
					if (strength$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVIPPrivilegeInfo.strength cannot be set twice.');
					}
					++strength$count;
					this.strength = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 9:
					if (strength_buy_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVIPPrivilegeInfo.strengthBuyNum cannot be set twice.');
					}
					++strength_buy_num$count;
					this.strengthBuyNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 10:
					if (dungeon_exp_precent$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVIPPrivilegeInfo.dungeonExpPrecent cannot be set twice.');
					}
					++dungeon_exp_precent$count;
					this.dungeonExpPrecent = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 11:
					if (elite_dungeon_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVIPPrivilegeInfo.eliteDungeonNum cannot be set twice.');
					}
					++elite_dungeon_num$count;
					this.eliteDungeonNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 12:
					if (bringin_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVIPPrivilegeInfo.bringinMoney cannot be set twice.');
					}
					++bringin_money$count;
					this.bringinMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 13:
					if (expedition_money_precent$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVIPPrivilegeInfo.expeditionMoneyPrecent cannot be set twice.');
					}
					++expedition_money_precent$count;
					this.expeditionMoneyPrecent = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 14:
					if (rank_battle_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVIPPrivilegeInfo.rankBattleNum cannot be set twice.');
					}
					++rank_battle_num$count;
					this.rankBattleNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 15:
					if (patch_sign_in$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVIPPrivilegeInfo.patchSignIn cannot be set twice.');
					}
					++patch_sign_in$count;
					this.patchSignIn = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 16:
					if (daily_money_coupon$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVIPPrivilegeInfo.dailyMoneyCoupon cannot be set twice.');
					}
					++daily_money_coupon$count;
					this.dailyMoneyCoupon = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 17:
					this.firstReward.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 18:
					if (weekend_reward$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVIPPrivilegeInfo.weekendReward cannot be set twice.');
					}
					++weekend_reward$count;
					this.weekendReward = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 19:
					if (property$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVIPPrivilegeInfo.property cannot be set twice.');
					}
					++property$count;
					this.property = new serverProto.inc.ProtoNaurtoAllPropertyInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.property);
					break;
				case 20:
					if (can_get_first_reward$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVIPPrivilegeInfo.canGetFirstReward cannot be set twice.');
					}
					++can_get_first_reward$count;
					this.canGetFirstReward = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
