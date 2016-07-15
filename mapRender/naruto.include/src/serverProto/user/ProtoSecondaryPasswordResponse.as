package serverProto.user {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.user.ProtoSecondaryPasswordInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoSecondaryPasswordResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoSecondaryPasswordResponse.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const SECONDARY_PASSWORD_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoSecondaryPasswordResponse.secondary_password_info", "secondaryPasswordInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.user.ProtoSecondaryPasswordInfo);

		private var secondary_password_info$field:serverProto.user.ProtoSecondaryPasswordInfo;

		public function clearSecondaryPasswordInfo():void {
			secondary_password_info$field = null;
		}

		public function get hasSecondaryPasswordInfo():Boolean {
			return secondary_password_info$field != null;
		}

		public function set secondaryPasswordInfo(value:serverProto.user.ProtoSecondaryPasswordInfo):void {
			secondary_password_info$field = value;
		}

		public function get secondaryPasswordInfo():serverProto.user.ProtoSecondaryPasswordInfo {
			return secondary_password_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.retInfo);
			if (hasSecondaryPasswordInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, secondary_password_info$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret_info$count:uint = 0;
			var secondary_password_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSecondaryPasswordResponse.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					if (secondary_password_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSecondaryPasswordResponse.secondaryPasswordInfo cannot be set twice.');
					}
					++secondary_password_info$count;
					this.secondaryPasswordInfo = new serverProto.user.ProtoSecondaryPasswordInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.secondaryPasswordInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
