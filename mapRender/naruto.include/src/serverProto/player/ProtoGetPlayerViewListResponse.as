package serverProto.player {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.player.ProtoPlayerShowInfo;
	import serverProto.player.ProtoTeamShowInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetPlayerViewListResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoGetPlayerViewListResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const PLAYER_VIEW_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoGetPlayerViewListResponse.player_view_list", "playerViewList", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.player.ProtoPlayerShowInfo);

		[ArrayElementType("serverProto.player.ProtoPlayerShowInfo")]
		public var playerViewList:Array = [];

		/**
		 *  @private
		 */
		public static const TEAM_MOVE_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoGetPlayerViewListResponse.team_move_list", "teamMoveList", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.player.ProtoTeamShowInfo);

		[ArrayElementType("serverProto.player.ProtoTeamShowInfo")]
		public var teamMoveList:Array = [];

		/**
		 *  @private
		 */
		public static const SELF_TEAM:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoGetPlayerViewListResponse.self_team", "selfTeam", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.player.ProtoTeamShowInfo);

		private var self_team$field:serverProto.player.ProtoTeamShowInfo;

		public function clearSelfTeam():void {
			self_team$field = null;
		}

		public function get hasSelfTeam():Boolean {
			return self_team$field != null;
		}

		public function set selfTeam(value:serverProto.player.ProtoTeamShowInfo):void {
			self_team$field = value;
		}

		public function get selfTeam():serverProto.player.ProtoTeamShowInfo {
			return self_team$field;
		}

		/**
		 *  @private
		 */
		public static const SCENE_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.player.ProtoGetPlayerViewListResponse.scene_id", "sceneId", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var scene_id$field:int;

		private var hasField$0:uint = 0;

		public function clearSceneId():void {
			hasField$0 &= 0xfffffffe;
			scene_id$field = new int();
		}

		public function get hasSceneId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set sceneId(value:int):void {
			hasField$0 |= 0x1;
			scene_id$field = value;
		}

		public function get sceneId():int {
			return scene_id$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			for (var playerViewList$index:uint = 0; playerViewList$index < this.playerViewList.length; ++playerViewList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.playerViewList[playerViewList$index]);
			}
			for (var teamMoveList$index:uint = 0; teamMoveList$index < this.teamMoveList.length; ++teamMoveList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.teamMoveList[teamMoveList$index]);
			}
			if (hasSelfTeam) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, self_team$field);
			}
			if (hasSceneId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, scene_id$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret$count:uint = 0;
			var self_team$count:uint = 0;
			var scene_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetPlayerViewListResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					this.playerViewList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.player.ProtoPlayerShowInfo()));
					break;
				case 3:
					this.teamMoveList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.player.ProtoTeamShowInfo()));
					break;
				case 4:
					if (self_team$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetPlayerViewListResponse.selfTeam cannot be set twice.');
					}
					++self_team$count;
					this.selfTeam = new serverProto.player.ProtoTeamShowInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.selfTeam);
					break;
				case 5:
					if (scene_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetPlayerViewListResponse.sceneId cannot be set twice.');
					}
					++scene_id$count;
					this.sceneId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
