package serverProto.player {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.player.ProtoPlayerShowInfo;
	import serverProto.player.ProtoTeamShowInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoMoveNotifyList extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER_MOVE_NOTIFY:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoMoveNotifyList.player_move_notify", "playerMoveNotify", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.player.ProtoPlayerShowInfo);

		[ArrayElementType("serverProto.player.ProtoPlayerShowInfo")]
		public var playerMoveNotify:Array = [];

		/**
		 *  @private
		 */
		public static const TEAM_MOVE_NOTIFY:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoMoveNotifyList.team_move_notify", "teamMoveNotify", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.player.ProtoTeamShowInfo);

		[ArrayElementType("serverProto.player.ProtoTeamShowInfo")]
		public var teamMoveNotify:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var playerMoveNotify$index:uint = 0; playerMoveNotify$index < this.playerMoveNotify.length; ++playerMoveNotify$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.playerMoveNotify[playerMoveNotify$index]);
			}
			for (var teamMoveNotify$index:uint = 0; teamMoveNotify$index < this.teamMoveNotify.length; ++teamMoveNotify$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.teamMoveNotify[teamMoveNotify$index]);
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
					this.playerMoveNotify.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.player.ProtoPlayerShowInfo()));
					break;
				case 2:
					this.teamMoveNotify.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.player.ProtoTeamShowInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
