package serverProto.basePvp {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.basePvp.ProtoBaseNinjaInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBaseRoshanInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BASE_ROSHAN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseRoshanInfo.base_roshan_level", "baseRoshanLevel", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_roshan_level$field:int;

		private var hasField$0:uint = 0;

		public function clearBaseRoshanLevel():void {
			hasField$0 &= 0xfffffffe;
			base_roshan_level$field = new int();
		}

		public function get hasBaseRoshanLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set baseRoshanLevel(value:int):void {
			hasField$0 |= 0x1;
			base_roshan_level$field = value;
		}

		public function get baseRoshanLevel():int {
			return base_roshan_level$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_ROSHAN_POWER_ADDITION:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseRoshanInfo.base_roshan_power_addition", "baseRoshanPowerAddition", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_roshan_power_addition$field:int;

		public function clearBaseRoshanPowerAddition():void {
			hasField$0 &= 0xfffffffd;
			base_roshan_power_addition$field = new int();
		}

		public function get hasBaseRoshanPowerAddition():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set baseRoshanPowerAddition(value:int):void {
			hasField$0 |= 0x2;
			base_roshan_power_addition$field = value;
		}

		public function get baseRoshanPowerAddition():int {
			return base_roshan_power_addition$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_ROSHAN_POWER_ADDITION_UPGRADED:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseRoshanInfo.base_roshan_power_addition_upgraded", "baseRoshanPowerAdditionUpgraded", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_roshan_power_addition_upgraded$field:int;

		public function clearBaseRoshanPowerAdditionUpgraded():void {
			hasField$0 &= 0xfffffffb;
			base_roshan_power_addition_upgraded$field = new int();
		}

		public function get hasBaseRoshanPowerAdditionUpgraded():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set baseRoshanPowerAdditionUpgraded(value:int):void {
			hasField$0 |= 0x4;
			base_roshan_power_addition_upgraded$field = value;
		}

		public function get baseRoshanPowerAdditionUpgraded():int {
			return base_roshan_power_addition_upgraded$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_ROSHAN_MAX_ROB_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseRoshanInfo.base_roshan_max_rob_money", "baseRoshanMaxRobMoney", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_roshan_max_rob_money$field:int;

		public function clearBaseRoshanMaxRobMoney():void {
			hasField$0 &= 0xfffffff7;
			base_roshan_max_rob_money$field = new int();
		}

		public function get hasBaseRoshanMaxRobMoney():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set baseRoshanMaxRobMoney(value:int):void {
			hasField$0 |= 0x8;
			base_roshan_max_rob_money$field = value;
		}

		public function get baseRoshanMaxRobMoney():int {
			return base_roshan_max_rob_money$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_ROSHAN_UPGRADE_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseRoshanInfo.base_roshan_upgrade_money", "baseRoshanUpgradeMoney", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_roshan_upgrade_money$field:int;

		public function clearBaseRoshanUpgradeMoney():void {
			hasField$0 &= 0xffffffef;
			base_roshan_upgrade_money$field = new int();
		}

		public function get hasBaseRoshanUpgradeMoney():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set baseRoshanUpgradeMoney(value:int):void {
			hasField$0 |= 0x10;
			base_roshan_upgrade_money$field = value;
		}

		public function get baseRoshanUpgradeMoney():int {
			return base_roshan_upgrade_money$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_ROSHAN_DESTORY_FLAG:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseRoshanInfo.base_roshan_destory_flag", "baseRoshanDestoryFlag", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_roshan_destory_flag$field:int;

		public function clearBaseRoshanDestoryFlag():void {
			hasField$0 &= 0xffffffdf;
			base_roshan_destory_flag$field = new int();
		}

		public function get hasBaseRoshanDestoryFlag():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set baseRoshanDestoryFlag(value:int):void {
			hasField$0 |= 0x20;
			base_roshan_destory_flag$field = value;
		}

		public function get baseRoshanDestoryFlag():int {
			return base_roshan_destory_flag$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBaseRoshanInfo.ninja_list", "ninjaList", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.basePvp.ProtoBaseNinjaInfo);

		[ArrayElementType("serverProto.basePvp.ProtoBaseNinjaInfo")]
		public var ninjaList:Array = [];

		/**
		 *  @private
		 */
		public static const DESC:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.basePvp.ProtoBaseRoshanInfo.desc", "desc", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var desc$field:String;

		public function clearDesc():void {
			desc$field = null;
		}

		public function get hasDesc():Boolean {
			return desc$field != null;
		}

		public function set desc(value:String):void {
			desc$field = value;
		}

		public function get desc():String {
			return desc$field;
		}

		/**
		 *  @private
		 */
		public static const CAN_UPGRADE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseRoshanInfo.can_upgrade", "canUpgrade", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var can_upgrade$field:int;

		public function clearCanUpgrade():void {
			hasField$0 &= 0xffffffbf;
			can_upgrade$field = new int();
		}

		public function get hasCanUpgrade():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set canUpgrade(value:int):void {
			hasField$0 |= 0x40;
			can_upgrade$field = value;
		}

		public function get canUpgrade():int {
			return can_upgrade$field;
		}

		/**
		 *  @private
		 */
		public static const UPGRADE_NEED_MAIN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseRoshanInfo.upgrade_need_main_level", "upgradeNeedMainLevel", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var upgrade_need_main_level$field:int;

		public function clearUpgradeNeedMainLevel():void {
			hasField$0 &= 0xffffff7f;
			upgrade_need_main_level$field = new int();
		}

		public function get hasUpgradeNeedMainLevel():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set upgradeNeedMainLevel(value:int):void {
			hasField$0 |= 0x80;
			upgrade_need_main_level$field = value;
		}

		public function get upgradeNeedMainLevel():int {
			return upgrade_need_main_level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasBaseRoshanLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_roshan_level$field);
			}
			if (hasBaseRoshanPowerAddition) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_roshan_power_addition$field);
			}
			if (hasBaseRoshanPowerAdditionUpgraded) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_roshan_power_addition_upgraded$field);
			}
			if (hasBaseRoshanMaxRobMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_roshan_max_rob_money$field);
			}
			if (hasBaseRoshanUpgradeMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_roshan_upgrade_money$field);
			}
			if (hasBaseRoshanDestoryFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_roshan_destory_flag$field);
			}
			for (var ninjaList$index:uint = 0; ninjaList$index < this.ninjaList.length; ++ninjaList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaList[ninjaList$index]);
			}
			if (hasDesc) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, desc$field);
			}
			if (hasCanUpgrade) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, can_upgrade$field);
			}
			if (hasUpgradeNeedMainLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, upgrade_need_main_level$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var base_roshan_level$count:uint = 0;
			var base_roshan_power_addition$count:uint = 0;
			var base_roshan_power_addition_upgraded$count:uint = 0;
			var base_roshan_max_rob_money$count:uint = 0;
			var base_roshan_upgrade_money$count:uint = 0;
			var base_roshan_destory_flag$count:uint = 0;
			var desc$count:uint = 0;
			var can_upgrade$count:uint = 0;
			var upgrade_need_main_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (base_roshan_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseRoshanInfo.baseRoshanLevel cannot be set twice.');
					}
					++base_roshan_level$count;
					this.baseRoshanLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (base_roshan_power_addition$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseRoshanInfo.baseRoshanPowerAddition cannot be set twice.');
					}
					++base_roshan_power_addition$count;
					this.baseRoshanPowerAddition = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (base_roshan_power_addition_upgraded$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseRoshanInfo.baseRoshanPowerAdditionUpgraded cannot be set twice.');
					}
					++base_roshan_power_addition_upgraded$count;
					this.baseRoshanPowerAdditionUpgraded = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (base_roshan_max_rob_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseRoshanInfo.baseRoshanMaxRobMoney cannot be set twice.');
					}
					++base_roshan_max_rob_money$count;
					this.baseRoshanMaxRobMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (base_roshan_upgrade_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseRoshanInfo.baseRoshanUpgradeMoney cannot be set twice.');
					}
					++base_roshan_upgrade_money$count;
					this.baseRoshanUpgradeMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (base_roshan_destory_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseRoshanInfo.baseRoshanDestoryFlag cannot be set twice.');
					}
					++base_roshan_destory_flag$count;
					this.baseRoshanDestoryFlag = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					this.ninjaList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.basePvp.ProtoBaseNinjaInfo()));
					break;
				case 8:
					if (desc$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseRoshanInfo.desc cannot be set twice.');
					}
					++desc$count;
					this.desc = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 9:
					if (can_upgrade$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseRoshanInfo.canUpgrade cannot be set twice.');
					}
					++can_upgrade$count;
					this.canUpgrade = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 10:
					if (upgrade_need_main_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseRoshanInfo.upgradeNeedMainLevel cannot be set twice.');
					}
					++upgrade_need_main_level$count;
					this.upgradeNeedMainLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
