package serverProto.basePvp {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.basePvp.ProtoBaseMainInfo;
	import serverProto.basePvp.ProtoBaseMoneyInfo;
	import serverProto.basePvp.ProtoBaseReportInfo;
	import serverProto.basePvp.ProtoBaseRoshanInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBaseInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const UIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseInfo.uin", "uin", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var uin:uint;

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.basePvp.ProtoBaseInfo.name", "name", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var name$field:String;

		public function clearName():void {
			name$field = null;
		}

		public function get hasName():Boolean {
			return name$field != null;
		}

		public function set name(value:String):void {
			name$field = value;
		}

		public function get name():String {
			return name$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.level", "level", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:int;

		private var hasField$0:uint = 0;

		public function clearLevel():void {
			hasField$0 &= 0xfffffffe;
			level$field = new int();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set level(value:int):void {
			hasField$0 |= 0x1;
			level$field = value;
		}

		public function get level():int {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_MAIN_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBaseInfo.base_main_info", "baseMainInfo", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.basePvp.ProtoBaseMainInfo);

		private var base_main_info$field:serverProto.basePvp.ProtoBaseMainInfo;

		public function clearBaseMainInfo():void {
			base_main_info$field = null;
		}

		public function get hasBaseMainInfo():Boolean {
			return base_main_info$field != null;
		}

		public function set baseMainInfo(value:serverProto.basePvp.ProtoBaseMainInfo):void {
			base_main_info$field = value;
		}

		public function get baseMainInfo():serverProto.basePvp.ProtoBaseMainInfo {
			return base_main_info$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_ROSHAN_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBaseInfo.base_roshan_info", "baseRoshanInfo", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.basePvp.ProtoBaseRoshanInfo);

		private var base_roshan_info$field:serverProto.basePvp.ProtoBaseRoshanInfo;

		public function clearBaseRoshanInfo():void {
			base_roshan_info$field = null;
		}

		public function get hasBaseRoshanInfo():Boolean {
			return base_roshan_info$field != null;
		}

		public function set baseRoshanInfo(value:serverProto.basePvp.ProtoBaseRoshanInfo):void {
			base_roshan_info$field = value;
		}

		public function get baseRoshanInfo():serverProto.basePvp.ProtoBaseRoshanInfo {
			return base_roshan_info$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_MONEY_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBaseInfo.base_money_info", "baseMoneyInfo", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.basePvp.ProtoBaseMoneyInfo);

		private var base_money_info$field:serverProto.basePvp.ProtoBaseMoneyInfo;

		public function clearBaseMoneyInfo():void {
			base_money_info$field = null;
		}

		public function get hasBaseMoneyInfo():Boolean {
			return base_money_info$field != null;
		}

		public function set baseMoneyInfo(value:serverProto.basePvp.ProtoBaseMoneyInfo):void {
			base_money_info$field = value;
		}

		public function get baseMoneyInfo():serverProto.basePvp.ProtoBaseMoneyInfo {
			return base_money_info$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_REPORT_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBaseInfo.base_report_info", "baseReportInfo", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.basePvp.ProtoBaseReportInfo);

		private var base_report_info$field:serverProto.basePvp.ProtoBaseReportInfo;

		public function clearBaseReportInfo():void {
			base_report_info$field = null;
		}

		public function get hasBaseReportInfo():Boolean {
			return base_report_info$field != null;
		}

		public function set baseReportInfo(value:serverProto.basePvp.ProtoBaseReportInfo):void {
			base_report_info$field = value;
		}

		public function get baseReportInfo():serverProto.basePvp.ProtoBaseReportInfo {
			return base_report_info$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_FIGHT_POWER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.base_fight_power", "baseFightPower", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_fight_power$field:int;

		public function clearBaseFightPower():void {
			hasField$0 &= 0xfffffffd;
			base_fight_power$field = new int();
		}

		public function get hasBaseFightPower():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set baseFightPower(value:int):void {
			hasField$0 |= 0x2;
			base_fight_power$field = value;
		}

		public function get baseFightPower():int {
			return base_fight_power$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_UPGRADE_CD:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.base_upgrade_cd", "baseUpgradeCd", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_upgrade_cd$field:int;

		public function clearBaseUpgradeCd():void {
			hasField$0 &= 0xfffffffb;
			base_upgrade_cd$field = new int();
		}

		public function get hasBaseUpgradeCd():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set baseUpgradeCd(value:int):void {
			hasField$0 |= 0x4;
			base_upgrade_cd$field = value;
		}

		public function get baseUpgradeCd():int {
			return base_upgrade_cd$field;
		}

		/**
		 *  @private
		 */
		public static const CAN_UPGRADE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.can_upgrade", "canUpgrade", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var can_upgrade$field:int;

		public function clearCanUpgrade():void {
			hasField$0 &= 0xfffffff7;
			can_upgrade$field = new int();
		}

		public function get hasCanUpgrade():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set canUpgrade(value:int):void {
			hasField$0 |= 0x8;
			can_upgrade$field = value;
		}

		public function get canUpgrade():int {
			return can_upgrade$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_SHIELD_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.base_shield_time", "baseShieldTime", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_shield_time$field:int;

		public function clearBaseShieldTime():void {
			hasField$0 &= 0xffffffef;
			base_shield_time$field = new int();
		}

		public function get hasBaseShieldTime():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set baseShieldTime(value:int):void {
			hasField$0 |= 0x10;
			base_shield_time$field = value;
		}

		public function get baseShieldTime():int {
			return base_shield_time$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_ATTACK_TIMES_LEFT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.base_attack_times_left", "baseAttackTimesLeft", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_attack_times_left$field:int;

		public function clearBaseAttackTimesLeft():void {
			hasField$0 &= 0xffffffdf;
			base_attack_times_left$field = new int();
		}

		public function get hasBaseAttackTimesLeft():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set baseAttackTimesLeft(value:int):void {
			hasField$0 |= 0x20;
			base_attack_times_left$field = value;
		}

		public function get baseAttackTimesLeft():int {
			return base_attack_times_left$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_NEXT_ATTACK_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.base_next_attack_time", "baseNextAttackTime", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_next_attack_time$field:int;

		public function clearBaseNextAttackTime():void {
			hasField$0 &= 0xffffffbf;
			base_next_attack_time$field = new int();
		}

		public function get hasBaseNextAttackTime():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set baseNextAttackTime(value:int):void {
			hasField$0 |= 0x40;
			base_next_attack_time$field = value;
		}

		public function get baseNextAttackTime():int {
			return base_next_attack_time$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_MAX_ROB_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.base_max_rob_money", "baseMaxRobMoney", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_max_rob_money$field:int;

		public function clearBaseMaxRobMoney():void {
			hasField$0 &= 0xffffff7f;
			base_max_rob_money$field = new int();
		}

		public function get hasBaseMaxRobMoney():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set baseMaxRobMoney(value:int):void {
			hasField$0 |= 0x80;
			base_max_rob_money$field = value;
		}

		public function get baseMaxRobMoney():int {
			return base_max_rob_money$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_CURRENT_ROB_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.base_current_rob_money", "baseCurrentRobMoney", (15 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_current_rob_money$field:int;

		public function clearBaseCurrentRobMoney():void {
			hasField$0 &= 0xfffffeff;
			base_current_rob_money$field = new int();
		}

		public function get hasBaseCurrentRobMoney():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set baseCurrentRobMoney(value:int):void {
			hasField$0 |= 0x100;
			base_current_rob_money$field = value;
		}

		public function get baseCurrentRobMoney():int {
			return base_current_rob_money$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.ninja_id", "ninjaId", (16 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_id$field:int;

		public function clearNinjaId():void {
			hasField$0 &= 0xfffffdff;
			ninja_id$field = new int();
		}

		public function get hasNinjaId():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set ninjaId(value:int):void {
			hasField$0 |= 0x200;
			ninja_id$field = value;
		}

		public function get ninjaId():int {
			return ninja_id$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_UPGRADE_TOTAL_CD:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.base_upgrade_total_cd", "baseUpgradeTotalCd", (17 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_upgrade_total_cd$field:int;

		public function clearBaseUpgradeTotalCd():void {
			hasField$0 &= 0xfffffbff;
			base_upgrade_total_cd$field = new int();
		}

		public function get hasBaseUpgradeTotalCd():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set baseUpgradeTotalCd(value:int):void {
			hasField$0 |= 0x400;
			base_upgrade_total_cd$field = value;
		}

		public function get baseUpgradeTotalCd():int {
			return base_upgrade_total_cd$field;
		}

		/**
		 *  @private
		 */
		public static const ATTACK_BASE_TIME_REMAINING:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.attack_base_time_remaining", "attackBaseTimeRemaining", (18 << 3) | com.netease.protobuf.WireType.VARINT);

		private var attack_base_time_remaining$field:int;

		public function clearAttackBaseTimeRemaining():void {
			hasField$0 &= 0xfffff7ff;
			attack_base_time_remaining$field = new int();
		}

		public function get hasAttackBaseTimeRemaining():Boolean {
			return (hasField$0 & 0x800) != 0;
		}

		public function set attackBaseTimeRemaining(value:int):void {
			hasField$0 |= 0x800;
			attack_base_time_remaining$field = value;
		}

		public function get attackBaseTimeRemaining():int {
			return attack_base_time_remaining$field;
		}

		/**
		 *  @private
		 */
		public static const MATCH_COST_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.match_cost_money", "matchCostMoney", (19 << 3) | com.netease.protobuf.WireType.VARINT);

		private var match_cost_money$field:int;

		public function clearMatchCostMoney():void {
			hasField$0 &= 0xffffefff;
			match_cost_money$field = new int();
		}

		public function get hasMatchCostMoney():Boolean {
			return (hasField$0 & 0x1000) != 0;
		}

		public function set matchCostMoney(value:int):void {
			hasField$0 |= 0x1000;
			match_cost_money$field = value;
		}

		public function get matchCostMoney():int {
			return match_cost_money$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.uin);
			if (hasName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, name$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, level$field);
			}
			if (hasBaseMainInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, base_main_info$field);
			}
			if (hasBaseRoshanInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, base_roshan_info$field);
			}
			if (hasBaseMoneyInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, base_money_info$field);
			}
			if (hasBaseReportInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, base_report_info$field);
			}
			if (hasBaseFightPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_fight_power$field);
			}
			if (hasBaseUpgradeCd) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_upgrade_cd$field);
			}
			if (hasCanUpgrade) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, can_upgrade$field);
			}
			if (hasBaseShieldTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_shield_time$field);
			}
			if (hasBaseAttackTimesLeft) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_attack_times_left$field);
			}
			if (hasBaseNextAttackTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_next_attack_time$field);
			}
			if (hasBaseMaxRobMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_max_rob_money$field);
			}
			if (hasBaseCurrentRobMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 15);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_current_rob_money$field);
			}
			if (hasNinjaId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 16);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, ninja_id$field);
			}
			if (hasBaseUpgradeTotalCd) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 17);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_upgrade_total_cd$field);
			}
			if (hasAttackBaseTimeRemaining) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 18);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, attack_base_time_remaining$field);
			}
			if (hasMatchCostMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 19);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, match_cost_money$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var uin$count:uint = 0;
			var name$count:uint = 0;
			var level$count:uint = 0;
			var base_main_info$count:uint = 0;
			var base_roshan_info$count:uint = 0;
			var base_money_info$count:uint = 0;
			var base_report_info$count:uint = 0;
			var base_fight_power$count:uint = 0;
			var base_upgrade_cd$count:uint = 0;
			var can_upgrade$count:uint = 0;
			var base_shield_time$count:uint = 0;
			var base_attack_times_left$count:uint = 0;
			var base_next_attack_time$count:uint = 0;
			var base_max_rob_money$count:uint = 0;
			var base_current_rob_money$count:uint = 0;
			var ninja_id$count:uint = 0;
			var base_upgrade_total_cd$count:uint = 0;
			var attack_base_time_remaining$count:uint = 0;
			var match_cost_money$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (uin$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseInfo.uin cannot be set twice.');
					}
					++uin$count;
					this.uin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseInfo.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseInfo.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (base_main_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseInfo.baseMainInfo cannot be set twice.');
					}
					++base_main_info$count;
					this.baseMainInfo = new serverProto.basePvp.ProtoBaseMainInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.baseMainInfo);
					break;
				case 5:
					if (base_roshan_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseInfo.baseRoshanInfo cannot be set twice.');
					}
					++base_roshan_info$count;
					this.baseRoshanInfo = new serverProto.basePvp.ProtoBaseRoshanInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.baseRoshanInfo);
					break;
				case 6:
					if (base_money_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseInfo.baseMoneyInfo cannot be set twice.');
					}
					++base_money_info$count;
					this.baseMoneyInfo = new serverProto.basePvp.ProtoBaseMoneyInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.baseMoneyInfo);
					break;
				case 7:
					if (base_report_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseInfo.baseReportInfo cannot be set twice.');
					}
					++base_report_info$count;
					this.baseReportInfo = new serverProto.basePvp.ProtoBaseReportInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.baseReportInfo);
					break;
				case 8:
					if (base_fight_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseInfo.baseFightPower cannot be set twice.');
					}
					++base_fight_power$count;
					this.baseFightPower = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 9:
					if (base_upgrade_cd$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseInfo.baseUpgradeCd cannot be set twice.');
					}
					++base_upgrade_cd$count;
					this.baseUpgradeCd = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 10:
					if (can_upgrade$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseInfo.canUpgrade cannot be set twice.');
					}
					++can_upgrade$count;
					this.canUpgrade = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 11:
					if (base_shield_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseInfo.baseShieldTime cannot be set twice.');
					}
					++base_shield_time$count;
					this.baseShieldTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 12:
					if (base_attack_times_left$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseInfo.baseAttackTimesLeft cannot be set twice.');
					}
					++base_attack_times_left$count;
					this.baseAttackTimesLeft = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 13:
					if (base_next_attack_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseInfo.baseNextAttackTime cannot be set twice.');
					}
					++base_next_attack_time$count;
					this.baseNextAttackTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 14:
					if (base_max_rob_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseInfo.baseMaxRobMoney cannot be set twice.');
					}
					++base_max_rob_money$count;
					this.baseMaxRobMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 15:
					if (base_current_rob_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseInfo.baseCurrentRobMoney cannot be set twice.');
					}
					++base_current_rob_money$count;
					this.baseCurrentRobMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 16:
					if (ninja_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseInfo.ninjaId cannot be set twice.');
					}
					++ninja_id$count;
					this.ninjaId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 17:
					if (base_upgrade_total_cd$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseInfo.baseUpgradeTotalCd cannot be set twice.');
					}
					++base_upgrade_total_cd$count;
					this.baseUpgradeTotalCd = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 18:
					if (attack_base_time_remaining$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseInfo.attackBaseTimeRemaining cannot be set twice.');
					}
					++attack_base_time_remaining$count;
					this.attackBaseTimeRemaining = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 19:
					if (match_cost_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseInfo.matchCostMoney cannot be set twice.');
					}
					++match_cost_money$count;
					this.matchCostMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
