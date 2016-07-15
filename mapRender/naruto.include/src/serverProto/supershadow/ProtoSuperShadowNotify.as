package serverProto.supershadow {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.supershadow.ProtoSuperShadowInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoSuperShadowNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SUPER_SHADOW_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.supershadow.ProtoSuperShadowNotify.super_shadow_info", "superShadowInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.supershadow.ProtoSuperShadowInfo);

		public var superShadowInfo:serverProto.supershadow.ProtoSuperShadowInfo;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.superShadowInfo);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var super_shadow_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (super_shadow_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSuperShadowNotify.superShadowInfo cannot be set twice.');
					}
					++super_shadow_info$count;
					this.superShadowInfo = new serverProto.supershadow.ProtoSuperShadowInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.superShadowInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
