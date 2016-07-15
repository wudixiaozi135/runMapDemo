package serverProto.chipRecycle {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.chipRecycle.ProtoChipRefineryConf;
	import serverProto.inc.ProtoItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoChipRefineryInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CURR_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.chipRecycle.ProtoChipRefineryInfo.curr_exp", "currExp", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var curr_exp$field:int;

		private var hasField$0:uint = 0;

		public function clearCurrExp():void {
			hasField$0 &= 0xfffffffe;
			curr_exp$field = new int();
		}

		public function get hasCurrExp():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set currExp(value:int):void {
			hasField$0 |= 0x1;
			curr_exp$field = value;
		}

		public function get currExp():int {
			return curr_exp$field;
		}

		/**
		 *  @private
		 */
		public static const FREE_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.chipRecycle.ProtoChipRefineryInfo.free_count", "freeCount", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var free_count$field:int;

		public function clearFreeCount():void {
			hasField$0 &= 0xfffffffd;
			free_count$field = new int();
		}

		public function get hasFreeCount():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set freeCount(value:int):void {
			hasField$0 |= 0x2;
			free_count$field = value;
		}

		public function get freeCount():int {
			return free_count$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.chipRecycle.ProtoChipRefineryInfo.max_count", "maxCount", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_count$field:int;

		public function clearMaxCount():void {
			hasField$0 &= 0xfffffffb;
			max_count$field = new int();
		}

		public function get hasMaxCount():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set maxCount(value:int):void {
			hasField$0 |= 0x4;
			max_count$field = value;
		}

		public function get maxCount():int {
			return max_count$field;
		}

		/**
		 *  @private
		 */
		public static const CHIP_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.chipRecycle.ProtoChipRefineryInfo.chip_list", "chipList", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var chipList:Array = [];

		/**
		 *  @private
		 */
		public static const CARD_CHIP_EXCHANGE_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.chipRecycle.ProtoChipRefineryInfo.card_chip_exchange_exp", "cardChipExchangeExp", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var card_chip_exchange_exp$field:int;

		public function clearCardChipExchangeExp():void {
			hasField$0 &= 0xfffffff7;
			card_chip_exchange_exp$field = new int();
		}

		public function get hasCardChipExchangeExp():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set cardChipExchangeExp(value:int):void {
			hasField$0 |= 0x8;
			card_chip_exchange_exp$field = value;
		}

		public function get cardChipExchangeExp():int {
			return card_chip_exchange_exp$field;
		}

		/**
		 *  @private
		 */
		public static const CHIP_REFINERY_CONF:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.chipRecycle.ProtoChipRefineryInfo.chip_refinery_conf", "chipRefineryConf", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.chipRecycle.ProtoChipRefineryConf);

		[ArrayElementType("serverProto.chipRecycle.ProtoChipRefineryConf")]
		public var chipRefineryConf:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasCurrExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, curr_exp$field);
			}
			if (hasFreeCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, free_count$field);
			}
			if (hasMaxCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, max_count$field);
			}
			for (var chipList$index:uint = 0; chipList$index < this.chipList.length; ++chipList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.chipList[chipList$index]);
			}
			if (hasCardChipExchangeExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, card_chip_exchange_exp$field);
			}
			for (var chipRefineryConf$index:uint = 0; chipRefineryConf$index < this.chipRefineryConf.length; ++chipRefineryConf$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.chipRefineryConf[chipRefineryConf$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var curr_exp$count:uint = 0;
			var free_count$count:uint = 0;
			var max_count$count:uint = 0;
			var card_chip_exchange_exp$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (curr_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChipRefineryInfo.currExp cannot be set twice.');
					}
					++curr_exp$count;
					this.currExp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (free_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChipRefineryInfo.freeCount cannot be set twice.');
					}
					++free_count$count;
					this.freeCount = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (max_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChipRefineryInfo.maxCount cannot be set twice.');
					}
					++max_count$count;
					this.maxCount = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					this.chipList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 5:
					if (card_chip_exchange_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChipRefineryInfo.cardChipExchangeExp cannot be set twice.');
					}
					++card_chip_exchange_exp$count;
					this.cardChipExchangeExp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					this.chipRefineryConf.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.chipRecycle.ProtoChipRefineryConf()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
