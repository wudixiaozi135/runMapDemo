package serverProto.basePvp {
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
	public  final class ProtoBaseNinjaInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseNinjaInfo.ninja_id", "ninjaId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_id$field:int;

		private var hasField$0:uint = 0;

		public function clearNinjaId():void {
			hasField$0 &= 0xfffffffe;
			ninja_id$field = new int();
		}

		public function get hasNinjaId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set ninjaId(value:int):void {
			hasField$0 |= 0x1;
			ninja_id$field = value;
		}

		public function get ninjaId():int {
			return ninja_id$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseNinjaInfo.ninja_level", "ninjaLevel", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_level$field:int;

		public function clearNinjaLevel():void {
			hasField$0 &= 0xfffffffd;
			ninja_level$field = new int();
		}

		public function get hasNinjaLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set ninjaLevel(value:int):void {
			hasField$0 |= 0x2;
			ninja_level$field = value;
		}

		public function get ninjaLevel():int {
			return ninja_level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasNinjaId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, ninja_id$field);
			}
			if (hasNinjaLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, ninja_level$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ninja_id$count:uint = 0;
			var ninja_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ninja_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseNinjaInfo.ninjaId cannot be set twice.');
					}
					++ninja_id$count;
					this.ninjaId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (ninja_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseNinjaInfo.ninjaLevel cannot be set twice.');
					}
					++ninja_level$count;
					this.ninjaLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
