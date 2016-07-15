package serverProto.innerPay {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoUpdateItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class InnerUseGoldIngotRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RESON:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerUseGoldIngotRequest.reson", "reson", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var reson:int;

		/**
		 *  @private
		 */
		public static const GOLD_INGOT_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerUseGoldIngotRequest.gold_ingot_num", "goldIngotNum", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var goldIngotNum:int;

		/**
		 *  @private
		 */
		public static const UPDATE_ITEM_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.innerPay.InnerUseGoldIngotRequest.update_item_info", "updateItemInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoUpdateItemInfo);

		[ArrayElementType("serverProto.inc.ProtoUpdateItemInfo")]
		public var updateItemInfo:Array = [];

		/**
		 *  @private
		 */
		public static const DATA1:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerUseGoldIngotRequest.data1", "data1", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var data1$field:int;

		private var hasField$0:uint = 0;

		public function clearData1():void {
			hasField$0 &= 0xfffffffe;
			data1$field = new int();
		}

		public function get hasData1():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set data1(value:int):void {
			hasField$0 |= 0x1;
			data1$field = value;
		}

		public function get data1():int {
			return data1$field;
		}

		/**
		 *  @private
		 */
		public static const DATA2:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerUseGoldIngotRequest.data2", "data2", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var data2$field:int;

		public function clearData2():void {
			hasField$0 &= 0xfffffffd;
			data2$field = new int();
		}

		public function get hasData2():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set data2(value:int):void {
			hasField$0 |= 0x2;
			data2$field = value;
		}

		public function get data2():int {
			return data2$field;
		}

		/**
		 *  @private
		 */
		public static const DATA3:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerUseGoldIngotRequest.data3", "data3", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var data3$field:int;

		public function clearData3():void {
			hasField$0 &= 0xfffffffb;
			data3$field = new int();
		}

		public function get hasData3():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set data3(value:int):void {
			hasField$0 |= 0x4;
			data3$field = value;
		}

		public function get data3():int {
			return data3$field;
		}

		/**
		 *  @private
		 */
		public static const CHAKRA_ITEM_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.innerPay.InnerUseGoldIngotRequest.chakra_item_info", "chakraItemInfo", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoUpdateItemInfo);

		[ArrayElementType("serverProto.inc.ProtoUpdateItemInfo")]
		public var chakraItemInfo:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.reson);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.goldIngotNum);
			for (var updateItemInfo$index:uint = 0; updateItemInfo$index < this.updateItemInfo.length; ++updateItemInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.updateItemInfo[updateItemInfo$index]);
			}
			if (hasData1) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, data1$field);
			}
			if (hasData2) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, data2$field);
			}
			if (hasData3) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, data3$field);
			}
			for (var chakraItemInfo$index:uint = 0; chakraItemInfo$index < this.chakraItemInfo.length; ++chakraItemInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.chakraItemInfo[chakraItemInfo$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var reson$count:uint = 0;
			var gold_ingot_num$count:uint = 0;
			var data1$count:uint = 0;
			var data2$count:uint = 0;
			var data3$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (reson$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerUseGoldIngotRequest.reson cannot be set twice.');
					}
					++reson$count;
					this.reson = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (gold_ingot_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerUseGoldIngotRequest.goldIngotNum cannot be set twice.');
					}
					++gold_ingot_num$count;
					this.goldIngotNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					this.updateItemInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoUpdateItemInfo()));
					break;
				case 4:
					if (data1$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerUseGoldIngotRequest.data1 cannot be set twice.');
					}
					++data1$count;
					this.data1 = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (data2$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerUseGoldIngotRequest.data2 cannot be set twice.');
					}
					++data2$count;
					this.data2 = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (data3$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerUseGoldIngotRequest.data3 cannot be set twice.');
					}
					++data3$count;
					this.data3 = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					this.chakraItemInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoUpdateItemInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
