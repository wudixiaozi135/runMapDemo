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
	public  final class ProtoBaseMainInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BASE_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMainInfo.base_level", "baseLevel", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_level$field:int;

		private var hasField$0:uint = 0;

		public function clearBaseLevel():void {
			hasField$0 &= 0xfffffffe;
			base_level$field = new int();
		}

		public function get hasBaseLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set baseLevel(value:int):void {
			hasField$0 |= 0x1;
			base_level$field = value;
		}

		public function get baseLevel():int {
			return base_level$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_POWER_ADDITION:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMainInfo.base_power_addition", "basePowerAddition", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_power_addition$field:int;

		public function clearBasePowerAddition():void {
			hasField$0 &= 0xfffffffd;
			base_power_addition$field = new int();
		}

		public function get hasBasePowerAddition():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set basePowerAddition(value:int):void {
			hasField$0 |= 0x2;
			base_power_addition$field = value;
		}

		public function get basePowerAddition():int {
			return base_power_addition$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_POWER_ADDITION_UPGRADED:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMainInfo.base_power_addition_upgraded", "basePowerAdditionUpgraded", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_power_addition_upgraded$field:int;

		public function clearBasePowerAdditionUpgraded():void {
			hasField$0 &= 0xfffffffb;
			base_power_addition_upgraded$field = new int();
		}

		public function get hasBasePowerAdditionUpgraded():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set basePowerAdditionUpgraded(value:int):void {
			hasField$0 |= 0x4;
			base_power_addition_upgraded$field = value;
		}

		public function get basePowerAdditionUpgraded():int {
			return base_power_addition_upgraded$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_MAX_ROB_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMainInfo.base_max_rob_money", "baseMaxRobMoney", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_max_rob_money$field:int;

		public function clearBaseMaxRobMoney():void {
			hasField$0 &= 0xfffffff7;
			base_max_rob_money$field = new int();
		}

		public function get hasBaseMaxRobMoney():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set baseMaxRobMoney(value:int):void {
			hasField$0 |= 0x8;
			base_max_rob_money$field = value;
		}

		public function get baseMaxRobMoney():int {
			return base_max_rob_money$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_UPGRADE_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMainInfo.base_upgrade_money", "baseUpgradeMoney", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_upgrade_money$field:int;

		public function clearBaseUpgradeMoney():void {
			hasField$0 &= 0xffffffef;
			base_upgrade_money$field = new int();
		}

		public function get hasBaseUpgradeMoney():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set baseUpgradeMoney(value:int):void {
			hasField$0 |= 0x10;
			base_upgrade_money$field = value;
		}

		public function get baseUpgradeMoney():int {
			return base_upgrade_money$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_DESTORY_FLAG:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMainInfo.base_destory_flag", "baseDestoryFlag", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_destory_flag$field:int;

		public function clearBaseDestoryFlag():void {
			hasField$0 &= 0xffffffdf;
			base_destory_flag$field = new int();
		}

		public function get hasBaseDestoryFlag():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set baseDestoryFlag(value:int):void {
			hasField$0 |= 0x20;
			base_destory_flag$field = value;
		}

		public function get baseDestoryFlag():int {
			return base_destory_flag$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBaseMainInfo.ninja_list", "ninjaList", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.basePvp.ProtoBaseNinjaInfo);

		[ArrayElementType("serverProto.basePvp.ProtoBaseNinjaInfo")]
		public var ninjaList:Array = [];

		/**
		 *  @private
		 */
		public static const DESC:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.basePvp.ProtoBaseMainInfo.desc", "desc", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const CAN_UPGRADE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMainInfo.can_upgrade", "canUpgrade", (9 << 3) | com.netease.protobuf.WireType.VARINT);

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
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasBaseLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_level$field);
			}
			if (hasBasePowerAddition) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_power_addition$field);
			}
			if (hasBasePowerAdditionUpgraded) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_power_addition_upgraded$field);
			}
			if (hasBaseMaxRobMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_max_rob_money$field);
			}
			if (hasBaseUpgradeMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_upgrade_money$field);
			}
			if (hasBaseDestoryFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_destory_flag$field);
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
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var base_level$count:uint = 0;
			var base_power_addition$count:uint = 0;
			var base_power_addition_upgraded$count:uint = 0;
			var base_max_rob_money$count:uint = 0;
			var base_upgrade_money$count:uint = 0;
			var base_destory_flag$count:uint = 0;
			var desc$count:uint = 0;
			var can_upgrade$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (base_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMainInfo.baseLevel cannot be set twice.');
					}
					++base_level$count;
					this.baseLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (base_power_addition$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMainInfo.basePowerAddition cannot be set twice.');
					}
					++base_power_addition$count;
					this.basePowerAddition = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (base_power_addition_upgraded$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMainInfo.basePowerAdditionUpgraded cannot be set twice.');
					}
					++base_power_addition_upgraded$count;
					this.basePowerAdditionUpgraded = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (base_max_rob_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMainInfo.baseMaxRobMoney cannot be set twice.');
					}
					++base_max_rob_money$count;
					this.baseMaxRobMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (base_upgrade_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMainInfo.baseUpgradeMoney cannot be set twice.');
					}
					++base_upgrade_money$count;
					this.baseUpgradeMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (base_destory_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMainInfo.baseDestoryFlag cannot be set twice.');
					}
					++base_destory_flag$count;
					this.baseDestoryFlag = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					this.ninjaList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.basePvp.ProtoBaseNinjaInfo()));
					break;
				case 8:
					if (desc$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMainInfo.desc cannot be set twice.');
					}
					++desc$count;
					this.desc = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 9:
					if (can_upgrade$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMainInfo.canUpgrade cannot be set twice.');
					}
					++can_upgrade$count;
					this.canUpgrade = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
