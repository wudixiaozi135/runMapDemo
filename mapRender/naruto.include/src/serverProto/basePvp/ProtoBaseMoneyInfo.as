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
	public  final class ProtoBaseMoneyInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BASE_MONEY_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_money_level", "baseMoneyLevel", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_money_level$field:int;

		private var hasField$0:uint = 0;

		public function clearBaseMoneyLevel():void {
			hasField$0 &= 0xfffffffe;
			base_money_level$field = new int();
		}

		public function get hasBaseMoneyLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set baseMoneyLevel(value:int):void {
			hasField$0 |= 0x1;
			base_money_level$field = value;
		}

		public function get baseMoneyLevel():int {
			return base_money_level$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_MONEY_ULIMIT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_money_ulimit", "baseMoneyUlimit", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_money_ulimit$field:int;

		public function clearBaseMoneyUlimit():void {
			hasField$0 &= 0xfffffffd;
			base_money_ulimit$field = new int();
		}

		public function get hasBaseMoneyUlimit():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set baseMoneyUlimit(value:int):void {
			hasField$0 |= 0x2;
			base_money_ulimit$field = value;
		}

		public function get baseMoneyUlimit():int {
			return base_money_ulimit$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_MONEY_TOTAL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_money_total", "baseMoneyTotal", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_money_total$field:int;

		public function clearBaseMoneyTotal():void {
			hasField$0 &= 0xfffffffb;
			base_money_total$field = new int();
		}

		public function get hasBaseMoneyTotal():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set baseMoneyTotal(value:int):void {
			hasField$0 |= 0x4;
			base_money_total$field = value;
		}

		public function get baseMoneyTotal():int {
			return base_money_total$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_MONEY_MAX_ROB_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_money_max_rob_money", "baseMoneyMaxRobMoney", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_money_max_rob_money$field:int;

		public function clearBaseMoneyMaxRobMoney():void {
			hasField$0 &= 0xfffffff7;
			base_money_max_rob_money$field = new int();
		}

		public function get hasBaseMoneyMaxRobMoney():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set baseMoneyMaxRobMoney(value:int):void {
			hasField$0 |= 0x8;
			base_money_max_rob_money$field = value;
		}

		public function get baseMoneyMaxRobMoney():int {
			return base_money_max_rob_money$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_MONEY_UPGRADE_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_money_upgrade_money", "baseMoneyUpgradeMoney", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_money_upgrade_money$field:int;

		public function clearBaseMoneyUpgradeMoney():void {
			hasField$0 &= 0xffffffef;
			base_money_upgrade_money$field = new int();
		}

		public function get hasBaseMoneyUpgradeMoney():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set baseMoneyUpgradeMoney(value:int):void {
			hasField$0 |= 0x10;
			base_money_upgrade_money$field = value;
		}

		public function get baseMoneyUpgradeMoney():int {
			return base_money_upgrade_money$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_MONEY_PRODUCE_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_money_produce_money", "baseMoneyProduceMoney", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_money_produce_money$field:int;

		public function clearBaseMoneyProduceMoney():void {
			hasField$0 &= 0xffffffdf;
			base_money_produce_money$field = new int();
		}

		public function get hasBaseMoneyProduceMoney():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set baseMoneyProduceMoney(value:int):void {
			hasField$0 |= 0x20;
			base_money_produce_money$field = value;
		}

		public function get baseMoneyProduceMoney():int {
			return base_money_produce_money$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_MONEY_PRODUCE_MONEY_UPGRADED:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_money_produce_money_upgraded", "baseMoneyProduceMoneyUpgraded", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_money_produce_money_upgraded$field:int;

		public function clearBaseMoneyProduceMoneyUpgraded():void {
			hasField$0 &= 0xffffffbf;
			base_money_produce_money_upgraded$field = new int();
		}

		public function get hasBaseMoneyProduceMoneyUpgraded():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set baseMoneyProduceMoneyUpgraded(value:int):void {
			hasField$0 |= 0x40;
			base_money_produce_money_upgraded$field = value;
		}

		public function get baseMoneyProduceMoneyUpgraded():int {
			return base_money_produce_money_upgraded$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_MONEY_PRODUCE_MONEY_CD:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_money_produce_money_cd", "baseMoneyProduceMoneyCd", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_money_produce_money_cd$field:int;

		public function clearBaseMoneyProduceMoneyCd():void {
			hasField$0 &= 0xffffff7f;
			base_money_produce_money_cd$field = new int();
		}

		public function get hasBaseMoneyProduceMoneyCd():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set baseMoneyProduceMoneyCd(value:int):void {
			hasField$0 |= 0x80;
			base_money_produce_money_cd$field = value;
		}

		public function get baseMoneyProduceMoneyCd():int {
			return base_money_produce_money_cd$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_MONEY_DESTORY_FLAG:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_money_destory_flag", "baseMoneyDestoryFlag", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_money_destory_flag$field:int;

		public function clearBaseMoneyDestoryFlag():void {
			hasField$0 &= 0xfffffeff;
			base_money_destory_flag$field = new int();
		}

		public function get hasBaseMoneyDestoryFlag():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set baseMoneyDestoryFlag(value:int):void {
			hasField$0 |= 0x100;
			base_money_destory_flag$field = value;
		}

		public function get baseMoneyDestoryFlag():int {
			return base_money_destory_flag$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBaseMoneyInfo.ninja_list", "ninjaList", (10 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.basePvp.ProtoBaseNinjaInfo);

		[ArrayElementType("serverProto.basePvp.ProtoBaseNinjaInfo")]
		public var ninjaList:Array = [];

		/**
		 *  @private
		 */
		public static const DESC:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.basePvp.ProtoBaseMoneyInfo.desc", "desc", (11 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const BASE_MONEY_CYCLE_PRODUCE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_money_cycle_produce", "baseMoneyCycleProduce", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_money_cycle_produce$field:int;

		public function clearBaseMoneyCycleProduce():void {
			hasField$0 &= 0xfffffdff;
			base_money_cycle_produce$field = new int();
		}

		public function get hasBaseMoneyCycleProduce():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set baseMoneyCycleProduce(value:int):void {
			hasField$0 |= 0x200;
			base_money_cycle_produce$field = value;
		}

		public function get baseMoneyCycleProduce():int {
			return base_money_cycle_produce$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_MONEY_STORE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_money_store", "baseMoneyStore", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_money_store$field:int;

		public function clearBaseMoneyStore():void {
			hasField$0 &= 0xfffffbff;
			base_money_store$field = new int();
		}

		public function get hasBaseMoneyStore():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set baseMoneyStore(value:int):void {
			hasField$0 |= 0x400;
			base_money_store$field = value;
		}

		public function get baseMoneyStore():int {
			return base_money_store$field;
		}

		/**
		 *  @private
		 */
		public static const BASE_NEXT_PRODUCE_MONEY_CD:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_next_produce_money_cd", "baseNextProduceMoneyCd", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_next_produce_money_cd$field:int;

		public function clearBaseNextProduceMoneyCd():void {
			hasField$0 &= 0xfffff7ff;
			base_next_produce_money_cd$field = new int();
		}

		public function get hasBaseNextProduceMoneyCd():Boolean {
			return (hasField$0 & 0x800) != 0;
		}

		public function set baseNextProduceMoneyCd(value:int):void {
			hasField$0 |= 0x800;
			base_next_produce_money_cd$field = value;
		}

		public function get baseNextProduceMoneyCd():int {
			return base_next_produce_money_cd$field;
		}

		/**
		 *  @private
		 */
		public static const CAN_UPGRADE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.can_upgrade", "canUpgrade", (15 << 3) | com.netease.protobuf.WireType.VARINT);

		private var can_upgrade$field:int;

		public function clearCanUpgrade():void {
			hasField$0 &= 0xffffefff;
			can_upgrade$field = new int();
		}

		public function get hasCanUpgrade():Boolean {
			return (hasField$0 & 0x1000) != 0;
		}

		public function set canUpgrade(value:int):void {
			hasField$0 |= 0x1000;
			can_upgrade$field = value;
		}

		public function get canUpgrade():int {
			return can_upgrade$field;
		}

		/**
		 *  @private
		 */
		public static const UPGRADE_NEED_MAIN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.upgrade_need_main_level", "upgradeNeedMainLevel", (16 << 3) | com.netease.protobuf.WireType.VARINT);

		private var upgrade_need_main_level$field:int;

		public function clearUpgradeNeedMainLevel():void {
			hasField$0 &= 0xffffdfff;
			upgrade_need_main_level$field = new int();
		}

		public function get hasUpgradeNeedMainLevel():Boolean {
			return (hasField$0 & 0x2000) != 0;
		}

		public function set upgradeNeedMainLevel(value:int):void {
			hasField$0 |= 0x2000;
			upgrade_need_main_level$field = value;
		}

		public function get upgradeNeedMainLevel():int {
			return upgrade_need_main_level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasBaseMoneyLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_money_level$field);
			}
			if (hasBaseMoneyUlimit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_money_ulimit$field);
			}
			if (hasBaseMoneyTotal) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_money_total$field);
			}
			if (hasBaseMoneyMaxRobMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_money_max_rob_money$field);
			}
			if (hasBaseMoneyUpgradeMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_money_upgrade_money$field);
			}
			if (hasBaseMoneyProduceMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_money_produce_money$field);
			}
			if (hasBaseMoneyProduceMoneyUpgraded) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_money_produce_money_upgraded$field);
			}
			if (hasBaseMoneyProduceMoneyCd) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_money_produce_money_cd$field);
			}
			if (hasBaseMoneyDestoryFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_money_destory_flag$field);
			}
			for (var ninjaList$index:uint = 0; ninjaList$index < this.ninjaList.length; ++ninjaList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaList[ninjaList$index]);
			}
			if (hasDesc) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, desc$field);
			}
			if (hasBaseMoneyCycleProduce) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_money_cycle_produce$field);
			}
			if (hasBaseMoneyStore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_money_store$field);
			}
			if (hasBaseNextProduceMoneyCd) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_next_produce_money_cd$field);
			}
			if (hasCanUpgrade) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 15);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, can_upgrade$field);
			}
			if (hasUpgradeNeedMainLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 16);
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
			var base_money_level$count:uint = 0;
			var base_money_ulimit$count:uint = 0;
			var base_money_total$count:uint = 0;
			var base_money_max_rob_money$count:uint = 0;
			var base_money_upgrade_money$count:uint = 0;
			var base_money_produce_money$count:uint = 0;
			var base_money_produce_money_upgraded$count:uint = 0;
			var base_money_produce_money_cd$count:uint = 0;
			var base_money_destory_flag$count:uint = 0;
			var desc$count:uint = 0;
			var base_money_cycle_produce$count:uint = 0;
			var base_money_store$count:uint = 0;
			var base_next_produce_money_cd$count:uint = 0;
			var can_upgrade$count:uint = 0;
			var upgrade_need_main_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (base_money_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMoneyInfo.baseMoneyLevel cannot be set twice.');
					}
					++base_money_level$count;
					this.baseMoneyLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (base_money_ulimit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMoneyInfo.baseMoneyUlimit cannot be set twice.');
					}
					++base_money_ulimit$count;
					this.baseMoneyUlimit = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (base_money_total$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMoneyInfo.baseMoneyTotal cannot be set twice.');
					}
					++base_money_total$count;
					this.baseMoneyTotal = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (base_money_max_rob_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMoneyInfo.baseMoneyMaxRobMoney cannot be set twice.');
					}
					++base_money_max_rob_money$count;
					this.baseMoneyMaxRobMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (base_money_upgrade_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMoneyInfo.baseMoneyUpgradeMoney cannot be set twice.');
					}
					++base_money_upgrade_money$count;
					this.baseMoneyUpgradeMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (base_money_produce_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMoneyInfo.baseMoneyProduceMoney cannot be set twice.');
					}
					++base_money_produce_money$count;
					this.baseMoneyProduceMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (base_money_produce_money_upgraded$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMoneyInfo.baseMoneyProduceMoneyUpgraded cannot be set twice.');
					}
					++base_money_produce_money_upgraded$count;
					this.baseMoneyProduceMoneyUpgraded = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (base_money_produce_money_cd$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMoneyInfo.baseMoneyProduceMoneyCd cannot be set twice.');
					}
					++base_money_produce_money_cd$count;
					this.baseMoneyProduceMoneyCd = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 9:
					if (base_money_destory_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMoneyInfo.baseMoneyDestoryFlag cannot be set twice.');
					}
					++base_money_destory_flag$count;
					this.baseMoneyDestoryFlag = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 10:
					this.ninjaList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.basePvp.ProtoBaseNinjaInfo()));
					break;
				case 11:
					if (desc$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMoneyInfo.desc cannot be set twice.');
					}
					++desc$count;
					this.desc = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 12:
					if (base_money_cycle_produce$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMoneyInfo.baseMoneyCycleProduce cannot be set twice.');
					}
					++base_money_cycle_produce$count;
					this.baseMoneyCycleProduce = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 13:
					if (base_money_store$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMoneyInfo.baseMoneyStore cannot be set twice.');
					}
					++base_money_store$count;
					this.baseMoneyStore = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 14:
					if (base_next_produce_money_cd$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMoneyInfo.baseNextProduceMoneyCd cannot be set twice.');
					}
					++base_next_produce_money_cd$count;
					this.baseNextProduceMoneyCd = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 15:
					if (can_upgrade$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMoneyInfo.canUpgrade cannot be set twice.');
					}
					++can_upgrade$count;
					this.canUpgrade = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 16:
					if (upgrade_need_main_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMoneyInfo.upgradeNeedMainLevel cannot be set twice.');
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
