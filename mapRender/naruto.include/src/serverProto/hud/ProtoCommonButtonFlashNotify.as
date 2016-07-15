package serverProto.hud {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.hud.ProtoHudType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoCommonButtonFlashNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BUTTON_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.hud.ProtoCommonButtonFlashNotify.button_type", "buttonType", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.hud.ProtoHudType);

		public var buttonType:int;

		/**
		 *  @private
		 */
		public static const FLASH_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.hud.ProtoCommonButtonFlashNotify.flash_status", "flashStatus", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var flashStatus:uint;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.buttonType);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.flashStatus);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var button_type$count:uint = 0;
			var flash_status$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (button_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCommonButtonFlashNotify.buttonType cannot be set twice.');
					}
					++button_type$count;
					this.buttonType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (flash_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCommonButtonFlashNotify.flashStatus cannot be set twice.');
					}
					++flash_status$count;
					this.flashStatus = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
