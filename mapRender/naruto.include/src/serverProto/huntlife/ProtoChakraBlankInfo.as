package serverProto.huntlife {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.huntlife.ProtoChakraItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoChakraBlankInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoChakraBlankInfo.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var type:uint;

		/**
		 *  @private
		 */
		public static const INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoChakraBlankInfo.index", "index", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var index:uint;

		/**
		 *  @private
		 */
		public static const STATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoChakraBlankInfo.state", "state", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var state$field:uint;

		private var hasField$0:uint = 0;

		public function clearState():void {
			hasField$0 &= 0xfffffffe;
			state$field = new uint();
		}

		public function get hasState():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set state(value:uint):void {
			hasField$0 |= 0x1;
			state$field = value;
		}

		public function get state():uint {
			return state$field;
		}

		/**
		 *  @private
		 */
		public static const ITEM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.huntlife.ProtoChakraBlankInfo.item_info", "itemInfo", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.huntlife.ProtoChakraItemInfo);

		private var item_info$field:serverProto.huntlife.ProtoChakraItemInfo;

		public function clearItemInfo():void {
			item_info$field = null;
		}

		public function get hasItemInfo():Boolean {
			return item_info$field != null;
		}

		public function set itemInfo(value:serverProto.huntlife.ProtoChakraItemInfo):void {
			item_info$field = value;
		}

		public function get itemInfo():serverProto.huntlife.ProtoChakraItemInfo {
			return item_info$field;
		}

		/**
		 *  @private
		 */
		public static const HUNTLIFE_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoChakraBlankInfo.huntlife_index", "huntlifeIndex", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var huntlife_index$field:uint;

		public function clearHuntlifeIndex():void {
			hasField$0 &= 0xfffffffd;
			huntlife_index$field = new uint();
		}

		public function get hasHuntlifeIndex():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set huntlifeIndex(value:uint):void {
			hasField$0 |= 0x2;
			huntlife_index$field = value;
		}

		public function get huntlifeIndex():uint {
			return huntlife_index$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.type);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.index);
			if (hasState) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, state$field);
			}
			if (hasItemInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, item_info$field);
			}
			if (hasHuntlifeIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, huntlife_index$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var type$count:uint = 0;
			var index$count:uint = 0;
			var state$count:uint = 0;
			var item_info$count:uint = 0;
			var huntlife_index$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChakraBlankInfo.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChakraBlankInfo.index cannot be set twice.');
					}
					++index$count;
					this.index = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChakraBlankInfo.state cannot be set twice.');
					}
					++state$count;
					this.state = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (item_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChakraBlankInfo.itemInfo cannot be set twice.');
					}
					++item_info$count;
					this.itemInfo = new serverProto.huntlife.ProtoChakraItemInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.itemInfo);
					break;
				case 5:
					if (huntlife_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChakraBlankInfo.huntlifeIndex cannot be set twice.');
					}
					++huntlife_index$count;
					this.huntlifeIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
