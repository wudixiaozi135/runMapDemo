package serverProto.team {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.team.ProtoTeamMemberInfo;
	import serverProto.team.ProtoTeamType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoAllTeamInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TEAM_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.team.ProtoAllTeamInfo.team_id", "teamId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var teamId:UInt64;

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.team.ProtoAllTeamInfo.name", "name", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var name$field:String;

		public function clearName():void {
			name$field = null;
		}

		public function get hasName():Boolean {
			return name$field != null;
		}

		public function set name(value:String):void {
			name$field = value;
		}

		public function get name():String {
			return name$field;
		}

		/**
		 *  @private
		 */
		public static const COMBAT_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoAllTeamInfo.combat_power", "combatPower", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var combat_power$field:uint;

		private var hasField$0:uint = 0;

		public function clearCombatPower():void {
			hasField$0 &= 0xfffffffe;
			combat_power$field = new uint();
		}

		public function get hasCombatPower():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set combatPower(value:uint):void {
			hasField$0 |= 0x1;
			combat_power$field = value;
		}

		public function get combatPower():uint {
			return combat_power$field;
		}

		/**
		 *  @private
		 */
		public static const CAPTAIN_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoAllTeamInfo.captain_level", "captainLevel", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var captain_level$field:uint;

		public function clearCaptainLevel():void {
			hasField$0 &= 0xfffffffd;
			captain_level$field = new uint();
		}

		public function get hasCaptainLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set captainLevel(value:uint):void {
			hasField$0 |= 0x2;
			captain_level$field = value;
		}

		public function get captainLevel():uint {
			return captain_level$field;
		}

		/**
		 *  @private
		 */
		public static const MEMBER_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoAllTeamInfo.member_info", "memberInfo", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.team.ProtoTeamMemberInfo);

		[ArrayElementType("serverProto.team.ProtoTeamMemberInfo")]
		public var memberInfo:Array = [];

		/**
		 *  @private
		 */
		public static const GOAL_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoAllTeamInfo.goal_type", "goalType", (6 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.team.ProtoTeamType);

		private var goal_type$field:int;

		public function clearGoalType():void {
			hasField$0 &= 0xfffffffb;
			goal_type$field = new int();
		}

		public function get hasGoalType():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set goalType(value:int):void {
			hasField$0 |= 0x4;
			goal_type$field = value;
		}

		public function get goalType():int {
			return goal_type$field;
		}

		/**
		 *  @private
		 */
		public static const GOAL_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoAllTeamInfo.goal_id", "goalId", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var goal_id$field:uint;

		public function clearGoalId():void {
			hasField$0 &= 0xfffffff7;
			goal_id$field = new uint();
		}

		public function get hasGoalId():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set goalId(value:uint):void {
			hasField$0 |= 0x8;
			goal_id$field = value;
		}

		public function get goalId():uint {
			return goal_id$field;
		}

		/**
		 *  @private
		 */
		public static const CURRENT_MAP_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoAllTeamInfo.current_map_id", "currentMapId", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_map_id$field:uint;

		public function clearCurrentMapId():void {
			hasField$0 &= 0xffffffef;
			current_map_id$field = new uint();
		}

		public function get hasCurrentMapId():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set currentMapId(value:uint):void {
			hasField$0 |= 0x10;
			current_map_id$field = value;
		}

		public function get currentMapId():uint {
			return current_map_id$field;
		}

		/**
		 *  @private
		 */
		public static const ALLOW_AUTO_JOIN:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.team.ProtoAllTeamInfo.allow_auto_join", "allowAutoJoin", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var allow_auto_join$field:Boolean;

		public function clearAllowAutoJoin():void {
			hasField$0 &= 0xffffffdf;
			allow_auto_join$field = new Boolean();
		}

		public function get hasAllowAutoJoin():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set allowAutoJoin(value:Boolean):void {
			hasField$0 |= 0x20;
			allow_auto_join$field = value;
		}

		public function get allowAutoJoin():Boolean {
			return allow_auto_join$field;
		}

		/**
		 *  @private
		 */
		public static const AUTO_JOIN_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoAllTeamInfo.auto_join_level", "autoJoinLevel", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var auto_join_level$field:uint;

		public function clearAutoJoinLevel():void {
			hasField$0 &= 0xffffffbf;
			auto_join_level$field = new uint();
		}

		public function get hasAutoJoinLevel():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set autoJoinLevel(value:uint):void {
			hasField$0 |= 0x40;
			auto_join_level$field = value;
		}

		public function get autoJoinLevel():uint {
			return auto_join_level$field;
		}

		/**
		 *  @private
		 */
		public static const IS_IDLE:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.team.ProtoAllTeamInfo.is_idle", "isIdle", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_idle$field:Boolean;

		public function clearIsIdle():void {
			hasField$0 &= 0xffffff7f;
			is_idle$field = new Boolean();
		}

		public function get hasIsIdle():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set isIdle(value:Boolean):void {
			hasField$0 |= 0x80;
			is_idle$field = value;
		}

		public function get isIdle():Boolean {
			return is_idle$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoAllTeamInfo.guild_level", "guildLevel", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guild_level$field:uint;

		public function clearGuildLevel():void {
			hasField$0 &= 0xfffffeff;
			guild_level$field = new uint();
		}

		public function get hasGuildLevel():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set guildLevel(value:uint):void {
			hasField$0 |= 0x100;
			guild_level$field = value;
		}

		public function get guildLevel():uint {
			return guild_level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, this.teamId);
			if (hasName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, name$field);
			}
			if (hasCombatPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, combat_power$field);
			}
			if (hasCaptainLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, captain_level$field);
			}
			for (var memberInfo$index:uint = 0; memberInfo$index < this.memberInfo.length; ++memberInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.memberInfo[memberInfo$index]);
			}
			if (hasGoalType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, goal_type$field);
			}
			if (hasGoalId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, goal_id$field);
			}
			if (hasCurrentMapId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, current_map_id$field);
			}
			if (hasAllowAutoJoin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, allow_auto_join$field);
			}
			if (hasAutoJoinLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, auto_join_level$field);
			}
			if (hasIsIdle) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, is_idle$field);
			}
			if (hasGuildLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, guild_level$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var team_id$count:uint = 0;
			var name$count:uint = 0;
			var combat_power$count:uint = 0;
			var captain_level$count:uint = 0;
			var goal_type$count:uint = 0;
			var goal_id$count:uint = 0;
			var current_map_id$count:uint = 0;
			var allow_auto_join$count:uint = 0;
			var auto_join_level$count:uint = 0;
			var is_idle$count:uint = 0;
			var guild_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (team_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAllTeamInfo.teamId cannot be set twice.');
					}
					++team_id$count;
					this.teamId = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 2:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAllTeamInfo.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (combat_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAllTeamInfo.combatPower cannot be set twice.');
					}
					++combat_power$count;
					this.combatPower = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (captain_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAllTeamInfo.captainLevel cannot be set twice.');
					}
					++captain_level$count;
					this.captainLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					this.memberInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.team.ProtoTeamMemberInfo()));
					break;
				case 6:
					if (goal_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAllTeamInfo.goalType cannot be set twice.');
					}
					++goal_type$count;
					this.goalType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 7:
					if (goal_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAllTeamInfo.goalId cannot be set twice.');
					}
					++goal_id$count;
					this.goalId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (current_map_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAllTeamInfo.currentMapId cannot be set twice.');
					}
					++current_map_id$count;
					this.currentMapId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (allow_auto_join$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAllTeamInfo.allowAutoJoin cannot be set twice.');
					}
					++allow_auto_join$count;
					this.allowAutoJoin = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 10:
					if (auto_join_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAllTeamInfo.autoJoinLevel cannot be set twice.');
					}
					++auto_join_level$count;
					this.autoJoinLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 11:
					if (is_idle$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAllTeamInfo.isIdle cannot be set twice.');
					}
					++is_idle$count;
					this.isIdle = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 12:
					if (guild_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAllTeamInfo.guildLevel cannot be set twice.');
					}
					++guild_level$count;
					this.guildLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
