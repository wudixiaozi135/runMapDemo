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
	public  final class ProtoNinjaToolModifyNinjaExpRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoNinjaToolModifyNinjaExpRequest.ninja_id", "ninjaId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaId:int;

		/**
		 *  @private
		 */
		public static const NINJA_EXP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoNinjaToolModifyNinjaExpRequest.ninja_exp", "ninjaExp", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaExp:int;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.ninjaId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.ninjaExp);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ninja_id$count:uint = 0;
			var ninja_exp$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ninja_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaToolModifyNinjaExpRequest.ninjaId cannot be set twice.');
					}
					++ninja_id$count;
					this.ninjaId = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (ninja_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaToolModifyNinjaExpRequest.ninjaExp cannot be set twice.');
					}
					++ninja_exp$count;
					this.ninjaExp = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
