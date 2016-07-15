package serverProto.redPackage {
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
	public  final class ProtoSendDirectRedPackageReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const FRIEND_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.redPackage.ProtoSendDirectRedPackageReq.friend_name", "friendName", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var friendName:String;

		/**
		 *  @private
		 */
		public static const RED_PACKAGE_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoSendDirectRedPackageReq.red_package_money", "redPackageMoney", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var redPackageMoney:int;

		/**
		 *  @private
		 */
		public static const MAIL_CONTENT:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.redPackage.ProtoSendDirectRedPackageReq.mail_content", "mailContent", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var mailContent:String;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.friendName);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.redPackageMoney);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.mailContent);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var friend_name$count:uint = 0;
			var red_package_money$count:uint = 0;
			var mail_content$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (friend_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendDirectRedPackageReq.friendName cannot be set twice.');
					}
					++friend_name$count;
					this.friendName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 2:
					if (red_package_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendDirectRedPackageReq.redPackageMoney cannot be set twice.');
					}
					++red_package_money$count;
					this.redPackageMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (mail_content$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendDirectRedPackageReq.mailContent cannot be set twice.');
					}
					++mail_content$count;
					this.mailContent = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
