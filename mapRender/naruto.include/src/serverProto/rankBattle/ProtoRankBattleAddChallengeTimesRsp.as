package serverProto.rankBattle {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.rankBattle.ProtoRankBattlePlayerInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoRankBattleAddChallengeTimesRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoRankBattleAddChallengeTimesRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const RANK_BATTLE_PLAYER_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoRankBattleAddChallengeTimesRsp.rank_battle_player_info", "rankBattlePlayerInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.rankBattle.ProtoRankBattlePlayerInfo);

		private var rank_battle_player_info$field:serverProto.rankBattle.ProtoRankBattlePlayerInfo;

		public function clearRankBattlePlayerInfo():void {
			rank_battle_player_info$field = null;
		}

		public function get hasRankBattlePlayerInfo():Boolean {
			return rank_battle_player_info$field != null;
		}

		public function set rankBattlePlayerInfo(value:serverProto.rankBattle.ProtoRankBattlePlayerInfo):void {
			rank_battle_player_info$field = value;
		}

		public function get rankBattlePlayerInfo():serverProto.rankBattle.ProtoRankBattlePlayerInfo {
			return rank_battle_player_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasRankBattlePlayerInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, rank_battle_player_info$field);
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
			var rank_battle_player_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattleAddChallengeTimesRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (rank_battle_player_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattleAddChallengeTimesRsp.rankBattlePlayerInfo cannot be set twice.');
					}
					++rank_battle_player_info$count;
					this.rankBattlePlayerInfo = new serverProto.rankBattle.ProtoRankBattlePlayerInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.rankBattlePlayerInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
