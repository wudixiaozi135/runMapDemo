package serverProto.family {
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
	public  final class ProtoSendFlowerRankReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const MERGED_RANK:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.family.ProtoSendFlowerRankReq.merged_rank", "mergedRank", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var merged_rank$field:Boolean;

		private var hasField$0:uint = 0;

		public function clearMergedRank():void {
			hasField$0 &= 0xfffffffe;
			merged_rank$field = new Boolean();
		}

		public function get hasMergedRank():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set mergedRank(value:Boolean):void {
			hasField$0 |= 0x1;
			merged_rank$field = value;
		}

		public function get mergedRank():Boolean {
			return merged_rank$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasMergedRank) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, merged_rank$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var merged_rank$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (merged_rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerRankReq.mergedRank cannot be set twice.');
					}
					++merged_rank$count;
					this.mergedRank = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
