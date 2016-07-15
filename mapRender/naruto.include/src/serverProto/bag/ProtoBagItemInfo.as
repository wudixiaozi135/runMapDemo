package serverProto.bag {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.bag.ProtoJadeInfo;
	import serverProto.bag.ProtoCommonItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBagItemInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const COMMON_ITEM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoBagItemInfo.common_item_info", "commonItemInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.ProtoCommonItemInfo);

		private var common_item_info$field:serverProto.bag.ProtoCommonItemInfo;

		public function clearCommonItemInfo():void {
			common_item_info$field = null;
		}

		public function get hasCommonItemInfo():Boolean {
			return common_item_info$field != null;
		}

		public function set commonItemInfo(value:serverProto.bag.ProtoCommonItemInfo):void {
			common_item_info$field = value;
		}

		public function get commonItemInfo():serverProto.bag.ProtoCommonItemInfo {
			return common_item_info$field;
		}

		/**
		 *  @private
		 */
		public static const JADE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoBagItemInfo.jade_info", "jadeInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.ProtoJadeInfo);

		private var jade_info$field:serverProto.bag.ProtoJadeInfo;

		public function clearJadeInfo():void {
			jade_info$field = null;
		}

		public function get hasJadeInfo():Boolean {
			return jade_info$field != null;
		}

		public function set jadeInfo(value:serverProto.bag.ProtoJadeInfo):void {
			jade_info$field = value;
		}

		public function get jadeInfo():serverProto.bag.ProtoJadeInfo {
			return jade_info$field;
		}

		/**
		 *  @private
		 */
		public static const INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoBagItemInfo.index", "index", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var index:uint;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasCommonItemInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, common_item_info$field);
			}
			if (hasJadeInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, jade_info$field);
			}
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.index);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var common_item_info$count:uint = 0;
			var jade_info$count:uint = 0;
			var index$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (common_item_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBagItemInfo.commonItemInfo cannot be set twice.');
					}
					++common_item_info$count;
					this.commonItemInfo = new serverProto.bag.ProtoCommonItemInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.commonItemInfo);
					break;
				case 2:
					if (jade_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBagItemInfo.jadeInfo cannot be set twice.');
					}
					++jade_info$count;
					this.jadeInfo = new serverProto.bag.ProtoJadeInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.jadeInfo);
					break;
				case 3:
					if (index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBagItemInfo.index cannot be set twice.');
					}
					++index$count;
					this.index = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
