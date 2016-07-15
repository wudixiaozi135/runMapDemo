package serverProto.rank {
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
	public  final class ProtoSetChosedTitleReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CHOSED_TITLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.rank.ProtoSetChosedTitleReq.chosed_title_id", "chosedTitleId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var chosed_title_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearChosedTitleId():void {
			hasField$0 &= 0xfffffffe;
			chosed_title_id$field = new uint();
		}

		public function get hasChosedTitleId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set chosedTitleId(value:uint):void {
			hasField$0 |= 0x1;
			chosed_title_id$field = value;
		}

		public function get chosedTitleId():uint {
			return chosed_title_id$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasChosedTitleId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, chosed_title_id$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var chosed_title_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (chosed_title_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSetChosedTitleReq.chosedTitleId cannot be set twice.');
					}
					++chosed_title_id$count;
					this.chosedTitleId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
