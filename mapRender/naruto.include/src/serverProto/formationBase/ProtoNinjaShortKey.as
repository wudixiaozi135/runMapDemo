package serverProto.formationBase {
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
	public  final class ProtoNinjaShortKey extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SHORT_KEY_0:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.formationBase.ProtoNinjaShortKey.short_key_0", "shortKey_0", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var shortKey_0:int;

		/**
		 *  @private
		 */
		public static const SHORT_KEY_1:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.formationBase.ProtoNinjaShortKey.short_key_1", "shortKey_1", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var shortKey_1:int;

		/**
		 *  @private
		 */
		public static const SHORT_KEY_2:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.formationBase.ProtoNinjaShortKey.short_key_2", "shortKey_2", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var shortKey_2:int;

		/**
		 *  @private
		 */
		public static const SHORT_KEY_3:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.formationBase.ProtoNinjaShortKey.short_key_3", "shortKey_3", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var shortKey_3:int;

		/**
		 *  @private
		 */
		public static const SHORT_KEY_4:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.formationBase.ProtoNinjaShortKey.short_key_4", "shortKey_4", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		public var shortKey_4:int;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.shortKey_0);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.shortKey_1);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.shortKey_2);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.shortKey_3);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.shortKey_4);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var short_key_0$count:uint = 0;
			var short_key_1$count:uint = 0;
			var short_key_2$count:uint = 0;
			var short_key_3$count:uint = 0;
			var short_key_4$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (short_key_0$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaShortKey.shortKey_0 cannot be set twice.');
					}
					++short_key_0$count;
					this.shortKey_0 = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (short_key_1$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaShortKey.shortKey_1 cannot be set twice.');
					}
					++short_key_1$count;
					this.shortKey_1 = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (short_key_2$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaShortKey.shortKey_2 cannot be set twice.');
					}
					++short_key_2$count;
					this.shortKey_2 = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (short_key_3$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaShortKey.shortKey_3 cannot be set twice.');
					}
					++short_key_3$count;
					this.shortKey_3 = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (short_key_4$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaShortKey.shortKey_4 cannot be set twice.');
					}
					++short_key_4$count;
					this.shortKey_4 = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
