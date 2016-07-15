package serverProto.inc {
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
	public  final class ProtoExtraChannelInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const QQ3366_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoExtraChannelInfo.qq3366_level", "qq3366Level", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var qq3366_level$field:int;

		private var hasField$0:uint = 0;

		public function clearQq3366Level():void {
			hasField$0 &= 0xfffffffe;
			qq3366_level$field = new int();
		}

		public function get hasQq3366Level():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set qq3366Level(value:int):void {
			hasField$0 |= 0x1;
			qq3366_level$field = value;
		}

		public function get qq3366Level():int {
			return qq3366_level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasQq3366Level) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, qq3366_level$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var qq3366_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (qq3366_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExtraChannelInfo.qq3366Level cannot be set twice.');
					}
					++qq3366_level$count;
					this.qq3366Level = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
