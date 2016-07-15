package serverProto.ninjaSystem {
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
	public  final class ProtoCarryNinjaRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_SEQUENCE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaSystem.ProtoCarryNinjaRequest.ninja_sequence", "ninjaSequence", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaSequence:uint;

		/**
		 *  @private
		 */
		public static const REPLACE_NINJA_SEQUENCE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaSystem.ProtoCarryNinjaRequest.replace_ninja_sequence", "replaceNinjaSequence", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var replace_ninja_sequence$field:uint;

		private var hasField$0:uint = 0;

		public function clearReplaceNinjaSequence():void {
			hasField$0 &= 0xfffffffe;
			replace_ninja_sequence$field = new uint();
		}

		public function get hasReplaceNinjaSequence():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set replaceNinjaSequence(value:uint):void {
			hasField$0 |= 0x1;
			replace_ninja_sequence$field = value;
		}

		public function get replaceNinjaSequence():uint {
			return replace_ninja_sequence$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ninjaSequence);
			if (hasReplaceNinjaSequence) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, replace_ninja_sequence$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ninja_sequence$count:uint = 0;
			var replace_ninja_sequence$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ninja_sequence$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCarryNinjaRequest.ninjaSequence cannot be set twice.');
					}
					++ninja_sequence$count;
					this.ninjaSequence = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (replace_ninja_sequence$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCarryNinjaRequest.replaceNinjaSequence cannot be set twice.');
					}
					++replace_ninja_sequence$count;
					this.replaceNinjaSequence = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
