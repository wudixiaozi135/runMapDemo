package serverProto.guild {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.guild.ProtoGuildDetailInfo;
	import serverProto.guild.ProtoGuildActivityData;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGuildMainUIQueryRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildMainUIQueryRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		private var ret$field:serverProto.inc.ProtoRetInfo;

		public function clearRet():void {
			ret$field = null;
		}

		public function get hasRet():Boolean {
			return ret$field != null;
		}

		public function set ret(value:serverProto.inc.ProtoRetInfo):void {
			ret$field = value;
		}

		public function get ret():serverProto.inc.ProtoRetInfo {
			return ret$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildMainUIQueryRsp.guild_info", "guildInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGuildDetailInfo);

		private var guild_info$field:serverProto.guild.ProtoGuildDetailInfo;

		public function clearGuildInfo():void {
			guild_info$field = null;
		}

		public function get hasGuildInfo():Boolean {
			return guild_info$field != null;
		}

		public function set guildInfo(value:serverProto.guild.ProtoGuildDetailInfo):void {
			guild_info$field = value;
		}

		public function get guildInfo():serverProto.guild.ProtoGuildDetailInfo {
			return guild_info$field;
		}

		/**
		 *  @private
		 */
		public static const ACTIVITY_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildMainUIQueryRsp.activity_data", "activityData", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGuildActivityData);

		private var activity_data$field:serverProto.guild.ProtoGuildActivityData;

		public function clearActivityData():void {
			activity_data$field = null;
		}

		public function get hasActivityData():Boolean {
			return activity_data$field != null;
		}

		public function set activityData(value:serverProto.guild.ProtoGuildActivityData):void {
			activity_data$field = value;
		}

		public function get activityData():serverProto.guild.ProtoGuildActivityData {
			return activity_data$field;
		}

		/**
		 *  @private
		 */
		public static const NEXT_GUILD_LVL_MEMBER_ULIMIT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMainUIQueryRsp.next_guild_lvl_member_ulimit", "nextGuildLvlMemberUlimit", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var next_guild_lvl_member_ulimit$field:uint;

		private var hasField$0:uint = 0;

		public function clearNextGuildLvlMemberUlimit():void {
			hasField$0 &= 0xfffffffe;
			next_guild_lvl_member_ulimit$field = new uint();
		}

		public function get hasNextGuildLvlMemberUlimit():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set nextGuildLvlMemberUlimit(value:uint):void {
			hasField$0 |= 0x1;
			next_guild_lvl_member_ulimit$field = value;
		}

		public function get nextGuildLvlMemberUlimit():uint {
			return next_guild_lvl_member_ulimit$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_UPGRADE_COST:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMainUIQueryRsp.guild_upgrade_cost", "guildUpgradeCost", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guild_upgrade_cost$field:uint;

		public function clearGuildUpgradeCost():void {
			hasField$0 &= 0xfffffffd;
			guild_upgrade_cost$field = new uint();
		}

		public function get hasGuildUpgradeCost():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set guildUpgradeCost(value:uint):void {
			hasField$0 |= 0x2;
			guild_upgrade_cost$field = value;
		}

		public function get guildUpgradeCost():uint {
			return guild_upgrade_cost$field;
		}

		/**
		 *  @private
		 */
		public static const NEXT_LUCKY_WHEEL_ROLL_ULIMIT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMainUIQueryRsp.next_lucky_wheel_roll_ulimit", "nextLuckyWheelRollUlimit", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var next_lucky_wheel_roll_ulimit$field:uint;

		public function clearNextLuckyWheelRollUlimit():void {
			hasField$0 &= 0xfffffffb;
			next_lucky_wheel_roll_ulimit$field = new uint();
		}

		public function get hasNextLuckyWheelRollUlimit():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set nextLuckyWheelRollUlimit(value:uint):void {
			hasField$0 |= 0x4;
			next_lucky_wheel_roll_ulimit$field = value;
		}

		public function get nextLuckyWheelRollUlimit():uint {
			return next_lucky_wheel_roll_ulimit$field;
		}

		/**
		 *  @private
		 */
		public static const LUCKY_WHEEL_UPGRADE_COST:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMainUIQueryRsp.lucky_wheel_upgrade_cost", "luckyWheelUpgradeCost", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var lucky_wheel_upgrade_cost$field:uint;

		public function clearLuckyWheelUpgradeCost():void {
			hasField$0 &= 0xfffffff7;
			lucky_wheel_upgrade_cost$field = new uint();
		}

		public function get hasLuckyWheelUpgradeCost():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set luckyWheelUpgradeCost(value:uint):void {
			hasField$0 |= 0x8;
			lucky_wheel_upgrade_cost$field = value;
		}

		public function get luckyWheelUpgradeCost():uint {
			return lucky_wheel_upgrade_cost$field;
		}

		/**
		 *  @private
		 */
		public static const NEXT_GUILD_SKILL_LEARN_ULIMIT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMainUIQueryRsp.next_guild_skill_learn_ulimit", "nextGuildSkillLearnUlimit", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var next_guild_skill_learn_ulimit$field:uint;

		public function clearNextGuildSkillLearnUlimit():void {
			hasField$0 &= 0xffffffef;
			next_guild_skill_learn_ulimit$field = new uint();
		}

		public function get hasNextGuildSkillLearnUlimit():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set nextGuildSkillLearnUlimit(value:uint):void {
			hasField$0 |= 0x10;
			next_guild_skill_learn_ulimit$field = value;
		}

		public function get nextGuildSkillLearnUlimit():uint {
			return next_guild_skill_learn_ulimit$field;
		}

		/**
		 *  @private
		 */
		public static const SKILL_STUDY_UPGRADE_COST:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMainUIQueryRsp.skill_study_upgrade_cost", "skillStudyUpgradeCost", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var skill_study_upgrade_cost$field:uint;

		public function clearSkillStudyUpgradeCost():void {
			hasField$0 &= 0xffffffdf;
			skill_study_upgrade_cost$field = new uint();
		}

		public function get hasSkillStudyUpgradeCost():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set skillStudyUpgradeCost(value:uint):void {
			hasField$0 |= 0x20;
			skill_study_upgrade_cost$field = value;
		}

		public function get skillStudyUpgradeCost():uint {
			return skill_study_upgrade_cost$field;
		}

		/**
		 *  @private
		 */
		public static const CUR_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMainUIQueryRsp.cur_time", "curTime", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var cur_time$field:uint;

		public function clearCurTime():void {
			hasField$0 &= 0xffffffbf;
			cur_time$field = new uint();
		}

		public function get hasCurTime():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set curTime(value:uint):void {
			hasField$0 |= 0x40;
			cur_time$field = value;
		}

		public function get curTime():uint {
			return cur_time$field;
		}

		/**
		 *  @private
		 */
		public static const TODAY_AWARD_LIVENESS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMainUIQueryRsp.today_award_liveness", "todayAwardLiveness", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var today_award_liveness$field:uint;

		public function clearTodayAwardLiveness():void {
			hasField$0 &= 0xffffff7f;
			today_award_liveness$field = new uint();
		}

		public function get hasTodayAwardLiveness():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set todayAwardLiveness(value:uint):void {
			hasField$0 |= 0x80;
			today_award_liveness$field = value;
		}

		public function get todayAwardLiveness():uint {
			return today_award_liveness$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasGuildInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, guild_info$field);
			}
			if (hasActivityData) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, activity_data$field);
			}
			if (hasNextGuildLvlMemberUlimit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, next_guild_lvl_member_ulimit$field);
			}
			if (hasGuildUpgradeCost) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, guild_upgrade_cost$field);
			}
			if (hasNextLuckyWheelRollUlimit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, next_lucky_wheel_roll_ulimit$field);
			}
			if (hasLuckyWheelUpgradeCost) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, lucky_wheel_upgrade_cost$field);
			}
			if (hasNextGuildSkillLearnUlimit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, next_guild_skill_learn_ulimit$field);
			}
			if (hasSkillStudyUpgradeCost) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, skill_study_upgrade_cost$field);
			}
			if (hasCurTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, cur_time$field);
			}
			if (hasTodayAwardLiveness) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, today_award_liveness$field);
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
			var guild_info$count:uint = 0;
			var activity_data$count:uint = 0;
			var next_guild_lvl_member_ulimit$count:uint = 0;
			var guild_upgrade_cost$count:uint = 0;
			var next_lucky_wheel_roll_ulimit$count:uint = 0;
			var lucky_wheel_upgrade_cost$count:uint = 0;
			var next_guild_skill_learn_ulimit$count:uint = 0;
			var skill_study_upgrade_cost$count:uint = 0;
			var cur_time$count:uint = 0;
			var today_award_liveness$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildMainUIQueryRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (guild_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildMainUIQueryRsp.guildInfo cannot be set twice.');
					}
					++guild_info$count;
					this.guildInfo = new serverProto.guild.ProtoGuildDetailInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.guildInfo);
					break;
				case 3:
					if (activity_data$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildMainUIQueryRsp.activityData cannot be set twice.');
					}
					++activity_data$count;
					this.activityData = new serverProto.guild.ProtoGuildActivityData();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.activityData);
					break;
				case 4:
					if (next_guild_lvl_member_ulimit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildMainUIQueryRsp.nextGuildLvlMemberUlimit cannot be set twice.');
					}
					++next_guild_lvl_member_ulimit$count;
					this.nextGuildLvlMemberUlimit = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (guild_upgrade_cost$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildMainUIQueryRsp.guildUpgradeCost cannot be set twice.');
					}
					++guild_upgrade_cost$count;
					this.guildUpgradeCost = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (next_lucky_wheel_roll_ulimit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildMainUIQueryRsp.nextLuckyWheelRollUlimit cannot be set twice.');
					}
					++next_lucky_wheel_roll_ulimit$count;
					this.nextLuckyWheelRollUlimit = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (lucky_wheel_upgrade_cost$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildMainUIQueryRsp.luckyWheelUpgradeCost cannot be set twice.');
					}
					++lucky_wheel_upgrade_cost$count;
					this.luckyWheelUpgradeCost = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (next_guild_skill_learn_ulimit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildMainUIQueryRsp.nextGuildSkillLearnUlimit cannot be set twice.');
					}
					++next_guild_skill_learn_ulimit$count;
					this.nextGuildSkillLearnUlimit = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (skill_study_upgrade_cost$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildMainUIQueryRsp.skillStudyUpgradeCost cannot be set twice.');
					}
					++skill_study_upgrade_cost$count;
					this.skillStudyUpgradeCost = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 10:
					if (cur_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildMainUIQueryRsp.curTime cannot be set twice.');
					}
					++cur_time$count;
					this.curTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 11:
					if (today_award_liveness$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildMainUIQueryRsp.todayAwardLiveness cannot be set twice.');
					}
					++today_award_liveness$count;
					this.todayAwardLiveness = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
