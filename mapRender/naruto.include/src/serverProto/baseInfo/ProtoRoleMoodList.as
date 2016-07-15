package serverProto.baseInfo {
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
	public  final class ProtoRoleMoodList extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const MOOD_LIST:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoRoleMoodList.mood_list", "moodList", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var moodList:Array = [];

		/**
		 *  @private
		 */
		public static const CURRENT_MOOD_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoRoleMoodList.current_mood_index", "currentMoodIndex", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_mood_index$field:uint;

		private var hasField$0:uint = 0;

		public function clearCurrentMoodIndex():void {
			hasField$0 &= 0xfffffffe;
			current_mood_index$field = new uint();
		}

		public function get hasCurrentMoodIndex():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set currentMoodIndex(value:uint):void {
			hasField$0 |= 0x1;
			current_mood_index$field = value;
		}

		public function get currentMoodIndex():uint {
			return current_mood_index$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var moodList$index:uint = 0; moodList$index < this.moodList.length; ++moodList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.moodList[moodList$index]);
			}
			if (hasCurrentMoodIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, current_mood_index$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var current_mood_index$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.moodList);
						break;
					}
					this.moodList.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				case 2:
					if (current_mood_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRoleMoodList.currentMoodIndex cannot be set twice.');
					}
					++current_mood_index$count;
					this.currentMoodIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
