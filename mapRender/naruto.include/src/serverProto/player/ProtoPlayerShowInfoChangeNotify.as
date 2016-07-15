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
	public  final class ProtoPlayerShowInfoChangeNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoPlayerShowInfoChangeNotify.player_info", "playerInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.player.ProtoPlayerShowInfo);

		private var player_info$field:serverProto.player.ProtoPlayerShowInfo;

		public function clearPlayerInfo():void {
			player_info$field = null;
		}

		public function get hasPlayerInfo():Boolean {
			return player_info$field != null;
		}

		public function set playerInfo(value:serverProto.player.ProtoPlayerShowInfo):void {
			player_info$field = value;
		}

		public function get playerInfo():serverProto.player.ProtoPlayerShowInfo {
			return player_info$field;
		}

		/**
		 *  @private
		 */
		public static const TEAM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoPlayerShowInfoChangeNotify.team_info", "teamInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.player.ProtoTeamShowInfo);

		private var team_info$field:serverProto.player.ProtoTeamShowInfo;

		public function clearTeamInfo():void {
			team_info$field = null;
		}

		public function get hasTeamInfo():Boolean {
			return team_info$field != null;
		}

		public function set teamInfo(value:serverProto.player.ProtoTeamShowInfo):void {
			team_info$field = value;
		}

		public function get teamInfo():serverProto.player.ProtoTeamShowInfo {
			return team_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasPlayerInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, player_info$field);
			}
			if (hasTeamInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, team_info$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var player_info$count:uint = 0;
			var team_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (player_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerShowInfoChangeNotify.playerInfo cannot be set twice.');
					}
					++player_info$count;
					this.playerInfo = new serverProto.player.ProtoPlayerShowInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerInfo);
					break;
				case 2:
					if (team_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerShowInfoChangeNotify.teamInfo cannot be set twice.');
					}
					++team_info$count;
					this.teamInfo = new serverProto.player.ProtoTeamShowInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.teamInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
