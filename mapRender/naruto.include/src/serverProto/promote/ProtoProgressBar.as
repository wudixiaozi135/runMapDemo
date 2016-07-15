package serverProto.promote {
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
	public  final class ProtoProgressBar extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NUMERATOR:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.promote.ProtoProgressBar.numerator", "numerator", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var numerator:int;

		/**
		 *  @private
		 */
		public static const DENOMINATOR:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.promote.ProtoProgressBar.denominator", "denominator", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var denominator:int;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.numerator);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.denominator);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var numerator$count:uint = 0;
			var denominator$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (numerator$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoProgressBar.numerator cannot be set twice.');
					}
					++numerator$count;
					this.numerator = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (denominator$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoProgressBar.denominator cannot be set twice.');
					}
					++denominator$count;
					this.denominator = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
