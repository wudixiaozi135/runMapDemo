package serverProto.activity {
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
	public  final class ProtoBringinMoneyAwardBoxReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BOX_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoBringinMoneyAwardBoxReq.box_id", "boxId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var box_id$field:int;

		private var hasField$0:uint = 0;

		public function clearBoxId():void {
			hasField$0 &= 0xfffffffe;
			box_id$field = new int();
		}

		public function get hasBoxId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set boxId(value:int):void {
			hasField$0 |= 0x1;
			box_id$field = value;
		}

		public function get boxId():int {
			return box_id$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasBoxId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, box_id$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var box_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (box_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBringinMoneyAwardBoxReq.boxId cannot be set twice.');
					}
					++box_id$count;
					this.boxId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
