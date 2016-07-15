package serverProto.user {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.user.ProtoNinjaLevelUpNotify;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaLevelUpNotifyList extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NOTIFY_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoNinjaLevelUpNotifyList.notify_list", "notifyList", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.user.ProtoNinjaLevelUpNotify);

		[ArrayElementType("serverProto.user.ProtoNinjaLevelUpNotify")]
		public var notifyList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var notifyList$index:uint = 0; notifyList$index < this.notifyList.length; ++notifyList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.notifyList[notifyList$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.notifyList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.user.ProtoNinjaLevelUpNotify()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
