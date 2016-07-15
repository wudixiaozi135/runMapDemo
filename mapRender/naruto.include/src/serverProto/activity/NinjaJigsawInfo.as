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
	public  final class NinjaJigsawInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const MIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.NinjaJigsawInfo.min_time", "minTime", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var min_time$field:uint;

		private var hasField$0:uint = 0;

		public function clearMinTime():void {
			hasField$0 &= 0xfffffffe;
			min_time$field = new uint();
		}

		public function get hasMinTime():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set minTime(value:uint):void {
			hasField$0 |= 0x1;
			min_time$field = value;
		}

		public function get minTime():uint {
			return min_time$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD_STATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.NinjaJigsawInfo.award_state", "awardState", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var award_state$field:uint;

		public function clearAwardState():void {
			hasField$0 &= 0xfffffffd;
			award_state$field = new uint();
		}

		public function get hasAwardState():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set awardState(value:uint):void {
			hasField$0 |= 0x2;
			award_state$field = value;
		}

		public function get awardState():uint {
			return award_state$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasMinTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, min_time$field);
			}
			if (hasAwardState) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, award_state$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var min_time$count:uint = 0;
			var award_state$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (min_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: NinjaJigsawInfo.minTime cannot be set twice.');
					}
					++min_time$count;
					this.minTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (award_state$count != 0) {
						throw new flash.errors.IOError('Bad data format: NinjaJigsawInfo.awardState cannot be set twice.');
					}
					++award_state$count;
					this.awardState = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
