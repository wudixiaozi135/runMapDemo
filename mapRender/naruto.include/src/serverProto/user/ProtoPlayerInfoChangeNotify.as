package serverProto.user {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.user.ProtoTaskSign;
	import serverProto.inc.ProtoPlayerVipLevel;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoPlayerInfoChangeNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const REASON:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoPlayerInfoChangeNotify.reason", "reason", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reason$field:int;

		private var hasField$0:uint = 0;

		public function clearReason():void {
			hasField$0 &= 0xfffffffe;
			reason$field = new int();
		}

		public function get hasReason():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set reason(value:int):void {
			hasField$0 |= 0x1;
			reason$field = value;
		}

		public function get reason():int {
			return reason$field;
		}

		/**
		 *  @private
		 */
		public static const STRENGTH:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.strength", "strength", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var strength$field:uint;

		public function clearStrength():void {
			hasField$0 &= 0xfffffffd;
			strength$field = new uint();
		}

		public function get hasStrength():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set strength(value:uint):void {
			hasField$0 |= 0x2;
			strength$field = value;
		}

		public function get strength():uint {
			return strength$field;
		}

		/**
		 *  @private
		 */
		public static const COMBAT_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.combat_power", "combatPower", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var combat_power$field:uint;

		public function clearCombatPower():void {
			hasField$0 &= 0xfffffffb;
			combat_power$field = new uint();
		}

		public function get hasCombatPower():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set combatPower(value:uint):void {
			hasField$0 |= 0x4;
			combat_power$field = value;
		}

		public function get combatPower():uint {
			return combat_power$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_HP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.max_hp", "maxHp", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_hp$field:uint;

		public function clearMaxHp():void {
			hasField$0 &= 0xfffffff7;
			max_hp$field = new uint();
		}

		public function get hasMaxHp():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set maxHp(value:uint):void {
			hasField$0 |= 0x8;
			max_hp$field = value;
		}

		public function get maxHp():uint {
			return max_hp$field;
		}

		/**
		 *  @private
		 */
		public static const CURRENT_HP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.current_hp", "currentHp", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_hp$field:uint;

		public function clearCurrentHp():void {
			hasField$0 &= 0xffffffef;
			current_hp$field = new uint();
		}

		public function get hasCurrentHp():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set currentHp(value:uint):void {
			hasField$0 |= 0x10;
			current_hp$field = value;
		}

		public function get currentHp():uint {
			return current_hp$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.level", "level", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:uint;

		public function clearLevel():void {
			hasField$0 &= 0xffffffdf;
			level$field = new uint();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set level(value:uint):void {
			hasField$0 |= 0x20;
			level$field = value;
		}

		public function get level():uint {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.money", "money", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var money$field:uint;

		public function clearMoney():void {
			hasField$0 &= 0xffffffbf;
			money$field = new uint();
		}

		public function get hasMoney():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set money(value:uint):void {
			hasField$0 |= 0x40;
			money$field = value;
		}

		public function get money():uint {
			return money$field;
		}

		/**
		 *  @private
		 */
		public static const COUPON:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.coupon", "coupon", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var coupon$field:uint;

		public function clearCoupon():void {
			hasField$0 &= 0xffffff7f;
			coupon$field = new uint();
		}

		public function get hasCoupon():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set coupon(value:uint):void {
			hasField$0 |= 0x80;
			coupon$field = value;
		}

		public function get coupon():uint {
			return coupon$field;
		}

		/**
		 *  @private
		 */
		public static const GOLD_INGOT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.gold_ingot", "goldIngot", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var gold_ingot$field:uint;

		public function clearGoldIngot():void {
			hasField$0 &= 0xfffffeff;
			gold_ingot$field = new uint();
		}

		public function get hasGoldIngot():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set goldIngot(value:uint):void {
			hasField$0 |= 0x100;
			gold_ingot$field = value;
		}

		public function get goldIngot():uint {
			return gold_ingot$field;
		}

		/**
		 *  @private
		 */
		public static const CHAKRA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.chakra", "chakra", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var chakra$field:uint;

		public function clearChakra():void {
			hasField$0 &= 0xfffffdff;
			chakra$field = new uint();
		}

		public function get hasChakra():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set chakra(value:uint):void {
			hasField$0 |= 0x200;
			chakra$field = value;
		}

		public function get chakra():uint {
			return chakra$field;
		}

		/**
		 *  @private
		 */
		public static const EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.exp", "exp", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var exp$field:uint;

		public function clearExp():void {
			hasField$0 &= 0xfffffbff;
			exp$field = new uint();
		}

		public function get hasExp():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set exp(value:uint):void {
			hasField$0 |= 0x400;
			exp$field = value;
		}

		public function get exp():uint {
			return exp$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_STRENGTH:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.max_strength", "maxStrength", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_strength$field:uint;

		public function clearMaxStrength():void {
			hasField$0 &= 0xfffff7ff;
			max_strength$field = new uint();
		}

		public function get hasMaxStrength():Boolean {
			return (hasField$0 & 0x800) != 0;
		}

		public function set maxStrength(value:uint):void {
			hasField$0 |= 0x800;
			max_strength$field = value;
		}

		public function get maxStrength():uint {
			return max_strength$field;
		}

		/**
		 *  @private
		 */
		public static const CAN_REACH_MAX_STRENGTH:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.can_reach_max_strength", "canReachMaxStrength", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var can_reach_max_strength$field:uint;

		public function clearCanReachMaxStrength():void {
			hasField$0 &= 0xffffefff;
			can_reach_max_strength$field = new uint();
		}

		public function get hasCanReachMaxStrength():Boolean {
			return (hasField$0 & 0x1000) != 0;
		}

		public function set canReachMaxStrength(value:uint):void {
			hasField$0 |= 0x1000;
			can_reach_max_strength$field = value;
		}

		public function get canReachMaxStrength():uint {
			return can_reach_max_strength$field;
		}

		/**
		 *  @private
		 */
		public static const BUY_STRENGTH_GOLD:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoPlayerInfoChangeNotify.buy_strength_gold", "buyStrengthGold", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		private var buy_strength_gold$field:int;

		public function clearBuyStrengthGold():void {
			hasField$0 &= 0xffffdfff;
			buy_strength_gold$field = new int();
		}

		public function get hasBuyStrengthGold():Boolean {
			return (hasField$0 & 0x2000) != 0;
		}

		public function set buyStrengthGold(value:int):void {
			hasField$0 |= 0x2000;
			buy_strength_gold$field = value;
		}

		public function get buyStrengthGold():int {
			return buy_strength_gold$field;
		}

		/**
		 *  @private
		 */
		public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.user.ProtoPlayerInfoChangeNotify.vip_level", "vipLevel", (15 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.ProtoPlayerVipLevel);

		private var vip_level$field:int;

		public function clearVipLevel():void {
			hasField$0 &= 0xffffbfff;
			vip_level$field = new int();
		}

		public function get hasVipLevel():Boolean {
			return (hasField$0 & 0x4000) != 0;
		}

		public function set vipLevel(value:int):void {
			hasField$0 |= 0x4000;
			vip_level$field = value;
		}

		public function get vipLevel():int {
			return vip_level$field;
		}

		/**
		 *  @private
		 */
		public static const VIP_EXPIRED_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.vip_expired_time", "vipExpiredTime", (16 << 3) | com.netease.protobuf.WireType.VARINT);

		private var vip_expired_time$field:uint;

		public function clearVipExpiredTime():void {
			hasField$0 &= 0xffff7fff;
			vip_expired_time$field = new uint();
		}

		public function get hasVipExpiredTime():Boolean {
			return (hasField$0 & 0x8000) != 0;
		}

		public function set vipExpiredTime(value:uint):void {
			hasField$0 |= 0x8000;
			vip_expired_time$field = value;
		}

		public function get vipExpiredTime():uint {
			return vip_expired_time$field;
		}

		/**
		 *  @private
		 */
		public static const SHOW_NINJA_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoPlayerInfoChangeNotify.show_ninja_id", "showNinjaId", (17 << 3) | com.netease.protobuf.WireType.VARINT);

		private var show_ninja_id$field:int;

		public function clearShowNinjaId():void {
			hasField$0 &= 0xfffeffff;
			show_ninja_id$field = new int();
		}

		public function get hasShowNinjaId():Boolean {
			return (hasField$0 & 0x10000) != 0;
		}

		public function set showNinjaId(value:int):void {
			hasField$0 |= 0x10000;
			show_ninja_id$field = value;
		}

		public function get showNinjaId():int {
			return show_ninja_id$field;
		}

		/**
		 *  @private
		 */
		public static const TITLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.title_id", "titleId", (18 << 3) | com.netease.protobuf.WireType.VARINT);

		private var title_id$field:uint;

		public function clearTitleId():void {
			hasField$0 &= 0xfffdffff;
			title_id$field = new uint();
		}

		public function get hasTitleId():Boolean {
			return (hasField$0 & 0x20000) != 0;
		}

		public function set titleId(value:uint):void {
			hasField$0 |= 0x20000;
			title_id$field = value;
		}

		public function get titleId():uint {
			return title_id$field;
		}

		/**
		 *  @private
		 */
		public static const TASK_SIGN:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.user.ProtoPlayerInfoChangeNotify.task_sign", "taskSign", (19 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.user.ProtoTaskSign);

		private var task_sign$field:int;

		public function clearTaskSign():void {
			hasField$0 &= 0xfffbffff;
			task_sign$field = new int();
		}

		public function get hasTaskSign():Boolean {
			return (hasField$0 & 0x40000) != 0;
		}

		public function set taskSign(value:int):void {
			hasField$0 |= 0x40000;
			task_sign$field = value;
		}

		public function get taskSign():int {
			return task_sign$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoPlayerInfoChangeNotify.ninja", "ninja", (20 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja$field:int;

		public function clearNinja():void {
			hasField$0 &= 0xfff7ffff;
			ninja$field = new int();
		}

		public function get hasNinja():Boolean {
			return (hasField$0 & 0x80000) != 0;
		}

		public function set ninja(value:int):void {
			hasField$0 |= 0x80000;
			ninja$field = value;
		}

		public function get ninja():int {
			return ninja$field;
		}

		/**
		 *  @private
		 */
		public static const FASHION_NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoPlayerInfoChangeNotify.fashion_ninja", "fashionNinja", (21 << 3) | com.netease.protobuf.WireType.VARINT);

		private var fashion_ninja$field:int;

		public function clearFashionNinja():void {
			hasField$0 &= 0xffefffff;
			fashion_ninja$field = new int();
		}

		public function get hasFashionNinja():Boolean {
			return (hasField$0 & 0x100000) != 0;
		}

		public function set fashionNinja(value:int):void {
			hasField$0 |= 0x100000;
			fashion_ninja$field = value;
		}

		public function get fashionNinja():int {
			return fashion_ninja$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasReason) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, reason$field);
			}
			if (hasStrength) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, strength$field);
			}
			if (hasCombatPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, combat_power$field);
			}
			if (hasMaxHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, max_hp$field);
			}
			if (hasCurrentHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, current_hp$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, level$field);
			}
			if (hasMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, money$field);
			}
			if (hasCoupon) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, coupon$field);
			}
			if (hasGoldIngot) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, gold_ingot$field);
			}
			if (hasChakra) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, chakra$field);
			}
			if (hasExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, exp$field);
			}
			if (hasMaxStrength) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, max_strength$field);
			}
			if (hasCanReachMaxStrength) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, can_reach_max_strength$field);
			}
			if (hasBuyStrengthGold) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, buy_strength_gold$field);
			}
			if (hasVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 15);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, vip_level$field);
			}
			if (hasVipExpiredTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 16);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, vip_expired_time$field);
			}
			if (hasShowNinjaId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 17);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, show_ninja_id$field);
			}
			if (hasTitleId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 18);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, title_id$field);
			}
			if (hasTaskSign) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 19);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, task_sign$field);
			}
			if (hasNinja) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 20);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, ninja$field);
			}
			if (hasFashionNinja) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 21);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, fashion_ninja$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var reason$count:uint = 0;
			var strength$count:uint = 0;
			var combat_power$count:uint = 0;
			var max_hp$count:uint = 0;
			var current_hp$count:uint = 0;
			var level$count:uint = 0;
			var money$count:uint = 0;
			var coupon$count:uint = 0;
			var gold_ingot$count:uint = 0;
			var chakra$count:uint = 0;
			var exp$count:uint = 0;
			var max_strength$count:uint = 0;
			var can_reach_max_strength$count:uint = 0;
			var buy_strength_gold$count:uint = 0;
			var vip_level$count:uint = 0;
			var vip_expired_time$count:uint = 0;
			var show_ninja_id$count:uint = 0;
			var title_id$count:uint = 0;
			var task_sign$count:uint = 0;
			var ninja$count:uint = 0;
			var fashion_ninja$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (reason$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfoChangeNotify.reason cannot be set twice.');
					}
					++reason$count;
					this.reason = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (strength$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfoChangeNotify.strength cannot be set twice.');
					}
					++strength$count;
					this.strength = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (combat_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfoChangeNotify.combatPower cannot be set twice.');
					}
					++combat_power$count;
					this.combatPower = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (max_hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfoChangeNotify.maxHp cannot be set twice.');
					}
					++max_hp$count;
					this.maxHp = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (current_hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfoChangeNotify.currentHp cannot be set twice.');
					}
					++current_hp$count;
					this.currentHp = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfoChangeNotify.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfoChangeNotify.money cannot be set twice.');
					}
					++money$count;
					this.money = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (coupon$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfoChangeNotify.coupon cannot be set twice.');
					}
					++coupon$count;
					this.coupon = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (gold_ingot$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfoChangeNotify.goldIngot cannot be set twice.');
					}
					++gold_ingot$count;
					this.goldIngot = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 10:
					if (chakra$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfoChangeNotify.chakra cannot be set twice.');
					}
					++chakra$count;
					this.chakra = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 11:
					if (exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfoChangeNotify.exp cannot be set twice.');
					}
					++exp$count;
					this.exp = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 12:
					if (max_strength$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfoChangeNotify.maxStrength cannot be set twice.');
					}
					++max_strength$count;
					this.maxStrength = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 13:
					if (can_reach_max_strength$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfoChangeNotify.canReachMaxStrength cannot be set twice.');
					}
					++can_reach_max_strength$count;
					this.canReachMaxStrength = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 14:
					if (buy_strength_gold$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfoChangeNotify.buyStrengthGold cannot be set twice.');
					}
					++buy_strength_gold$count;
					this.buyStrengthGold = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 15:
					if (vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfoChangeNotify.vipLevel cannot be set twice.');
					}
					++vip_level$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 16:
					if (vip_expired_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfoChangeNotify.vipExpiredTime cannot be set twice.');
					}
					++vip_expired_time$count;
					this.vipExpiredTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 17:
					if (show_ninja_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfoChangeNotify.showNinjaId cannot be set twice.');
					}
					++show_ninja_id$count;
					this.showNinjaId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 18:
					if (title_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfoChangeNotify.titleId cannot be set twice.');
					}
					++title_id$count;
					this.titleId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 19:
					if (task_sign$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfoChangeNotify.taskSign cannot be set twice.');
					}
					++task_sign$count;
					this.taskSign = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 20:
					if (ninja$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfoChangeNotify.ninja cannot be set twice.');
					}
					++ninja$count;
					this.ninja = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 21:
					if (fashion_ninja$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfoChangeNotify.fashionNinja cannot be set twice.');
					}
					++fashion_ninja$count;
					this.fashionNinja = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
