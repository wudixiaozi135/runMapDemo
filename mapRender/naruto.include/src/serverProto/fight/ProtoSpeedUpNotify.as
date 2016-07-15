package serverProto.fight {
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
	public  final class ProtoSpeedUpNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SPEED_RATIO:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoSpeedUpNotify.speed_ratio", "speedRatio", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var speed_ratio$field:int;

		private var hasField$0:uint = 0;

		public function clearSpeedRatio():void {
			hasField$0 &= 0xfffffffe;
			speed_ratio$field = new int();
		}

		public function get hasSpeedRatio():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set speedRatio(value:int):void {
			hasField$0 |= 0x1;
			speed_ratio$field = value;
		}

		public function get speedRatio():int {
			return speed_ratio$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasSpeedRatio) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, speed_ratio$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var speed_ratio$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (speed_ratio$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSpeedUpNotify.speedRatio cannot be set twice.');
					}
					++speed_ratio$count;
					this.speedRatio = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
