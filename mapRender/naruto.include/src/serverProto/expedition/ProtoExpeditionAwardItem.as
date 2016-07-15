package serverProto.expedition {
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
	public  final class ProtoExpeditionAwardItem extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ITEM_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionAwardItem.item_id", "itemId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var itemId:int;

		/**
		 *  @private
		 */
		public static const ITEM_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionAwardItem.item_count", "itemCount", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var itemCount:int;

		/**
		 *  @private
		 */
		public static const HAS_OPEN:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionAwardItem.has_open", "hasOpen", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var has_open$field:int;

		private var hasField$0:uint = 0;

		public function clearHasOpen():void {
			hasField$0 &= 0xfffffffe;
			has_open$field = new int();
		}

		public function get hasHasOpen():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set hasOpen(value:int):void {
			hasField$0 |= 0x1;
			has_open$field = value;
		}

		public function get hasOpen():int {
			return has_open$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.itemId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.itemCount);
			if (hasHasOpen) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, has_open$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var item_id$count:uint = 0;
			var item_count$count:uint = 0;
			var has_open$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (item_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionAwardItem.itemId cannot be set twice.');
					}
					++item_id$count;
					this.itemId = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (item_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionAwardItem.itemCount cannot be set twice.');
					}
					++item_count$count;
					this.itemCount = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (has_open$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionAwardItem.hasOpen cannot be set twice.');
					}
					++has_open$count;
					this.hasOpen = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
