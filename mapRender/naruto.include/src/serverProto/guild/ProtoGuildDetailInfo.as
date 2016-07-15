package serverProto.guild {
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
	public  final class ProtoGuildDetailInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const GUILD_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.guild.ProtoGuildDetailInfo.guild_id", "guildId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guild_id$field:UInt64;

		public function clearGuildId():void {
			guild_id$field = null;
		}

		public function get hasGuildId():Boolean {
			return guild_id$field != null;
		}

		public function set guildId(value:UInt64):void {
			guild_id$field = value;
		}

		public function get guildId():UInt64 {
			return guild_id$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildDetailInfo.guild_name", "guildName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var guild_name$field:String;

		public function clearGuildName():void {
			guild_name$field = null;
		}

		public function get hasGuildName():Boolean {
			return guild_name$field != null;
		}

		public function set guildName(value:String):void {
			guild_name$field = value;
		}

		public function get guildName():String {
			return guild_name$field;
		}

		/**
		 *  @private
		 */
		public static const CHIEF_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildDetailInfo.chief_id", "chiefId", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var chief_id$field:serverProto.inc.ProtoPlayerKey;

		public function clearChiefId():void {
			chief_id$field = null;
		}

		public function get hasChiefId():Boolean {
			return chief_id$field != null;
		}

		public function set chiefId(value:serverProto.inc.ProtoPlayerKey):void {
			chief_id$field = value;
		}

		public function get chiefId():serverProto.inc.ProtoPlayerKey {
			return chief_id$field;
		}

		/**
		 *  @private
		 */
		public static const CHIEF_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildDetailInfo.chief_name", "chiefName", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var chief_name$field:String;

		public function clearChiefName():void {
			chief_name$field = null;
		}

		public function get hasChiefName():Boolean {
			return chief_name$field != null;
		}

		public function set chiefName(value:String):void {
			chief_name$field = value;
		}

		public function get chiefName():String {
			return chief_name$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDetailInfo.guild_lvl", "guildLvl", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guild_lvl$field:uint;

		private var hasField$0:uint = 0;

		public function clearGuildLvl():void {
			hasField$0 &= 0xfffffffe;
			guild_lvl$field = new uint();
		}

		public function get hasGuildLvl():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set guildLvl(value:uint):void {
			hasField$0 |= 0x1;
			guild_lvl$field = value;
		}

		public function get guildLvl():uint {
			return guild_lvl$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_FUNDS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDetailInfo.guild_funds", "guildFunds", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guild_funds$field:uint;

		public function clearGuildFunds():void {
			hasField$0 &= 0xfffffffd;
			guild_funds$field = new uint();
		}

		public function get hasGuildFunds():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set guildFunds(value:uint):void {
			hasField$0 |= 0x2;
			guild_funds$field = value;
		}

		public function get guildFunds():uint {
			return guild_funds$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_MEMBER_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDetailInfo.guild_member_num", "guildMemberNum", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guild_member_num$field:uint;

		public function clearGuildMemberNum():void {
			hasField$0 &= 0xfffffffb;
			guild_member_num$field = new uint();
		}

		public function get hasGuildMemberNum():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set guildMemberNum(value:uint):void {
			hasField$0 |= 0x4;
			guild_member_num$field = value;
		}

		public function get guildMemberNum():uint {
			return guild_member_num$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_GUILD_MEMBER_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDetailInfo.max_guild_member_num", "maxGuildMemberNum", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_guild_member_num$field:uint;

		public function clearMaxGuildMemberNum():void {
			hasField$0 &= 0xfffffff7;
			max_guild_member_num$field = new uint();
		}

		public function get hasMaxGuildMemberNum():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set maxGuildMemberNum(value:uint):void {
			hasField$0 |= 0x8;
			max_guild_member_num$field = value;
		}

		public function get maxGuildMemberNum():uint {
			return max_guild_member_num$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_QQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDetailInfo.guild_qq", "guildQq", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guild_qq$field:uint;

		public function clearGuildQq():void {
			hasField$0 &= 0xffffffef;
			guild_qq$field = new uint();
		}

		public function get hasGuildQq():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set guildQq(value:uint):void {
			hasField$0 |= 0x10;
			guild_qq$field = value;
		}

		public function get guildQq():uint {
			return guild_qq$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_ANNO:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildDetailInfo.guild_anno", "guildAnno", (10 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var guild_anno$field:String;

		public function clearGuildAnno():void {
			guild_anno$field = null;
		}

		public function get hasGuildAnno():Boolean {
			return guild_anno$field != null;
		}

		public function set guildAnno(value:String):void {
			guild_anno$field = value;
		}

		public function get guildAnno():String {
			return guild_anno$field;
		}

		/**
		 *  @private
		 */
		public static const LUCKY_WHEEL_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDetailInfo.lucky_wheel_lvl", "luckyWheelLvl", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var lucky_wheel_lvl$field:uint;

		public function clearLuckyWheelLvl():void {
			hasField$0 &= 0xffffffdf;
			lucky_wheel_lvl$field = new uint();
		}

		public function get hasLuckyWheelLvl():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set luckyWheelLvl(value:uint):void {
			hasField$0 |= 0x20;
			lucky_wheel_lvl$field = value;
		}

		public function get luckyWheelLvl():uint {
			return lucky_wheel_lvl$field;
		}

		/**
		 *  @private
		 */
		public static const SKILL_STUDY_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDetailInfo.skill_study_lvl", "skillStudyLvl", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var skill_study_lvl$field:uint;

		public function clearSkillStudyLvl():void {
			hasField$0 &= 0xffffffbf;
			skill_study_lvl$field = new uint();
		}

		public function get hasSkillStudyLvl():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set skillStudyLvl(value:uint):void {
			hasField$0 |= 0x40;
			skill_study_lvl$field = value;
		}

		public function get skillStudyLvl():uint {
			return skill_study_lvl$field;
		}

		/**
		 *  @private
		 */
		public static const CUR_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDetailInfo.cur_time", "curTime", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var cur_time$field:uint;

		public function clearCurTime():void {
			hasField$0 &= 0xffffff7f;
			cur_time$field = new uint();
		}

		public function get hasCurTime():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set curTime(value:uint):void {
			hasField$0 |= 0x80;
			cur_time$field = value;
		}

		public function get curTime():uint {
			return cur_time$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_LIVENESS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDetailInfo.guild_liveness", "guildLiveness", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guild_liveness$field:uint;

		public function clearGuildLiveness():void {
			hasField$0 &= 0xfffffeff;
			guild_liveness$field = new uint();
		}

		public function get hasGuildLiveness():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set guildLiveness(value:uint):void {
			hasField$0 |= 0x100;
			guild_liveness$field = value;
		}

		public function get guildLiveness():uint {
			return guild_liveness$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_DAILY_GUILD_LIVENESS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDetailInfo.max_daily_guild_liveness", "maxDailyGuildLiveness", (15 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_daily_guild_liveness$field:uint;

		public function clearMaxDailyGuildLiveness():void {
			hasField$0 &= 0xfffffdff;
			max_daily_guild_liveness$field = new uint();
		}

		public function get hasMaxDailyGuildLiveness():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set maxDailyGuildLiveness(value:uint):void {
			hasField$0 |= 0x200;
			max_daily_guild_liveness$field = value;
		}

		public function get maxDailyGuildLiveness():uint {
			return max_daily_guild_liveness$field;
		}

		/**
		 *  @private
		 */
		public static const LAST_THREE_DAYS_GUILD_LIVENESS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDetailInfo.last_three_days_guild_liveness", "lastThreeDaysGuildLiveness", (16 << 3) | com.netease.protobuf.WireType.VARINT);

		private var last_three_days_guild_liveness$field:uint;

		public function clearLastThreeDaysGuildLiveness():void {
			hasField$0 &= 0xfffffbff;
			last_three_days_guild_liveness$field = new uint();
		}

		public function get hasLastThreeDaysGuildLiveness():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set lastThreeDaysGuildLiveness(value:uint):void {
			hasField$0 |= 0x400;
			last_three_days_guild_liveness$field = value;
		}

		public function get lastThreeDaysGuildLiveness():uint {
			return last_three_days_guild_liveness$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasGuildId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, guild_id$field);
			}
			if (hasGuildName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, guild_name$field);
			}
			if (hasChiefId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, chief_id$field);
			}
			if (hasChiefName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, chief_name$field);
			}
			if (hasGuildLvl) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, guild_lvl$field);
			}
			if (hasGuildFunds) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, guild_funds$field);
			}
			if (hasGuildMemberNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, guild_member_num$field);
			}
			if (hasMaxGuildMemberNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, max_guild_member_num$field);
			}
			if (hasGuildQq) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, guild_qq$field);
			}
			if (hasGuildAnno) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, guild_anno$field);
			}
			if (hasLuckyWheelLvl) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, lucky_wheel_lvl$field);
			}
			if (hasSkillStudyLvl) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, skill_study_lvl$field);
			}
			if (hasCurTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, cur_time$field);
			}
			if (hasGuildLiveness) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, guild_liveness$field);
			}
			if (hasMaxDailyGuildLiveness) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 15);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, max_daily_guild_liveness$field);
			}
			if (hasLastThreeDaysGuildLiveness) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 16);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, last_three_days_guild_liveness$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var guild_id$count:uint = 0;
			var guild_name$count:uint = 0;
			var chief_id$count:uint = 0;
			var chief_name$count:uint = 0;
			var guild_lvl$count:uint = 0;
			var guild_funds$count:uint = 0;
			var guild_member_num$count:uint = 0;
			var max_guild_member_num$count:uint = 0;
			var guild_qq$count:uint = 0;
			var guild_anno$count:uint = 0;
			var lucky_wheel_lvl$count:uint = 0;
			var skill_study_lvl$count:uint = 0;
			var cur_time$count:uint = 0;
			var guild_liveness$count:uint = 0;
			var max_daily_guild_liveness$count:uint = 0;
			var last_three_days_guild_liveness$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (guild_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDetailInfo.guildId cannot be set twice.');
					}
					++guild_id$count;
					this.guildId = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 2:
					if (guild_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDetailInfo.guildName cannot be set twice.');
					}
					++guild_name$count;
					this.guildName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (chief_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDetailInfo.chiefId cannot be set twice.');
					}
					++chief_id$count;
					this.chiefId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.chiefId);
					break;
				case 4:
					if (chief_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDetailInfo.chiefName cannot be set twice.');
					}
					++chief_name$count;
					this.chiefName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 5:
					if (guild_lvl$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDetailInfo.guildLvl cannot be set twice.');
					}
					++guild_lvl$count;
					this.guildLvl = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (guild_funds$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDetailInfo.guildFunds cannot be set twice.');
					}
					++guild_funds$count;
					this.guildFunds = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (guild_member_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDetailInfo.guildMemberNum cannot be set twice.');
					}
					++guild_member_num$count;
					this.guildMemberNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (max_guild_member_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDetailInfo.maxGuildMemberNum cannot be set twice.');
					}
					++max_guild_member_num$count;
					this.maxGuildMemberNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (guild_qq$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDetailInfo.guildQq cannot be set twice.');
					}
					++guild_qq$count;
					this.guildQq = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 10:
					if (guild_anno$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDetailInfo.guildAnno cannot be set twice.');
					}
					++guild_anno$count;
					this.guildAnno = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 11:
					if (lucky_wheel_lvl$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDetailInfo.luckyWheelLvl cannot be set twice.');
					}
					++lucky_wheel_lvl$count;
					this.luckyWheelLvl = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 12:
					if (skill_study_lvl$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDetailInfo.skillStudyLvl cannot be set twice.');
					}
					++skill_study_lvl$count;
					this.skillStudyLvl = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 13:
					if (cur_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDetailInfo.curTime cannot be set twice.');
					}
					++cur_time$count;
					this.curTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 14:
					if (guild_liveness$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDetailInfo.guildLiveness cannot be set twice.');
					}
					++guild_liveness$count;
					this.guildLiveness = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 15:
					if (max_daily_guild_liveness$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDetailInfo.maxDailyGuildLiveness cannot be set twice.');
					}
					++max_daily_guild_liveness$count;
					this.maxDailyGuildLiveness = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 16:
					if (last_three_days_guild_liveness$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDetailInfo.lastThreeDaysGuildLiveness cannot be set twice.');
					}
					++last_three_days_guild_liveness$count;
					this.lastThreeDaysGuildLiveness = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
