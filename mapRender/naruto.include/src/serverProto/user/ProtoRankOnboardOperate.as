package serverProto.user {
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
	public  final class ProtoRankOnboardOperate extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RANK_TYPE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoRankOnboardOperate.rank_type", "rankType", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rank_type$field:int;

		private var hasField$0:uint = 0;

		public function clearRankType():void {
			hasField$0 &= 0xfffffffe;
			rank_type$field = new int();
		}

		public function get hasRankType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set rankType(value:int):void {
			hasField$0 |= 0x1;
			rank_type$field = value;
		}

		public function get rankType():int {
			return rank_type$field;
		}

		/**
		 *  @private
		 */
		public static const CAREER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoRankOnboardOperate.career", "career", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var career$field:int;

		public function clearCareer():void {
			hasField$0 &= 0xfffffffd;
			career$field = new int();
		}

		public function get hasCareer():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set career(value:int):void {
			hasField$0 |= 0x2;
			career$field = value;
		}

		public function get career():int {
			return career$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRankType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, rank_type$field);
			}
			if (hasCareer) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, career$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var rank_type$count:uint = 0;
			var career$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (rank_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankOnboardOperate.rankType cannot be set twice.');
					}
					++rank_type$count;
					this.rankType = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (career$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankOnboardOperate.career cannot be set twice.');
					}
					++career$count;
					this.career = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
