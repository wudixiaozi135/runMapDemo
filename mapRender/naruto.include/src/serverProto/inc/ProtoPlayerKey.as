package serverProto.inc {
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
	public  final class ProtoPlayerKey extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const UIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.inc.ProtoPlayerKey.uin", "uin", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var uin:uint;

		/**
		 *  @private
		 */
		public static const ROLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.inc.ProtoPlayerKey.role_id", "roleId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var roleId:uint;

		/**
		 *  @private
		 */
		public static const SVR_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.inc.ProtoPlayerKey.svr_id", "svrId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var svrId:uint;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.uin);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.roleId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.svrId);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var uin$count:uint = 0;
			var role_id$count:uint = 0;
			var svr_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (uin$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerKey.uin cannot be set twice.');
					}
					++uin$count;
					this.uin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (role_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerKey.roleId cannot be set twice.');
					}
					++role_id$count;
					this.roleId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (svr_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerKey.svrId cannot be set twice.');
					}
					++svr_id$count;
					this.svrId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
