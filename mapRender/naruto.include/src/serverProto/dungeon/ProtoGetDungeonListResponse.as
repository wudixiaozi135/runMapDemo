package serverProto.dungeon {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.dungeon.ProtoFoisonDungeonInfo;
	import serverProto.dungeon.ProtoNormalDungeonInfo;
	import serverProto.dungeon.ProtoEliteDungeonInfo;
	import serverProto.dungeon.ProtoTeamDungeonInfo;
	import serverProto.dungeon.ProtoTreasureDungeonInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetDungeonListResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetDungeonListResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const NORMAL_DUNGEON_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetDungeonListResponse.normal_dungeon_list", "normalDungeonList", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.dungeon.ProtoNormalDungeonInfo);

		[ArrayElementType("serverProto.dungeon.ProtoNormalDungeonInfo")]
		public var normalDungeonList:Array = [];

		/**
		 *  @private
		 */
		public static const ELITE_DUNGEON_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetDungeonListResponse.elite_dungeon_list", "eliteDungeonList", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.dungeon.ProtoEliteDungeonInfo);

		[ArrayElementType("serverProto.dungeon.ProtoEliteDungeonInfo")]
		public var eliteDungeonList:Array = [];

		/**
		 *  @private
		 */
		public static const TEAM_DUNGEON_HAS_REWARD_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoGetDungeonListResponse.team_dungeon_has_reward_times", "teamDungeonHasRewardTimes", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var team_dungeon_has_reward_times$field:int;

		private var hasField$0:uint = 0;

		public function clearTeamDungeonHasRewardTimes():void {
			hasField$0 &= 0xfffffffe;
			team_dungeon_has_reward_times$field = new int();
		}

		public function get hasTeamDungeonHasRewardTimes():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set teamDungeonHasRewardTimes(value:int):void {
			hasField$0 |= 0x1;
			team_dungeon_has_reward_times$field = value;
		}

		public function get teamDungeonHasRewardTimes():int {
			return team_dungeon_has_reward_times$field;
		}

		/**
		 *  @private
		 */
		public static const TEAM_DUNGEON_FRIEND_REWARD_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoGetDungeonListResponse.team_dungeon_friend_reward_times", "teamDungeonFriendRewardTimes", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var team_dungeon_friend_reward_times$field:int;

		public function clearTeamDungeonFriendRewardTimes():void {
			hasField$0 &= 0xfffffffd;
			team_dungeon_friend_reward_times$field = new int();
		}

		public function get hasTeamDungeonFriendRewardTimes():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set teamDungeonFriendRewardTimes(value:int):void {
			hasField$0 |= 0x2;
			team_dungeon_friend_reward_times$field = value;
		}

		public function get teamDungeonFriendRewardTimes():int {
			return team_dungeon_friend_reward_times$field;
		}

		/**
		 *  @private
		 */
		public static const TEAM_DUNGEON_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetDungeonListResponse.team_dungeon_list", "teamDungeonList", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.dungeon.ProtoTeamDungeonInfo);

		[ArrayElementType("serverProto.dungeon.ProtoTeamDungeonInfo")]
		public var teamDungeonList:Array = [];

		/**
		 *  @private
		 */
		public static const FOISON_DUNGEON_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetDungeonListResponse.foison_dungeon_list", "foisonDungeonList", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.dungeon.ProtoFoisonDungeonInfo);

		[ArrayElementType("serverProto.dungeon.ProtoFoisonDungeonInfo")]
		public var foisonDungeonList:Array = [];

		/**
		 *  @private
		 */
		public static const TREASURE_DUNGEON_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetDungeonListResponse.treasure_dungeon_list", "treasureDungeonList", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.dungeon.ProtoTreasureDungeonInfo);

		[ArrayElementType("serverProto.dungeon.ProtoTreasureDungeonInfo")]
		public var treasureDungeonList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			for (var normalDungeonList$index:uint = 0; normalDungeonList$index < this.normalDungeonList.length; ++normalDungeonList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.normalDungeonList[normalDungeonList$index]);
			}
			for (var eliteDungeonList$index:uint = 0; eliteDungeonList$index < this.eliteDungeonList.length; ++eliteDungeonList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.eliteDungeonList[eliteDungeonList$index]);
			}
			if (hasTeamDungeonHasRewardTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, team_dungeon_has_reward_times$field);
			}
			if (hasTeamDungeonFriendRewardTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, team_dungeon_friend_reward_times$field);
			}
			for (var teamDungeonList$index:uint = 0; teamDungeonList$index < this.teamDungeonList.length; ++teamDungeonList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.teamDungeonList[teamDungeonList$index]);
			}
			for (var foisonDungeonList$index:uint = 0; foisonDungeonList$index < this.foisonDungeonList.length; ++foisonDungeonList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.foisonDungeonList[foisonDungeonList$index]);
			}
			for (var treasureDungeonList$index:uint = 0; treasureDungeonList$index < this.treasureDungeonList.length; ++treasureDungeonList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.treasureDungeonList[treasureDungeonList$index]);
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
			var team_dungeon_has_reward_times$count:uint = 0;
			var team_dungeon_friend_reward_times$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetDungeonListResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					this.normalDungeonList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.dungeon.ProtoNormalDungeonInfo()));
					break;
				case 3:
					this.eliteDungeonList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.dungeon.ProtoEliteDungeonInfo()));
					break;
				case 4:
					if (team_dungeon_has_reward_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetDungeonListResponse.teamDungeonHasRewardTimes cannot be set twice.');
					}
					++team_dungeon_has_reward_times$count;
					this.teamDungeonHasRewardTimes = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (team_dungeon_friend_reward_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetDungeonListResponse.teamDungeonFriendRewardTimes cannot be set twice.');
					}
					++team_dungeon_friend_reward_times$count;
					this.teamDungeonFriendRewardTimes = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					this.teamDungeonList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.dungeon.ProtoTeamDungeonInfo()));
					break;
				case 7:
					this.foisonDungeonList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.dungeon.ProtoFoisonDungeonInfo()));
					break;
				case 8:
					this.treasureDungeonList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.dungeon.ProtoTreasureDungeonInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
