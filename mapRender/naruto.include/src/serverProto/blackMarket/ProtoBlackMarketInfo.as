package serverProto.blackMarket {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBlackMarketInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const FREE_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.blackMarket.ProtoBlackMarketInfo.free_times", "freeTimes", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var free_times$field:int;

		private var hasField$0:uint = 0;

		public function clearFreeTimes():void {
			hasField$0 &= 0xfffffffe;
			free_times$field = new int();
		}

		public function get hasFreeTimes():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set freeTimes(value:int):void {
			hasField$0 |= 0x1;
			free_times$field = value;
		}

		public function get freeTimes():int {
			return free_times$field;
		}

		/**
		 *  @private
		 */
		public static const JADE_CHIP_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.blackMarket.ProtoBlackMarketInfo.jade_chip_num", "jadeChipNum", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var jade_chip_num$field:int;

		public function clearJadeChipNum():void {
			hasField$0 &= 0xfffffffd;
			jade_chip_num$field = new int();
		}

		public function get hasJadeChipNum():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set jadeChipNum(value:int):void {
			hasField$0 |= 0x2;
			jade_chip_num$field = value;
		}

		public function get jadeChipNum():int {
			return jade_chip_num$field;
		}

		/**
		 *  @private
		 */
		public static const JADE_NEED_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.blackMarket.ProtoBlackMarketInfo.jade_need_num", "jadeNeedNum", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var jade_need_num$field:int;

		public function clearJadeNeedNum():void {
			hasField$0 &= 0xfffffffb;
			jade_need_num$field = new int();
		}

		public function get hasJadeNeedNum():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set jadeNeedNum(value:int):void {
			hasField$0 |= 0x4;
			jade_need_num$field = value;
		}

		public function get jadeNeedNum():int {
			return jade_need_num$field;
		}

		/**
		 *  @private
		 */
		public static const CAN_OPEN_BOX_LIST:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.blackMarket.ProtoBlackMarketInfo.can_open_box_list", "canOpenBoxList", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("int")]
		public var canOpenBoxList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasFreeTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, free_times$field);
			}
			if (hasJadeChipNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, jade_chip_num$field);
			}
			if (hasJadeNeedNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, jade_need_num$field);
			}
			for (var canOpenBoxList$index:uint = 0; canOpenBoxList$index < this.canOpenBoxList.length; ++canOpenBoxList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.canOpenBoxList[canOpenBoxList$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var free_times$count:uint = 0;
			var jade_chip_num$count:uint = 0;
			var jade_need_num$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (free_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBlackMarketInfo.freeTimes cannot be set twice.');
					}
					++free_times$count;
					this.freeTimes = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (jade_chip_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBlackMarketInfo.jadeChipNum cannot be set twice.');
					}
					++jade_chip_num$count;
					this.jadeChipNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (jade_need_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBlackMarketInfo.jadeNeedNum cannot be set twice.');
					}
					++jade_need_num$count;
					this.jadeNeedNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_INT32, this.canOpenBoxList);
						break;
					}
					this.canOpenBoxList.push(com.netease.protobuf.ReadUtils.read$TYPE_INT32(input));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
