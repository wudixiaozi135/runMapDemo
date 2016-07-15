package serverProto.team {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoPlayerKey;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoInviteMemberRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const INVITE_PLAYER:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoInviteMemberRequest.invite_player", "invitePlayer", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		[ArrayElementType("serverProto.inc.ProtoPlayerKey")]
		public var invitePlayer:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var invitePlayer$index:uint = 0; invitePlayer$index < this.invitePlayer.length; ++invitePlayer$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.invitePlayer[invitePlayer$index]);
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
					this.invitePlayer.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoPlayerKey()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
