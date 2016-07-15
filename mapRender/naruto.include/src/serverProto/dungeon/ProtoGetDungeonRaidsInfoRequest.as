package serverProto.dungeon {
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
	public  final class ProtoGetDungeonRaidsInfoRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CLEAR_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoGetDungeonRaidsInfoRequest.clear_flag", "clearFlag", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var clear_flag$field:uint;

		private var hasField$0:uint = 0;

		public function clearClearFlag():void {
			hasField$0 &= 0xfffffffe;
			clear_flag$field = new uint();
		}

		public function get hasClearFlag():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set clearFlag(value:uint):void {
			hasField$0 |= 0x1;
			clear_flag$field = value;
		}

		public function get clearFlag():uint {
			return clear_flag$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasClearFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, clear_flag$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var clear_flag$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (clear_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetDungeonRaidsInfoRequest.clearFlag cannot be set twice.');
					}
					++clear_flag$count;
					this.clearFlag = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
