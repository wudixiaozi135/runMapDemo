package serverProto.innerTitle {
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
	public  final class ProtoInnerRankChangeNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RANK_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerTitle.ProtoInnerRankChangeNotify.rank_id", "rankId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rank_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearRankId():void {
			hasField$0 &= 0xfffffffe;
			rank_id$field = new uint();
		}

		public function get hasRankId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set rankId(value:uint):void {
			hasField$0 |= 0x1;
			rank_id$field = value;
		}

		public function get rankId():uint {
			return rank_id$field;
		}

		/**
		 *  @private
		 */
		public static const NEW_RANK:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerTitle.ProtoInnerRankChangeNotify.new_rank", "newRank", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var new_rank$field:uint;

		public function clearNewRank():void {
			hasField$0 &= 0xfffffffd;
			new_rank$field = new uint();
		}

		public function get hasNewRank():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set newRank(value:uint):void {
			hasField$0 |= 0x2;
			new_rank$field = value;
		}

		public function get newRank():uint {
			return new_rank$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRankId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, rank_id$field);
			}
			if (hasNewRank) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, new_rank$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var rank_id$count:uint = 0;
			var new_rank$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (rank_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerRankChangeNotify.rankId cannot be set twice.');
					}
					++rank_id$count;
					this.rankId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (new_rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerRankChangeNotify.newRank cannot be set twice.');
					}
					++new_rank$count;
					this.newRank = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
