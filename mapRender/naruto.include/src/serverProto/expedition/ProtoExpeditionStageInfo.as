package serverProto.expedition {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoDiamondInfo;
	import serverProto.inc.ProtoPlayerKey;
	import serverProto.expedition.ProtoExpeditionStageNinjaInfo;
	import serverProto.inc.ProtoPlayerVipLevel;
	import serverProto.expedition.ProtoExpeditionChestInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoExpeditionStageInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const STAGE_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageInfo.stage_level", "stageLevel", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var stageLevel:int;

		/**
		 *  @private
		 */
		public static const RIVAL_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageInfo.rival_level", "rivalLevel", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rival_level$field:int;

		private var hasField$0:uint = 0;

		public function clearRivalLevel():void {
			hasField$0 &= 0xfffffffe;
			rival_level$field = new int();
		}

		public function get hasRivalLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set rivalLevel(value:int):void {
			hasField$0 |= 0x1;
			rival_level$field = value;
		}

		public function get rivalLevel():int {
			return rival_level$field;
		}

		/**
		 *  @private
		 */
		public static const RIVAL_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.expedition.ProtoExpeditionStageInfo.rival_name", "rivalName", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var rival_name$field:String;

		public function clearRivalName():void {
			rival_name$field = null;
		}

		public function get hasRivalName():Boolean {
			return rival_name$field != null;
		}

		public function set rivalName(value:String):void {
			rival_name$field = value;
		}

		public function get rivalName():String {
			return rival_name$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.expedition.ProtoExpeditionStageInfo.guild_name", "guildName", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const NINJA_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoExpeditionStageInfo.ninja_list", "ninjaList", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.expedition.ProtoExpeditionStageNinjaInfo);

		[ArrayElementType("serverProto.expedition.ProtoExpeditionStageNinjaInfo")]
		public var ninjaList:Array = [];

		/**
		 *  @private
		 */
		public static const CHEST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoExpeditionStageInfo.chest", "chest", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.expedition.ProtoExpeditionChestInfo);

		private var chest$field:serverProto.expedition.ProtoExpeditionChestInfo;

		public function clearChest():void {
			chest$field = null;
		}

		public function get hasChest():Boolean {
			return chest$field != null;
		}

		public function set chest(value:serverProto.expedition.ProtoExpeditionChestInfo):void {
			chest$field = value;
		}

		public function get chest():serverProto.expedition.ProtoExpeditionChestInfo {
			return chest$field;
		}

		/**
		 *  @private
		 */
		public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.expedition.ProtoExpeditionStageInfo.vip_level", "vipLevel", (7 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.ProtoPlayerVipLevel);

		private var vip_level$field:int;

		public function clearVipLevel():void {
			hasField$0 &= 0xfffffffd;
			vip_level$field = new int();
		}

		public function get hasVipLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set vipLevel(value:int):void {
			hasField$0 |= 0x2;
			vip_level$field = value;
		}

		public function get vipLevel():int {
			return vip_level$field;
		}

		/**
		 *  @private
		 */
		public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoExpeditionStageInfo.diamond_info", "diamondInfo", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoDiamondInfo);

		private var diamond_info$field:serverProto.inc.ProtoDiamondInfo;

		public function clearDiamondInfo():void {
			diamond_info$field = null;
		}

		public function get hasDiamondInfo():Boolean {
			return diamond_info$field != null;
		}

		public function set diamondInfo(value:serverProto.inc.ProtoDiamondInfo):void {
			diamond_info$field = value;
		}

		public function get diamondInfo():serverProto.inc.ProtoDiamondInfo {
			return diamond_info$field;
		}

		/**
		 *  @private
		 */
		public static const SUMMON_MONSTER_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageInfo.summon_monster_id", "summonMonsterId", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var summon_monster_id$field:int;

		public function clearSummonMonsterId():void {
			hasField$0 &= 0xfffffffb;
			summon_monster_id$field = new int();
		}

		public function get hasSummonMonsterId():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set summonMonsterId(value:int):void {
			hasField$0 |= 0x4;
			summon_monster_id$field = value;
		}

		public function get summonMonsterId():int {
			return summon_monster_id$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD_STAGE_STATE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageInfo.award_stage_state", "awardStageState", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var award_stage_state$field:int;

		public function clearAwardStageState():void {
			hasField$0 &= 0xfffffff7;
			award_stage_state$field = new int();
		}

		public function get hasAwardStageState():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set awardStageState(value:int):void {
			hasField$0 |= 0x8;
			award_stage_state$field = value;
		}

		public function get awardStageState():int {
			return award_stage_state$field;
		}

		/**
		 *  @private
		 */
		public static const POWER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageInfo.power", "power", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var power$field:int;

		public function clearPower():void {
			hasField$0 &= 0xffffffef;
			power$field = new int();
		}

		public function get hasPower():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set power(value:int):void {
			hasField$0 |= 0x10;
			power$field = value;
		}

		public function get power():int {
			return power$field;
		}

		/**
		 *  @private
		 */
		public static const OPEN_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageInfo.open_level", "openLevel", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var open_level$field:int;

		public function clearOpenLevel():void {
			hasField$0 &= 0xffffffdf;
			open_level$field = new int();
		}

		public function get hasOpenLevel():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set openLevel(value:int):void {
			hasField$0 |= 0x20;
			open_level$field = value;
		}

		public function get openLevel():int {
			return open_level$field;
		}

		/**
		 *  @private
		 */
		public static const OPEN_STAGE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageInfo.open_stage", "openStage", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var open_stage$field:int;

		public function clearOpenStage():void {
			hasField$0 &= 0xffffffbf;
			open_stage$field = new int();
		}

		public function get hasOpenStage():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set openStage(value:int):void {
			hasField$0 |= 0x40;
			open_stage$field = value;
		}

		public function get openStage():int {
			return open_stage$field;
		}

		/**
		 *  @private
		 */
		public static const RAIDS:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageInfo.raids", "raids", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		private var raids$field:int;

		public function clearRaids():void {
			hasField$0 &= 0xffffff7f;
			raids$field = new int();
		}

		public function get hasRaids():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set raids(value:int):void {
			hasField$0 |= 0x80;
			raids$field = value;
		}

		public function get raids():int {
			return raids$field;
		}

		/**
		 *  @private
		 */
		public static const RIVAL_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoExpeditionStageInfo.rival_id", "rivalId", (15 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var rival_id$field:serverProto.inc.ProtoPlayerKey;

		public function clearRivalId():void {
			rival_id$field = null;
		}

		public function get hasRivalId():Boolean {
			return rival_id$field != null;
		}

		public function set rivalId(value:serverProto.inc.ProtoPlayerKey):void {
			rival_id$field = value;
		}

		public function get rivalId():serverProto.inc.ProtoPlayerKey {
			return rival_id$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.expedition.ProtoExpeditionStageInfo.guild_id", "guildId", (16 << 3) | com.netease.protobuf.WireType.VARINT);

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
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.stageLevel);
			if (hasRivalLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, rival_level$field);
			}
			if (hasRivalName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, rival_name$field);
			}
			if (hasGuildName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, guild_name$field);
			}
			for (var ninjaList$index:uint = 0; ninjaList$index < this.ninjaList.length; ++ninjaList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaList[ninjaList$index]);
			}
			if (hasChest) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, chest$field);
			}
			if (hasVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, vip_level$field);
			}
			if (hasDiamondInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, diamond_info$field);
			}
			if (hasSummonMonsterId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, summon_monster_id$field);
			}
			if (hasAwardStageState) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, award_stage_state$field);
			}
			if (hasPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, power$field);
			}
			if (hasOpenLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, open_level$field);
			}
			if (hasOpenStage) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, open_stage$field);
			}
			if (hasRaids) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, raids$field);
			}
			if (hasRivalId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 15);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, rival_id$field);
			}
			if (hasGuildId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 16);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, guild_id$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var stage_level$count:uint = 0;
			var rival_level$count:uint = 0;
			var rival_name$count:uint = 0;
			var guild_name$count:uint = 0;
			var chest$count:uint = 0;
			var vip_level$count:uint = 0;
			var diamond_info$count:uint = 0;
			var summon_monster_id$count:uint = 0;
			var award_stage_state$count:uint = 0;
			var power$count:uint = 0;
			var open_level$count:uint = 0;
			var open_stage$count:uint = 0;
			var raids$count:uint = 0;
			var rival_id$count:uint = 0;
			var guild_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (stage_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionStageInfo.stageLevel cannot be set twice.');
					}
					++stage_level$count;
					this.stageLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (rival_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionStageInfo.rivalLevel cannot be set twice.');
					}
					++rival_level$count;
					this.rivalLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (rival_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionStageInfo.rivalName cannot be set twice.');
					}
					++rival_name$count;
					this.rivalName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 4:
					if (guild_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionStageInfo.guildName cannot be set twice.');
					}
					++guild_name$count;
					this.guildName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 5:
					this.ninjaList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.expedition.ProtoExpeditionStageNinjaInfo()));
					break;
				case 6:
					if (chest$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionStageInfo.chest cannot be set twice.');
					}
					++chest$count;
					this.chest = new serverProto.expedition.ProtoExpeditionChestInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.chest);
					break;
				case 7:
					if (vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionStageInfo.vipLevel cannot be set twice.');
					}
					++vip_level$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 8:
					if (diamond_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionStageInfo.diamondInfo cannot be set twice.');
					}
					++diamond_info$count;
					this.diamondInfo = new serverProto.inc.ProtoDiamondInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.diamondInfo);
					break;
				case 9:
					if (summon_monster_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionStageInfo.summonMonsterId cannot be set twice.');
					}
					++summon_monster_id$count;
					this.summonMonsterId = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 10:
					if (award_stage_state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionStageInfo.awardStageState cannot be set twice.');
					}
					++award_stage_state$count;
					this.awardStageState = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 11:
					if (power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionStageInfo.power cannot be set twice.');
					}
					++power$count;
					this.power = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 12:
					if (open_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionStageInfo.openLevel cannot be set twice.');
					}
					++open_level$count;
					this.openLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 13:
					if (open_stage$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionStageInfo.openStage cannot be set twice.');
					}
					++open_stage$count;
					this.openStage = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 14:
					if (raids$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionStageInfo.raids cannot be set twice.');
					}
					++raids$count;
					this.raids = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 15:
					if (rival_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionStageInfo.rivalId cannot be set twice.');
					}
					++rival_id$count;
					this.rivalId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.rivalId);
					break;
				case 16:
					if (guild_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionStageInfo.guildId cannot be set twice.');
					}
					++guild_id$count;
					this.guildId = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
