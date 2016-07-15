package serverProto.baseInfo {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.bag.ProtoEquipInfo;
	import serverProto.baseInfo.ProtoAwakeItem;
	import serverProto.baseInfo.ProtoNinjaTryOut;
	import serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfoList;
	import serverProto.baseInfo.ProtoNinjaAwake;
	import serverProto.baseInfo.ProtoNinjaDetailInfo;
	import serverProto.baseInfo.ProtoNinjaStarInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_SEQUENCE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.ninja_sequence", "ninjaSequence", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaSequence:uint;

		/**
		 *  @private
		 */
		public static const NINJA_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.ninja_id", "ninjaId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaId:uint;

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.level", "level", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var level:uint;

		/**
		 *  @private
		 */
		public static const NINJA_STATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.ninja_state", "ninjaState", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaState:uint;

		/**
		 *  @private
		 */
		public static const DETAIL_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaInfo.detail_info", "detailInfo", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaDetailInfo);

		private var detail_info$field:serverProto.baseInfo.ProtoNinjaDetailInfo;

		public function clearDetailInfo():void {
			detail_info$field = null;
		}

		public function get hasDetailInfo():Boolean {
			return detail_info$field != null;
		}

		public function set detailInfo(value:serverProto.baseInfo.ProtoNinjaDetailInfo):void {
			detail_info$field = value;
		}

		public function get detailInfo():serverProto.baseInfo.ProtoNinjaDetailInfo {
			return detail_info$field;
		}

		/**
		 *  @private
		 */
		public static const EQUIPEMENT_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaInfo.equipement_info", "equipementInfo", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.ProtoEquipInfo);

		[ArrayElementType("serverProto.bag.ProtoEquipInfo")]
		public var equipementInfo:Array = [];

		/**
		 *  @private
		 */
		public static const AWAKEN_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.awaken_level", "awakenLevel", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var awaken_level$field:uint;

		private var hasField$0:uint = 0;

		public function clearAwakenLevel():void {
			hasField$0 &= 0xfffffffe;
			awaken_level$field = new uint();
		}

		public function get hasAwakenLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set awakenLevel(value:uint):void {
			hasField$0 |= 0x1;
			awaken_level$field = value;
		}

		public function get awakenLevel():uint {
			return awaken_level$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_AWAKE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaInfo.ninja_awake_info", "ninjaAwakeInfo", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaAwake);

		private var ninja_awake_info$field:serverProto.baseInfo.ProtoNinjaAwake;

		public function clearNinjaAwakeInfo():void {
			ninja_awake_info$field = null;
		}

		public function get hasNinjaAwakeInfo():Boolean {
			return ninja_awake_info$field != null;
		}

		public function set ninjaAwakeInfo(value:serverProto.baseInfo.ProtoNinjaAwake):void {
			ninja_awake_info$field = value;
		}

		public function get ninjaAwakeInfo():serverProto.baseInfo.ProtoNinjaAwake {
			return ninja_awake_info$field;
		}

		/**
		 *  @private
		 */
		public static const EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.exp", "exp", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var exp$field:uint;

		public function clearExp():void {
			hasField$0 &= 0xfffffffd;
			exp$field = new uint();
		}

		public function get hasExp():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set exp(value:uint):void {
			hasField$0 |= 0x2;
			exp$field = value;
		}

		public function get exp():uint {
			return exp$field;
		}

		/**
		 *  @private
		 */
		public static const FULL_EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.full_exp", "fullExp", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var full_exp$field:uint;

		public function clearFullExp():void {
			hasField$0 &= 0xfffffffb;
			full_exp$field = new uint();
		}

		public function get hasFullExp():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set fullExp(value:uint):void {
			hasField$0 |= 0x4;
			full_exp$field = value;
		}

		public function get fullExp():uint {
			return full_exp$field;
		}

		/**
		 *  @private
		 */
		public static const COMBAT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.combat", "combat", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var combat$field:uint;

		public function clearCombat():void {
			hasField$0 &= 0xfffffff7;
			combat$field = new uint();
		}

		public function get hasCombat():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set combat(value:uint):void {
			hasField$0 |= 0x8;
			combat$field = value;
		}

		public function get combat():uint {
			return combat$field;
		}

		/**
		 *  @private
		 */
		public static const MOOD:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.mood", "mood", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var mood$field:uint;

		public function clearMood():void {
			hasField$0 &= 0xffffffef;
			mood$field = new uint();
		}

		public function get hasMood():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set mood(value:uint):void {
			hasField$0 |= 0x10;
			mood$field = value;
		}

		public function get mood():uint {
			return mood$field;
		}

		/**
		 *  @private
		 */
		public static const ALL_PROFIT_RATIO:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaInfo.all_profit_ratio", "allProfitRatio", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var all_profit_ratio$field:int;

		public function clearAllProfitRatio():void {
			hasField$0 &= 0xffffffdf;
			all_profit_ratio$field = new int();
		}

		public function get hasAllProfitRatio():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set allProfitRatio(value:int):void {
			hasField$0 |= 0x20;
			all_profit_ratio$field = value;
		}

		public function get allProfitRatio():int {
			return all_profit_ratio$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_PROMOTE_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaInfo.role_promote_level", "rolePromoteLevel", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_promote_level$field:int;

		public function clearRolePromoteLevel():void {
			hasField$0 &= 0xffffffbf;
			role_promote_level$field = new int();
		}

		public function get hasRolePromoteLevel():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set rolePromoteLevel(value:int):void {
			hasField$0 |= 0x40;
			role_promote_level$field = value;
		}

		public function get rolePromoteLevel():int {
			return role_promote_level$field;
		}

		/**
		 *  @private
		 */
		public static const STAR_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaInfo.star_level", "starLevel", (15 << 3) | com.netease.protobuf.WireType.VARINT);

		private var star_level$field:int;

		public function clearStarLevel():void {
			hasField$0 &= 0xffffff7f;
			star_level$field = new int();
		}

		public function get hasStarLevel():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set starLevel(value:int):void {
			hasField$0 |= 0x80;
			star_level$field = value;
		}

		public function get starLevel():int {
			return star_level$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_STAR_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaInfo.ninja_star_info", "ninjaStarInfo", (16 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaStarInfo);

		private var ninja_star_info$field:serverProto.baseInfo.ProtoNinjaStarInfo;

		public function clearNinjaStarInfo():void {
			ninja_star_info$field = null;
		}

		public function get hasNinjaStarInfo():Boolean {
			return ninja_star_info$field != null;
		}

		public function set ninjaStarInfo(value:serverProto.baseInfo.ProtoNinjaStarInfo):void {
			ninja_star_info$field = value;
		}

		public function get ninjaStarInfo():serverProto.baseInfo.ProtoNinjaStarInfo {
			return ninja_star_info$field;
		}

		/**
		 *  @private
		 */
		public static const AWAKE_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.awake_level", "awakeLevel", (17 << 3) | com.netease.protobuf.WireType.VARINT);

		private var awake_level$field:uint;

		public function clearAwakeLevel():void {
			hasField$0 &= 0xfffffeff;
			awake_level$field = new uint();
		}

		public function get hasAwakeLevel():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set awakeLevel(value:uint):void {
			hasField$0 |= 0x100;
			awake_level$field = value;
		}

		public function get awakeLevel():uint {
			return awake_level$field;
		}

		/**
		 *  @private
		 */
		public static const AWAKE_ITEM_INFOS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaInfo.awake_item_infos", "awakeItemInfos", (18 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoAwakeItem);

		[ArrayElementType("serverProto.baseInfo.ProtoAwakeItem")]
		public var awakeItemInfos:Array = [];

		/**
		 *  @private
		 */
		public static const NINJA_PIECES_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.ninja_pieces_count", "ninjaPiecesCount", (19 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_pieces_count$field:uint;

		public function clearNinjaPiecesCount():void {
			hasField$0 &= 0xfffffdff;
			ninja_pieces_count$field = new uint();
		}

		public function get hasNinjaPiecesCount():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set ninjaPiecesCount(value:uint):void {
			hasField$0 |= 0x200;
			ninja_pieces_count$field = value;
		}

		public function get ninjaPiecesCount():uint {
			return ninja_pieces_count$field;
		}

		/**
		 *  @private
		 */
		public static const UPGRADE_STAR_PIECES_NEED:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.upgrade_star_pieces_need", "upgradeStarPiecesNeed", (20 << 3) | com.netease.protobuf.WireType.VARINT);

		private var upgrade_star_pieces_need$field:uint;

		public function clearUpgradeStarPiecesNeed():void {
			hasField$0 &= 0xfffffbff;
			upgrade_star_pieces_need$field = new uint();
		}

		public function get hasUpgradeStarPiecesNeed():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set upgradeStarPiecesNeed(value:uint):void {
			hasField$0 |= 0x400;
			upgrade_star_pieces_need$field = value;
		}

		public function get upgradeStarPiecesNeed():uint {
			return upgrade_star_pieces_need$field;
		}

		/**
		 *  @private
		 */
		public static const UPGRADE_MONEY_TONGBI_NEED:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.upgrade_money_tongbi_need", "upgradeMoneyTongbiNeed", (21 << 3) | com.netease.protobuf.WireType.VARINT);

		private var upgrade_money_tongbi_need$field:uint;

		public function clearUpgradeMoneyTongbiNeed():void {
			hasField$0 &= 0xfffff7ff;
			upgrade_money_tongbi_need$field = new uint();
		}

		public function get hasUpgradeMoneyTongbiNeed():Boolean {
			return (hasField$0 & 0x800) != 0;
		}

		public function set upgradeMoneyTongbiNeed(value:uint):void {
			hasField$0 |= 0x800;
			upgrade_money_tongbi_need$field = value;
		}

		public function get upgradeMoneyTongbiNeed():uint {
			return upgrade_money_tongbi_need$field;
		}

		/**
		 *  @private
		 */
		public static const PROPERTY_STRENGTHEN_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaInfo.property_strengthen_info", "propertyStrengthenInfo", (22 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfoList);

		private var property_strengthen_info$field:serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfoList;

		public function clearPropertyStrengthenInfo():void {
			property_strengthen_info$field = null;
		}

		public function get hasPropertyStrengthenInfo():Boolean {
			return property_strengthen_info$field != null;
		}

		public function set propertyStrengthenInfo(value:serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfoList):void {
			property_strengthen_info$field = value;
		}

		public function get propertyStrengthenInfo():serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfoList {
			return property_strengthen_info$field;
		}

		/**
		 *  @private
		 */
		public static const EXPEDITION_HAS_FIGHT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.expedition_has_fight", "expeditionHasFight", (23 << 3) | com.netease.protobuf.WireType.VARINT);

		private var expedition_has_fight$field:uint;

		public function clearExpeditionHasFight():void {
			hasField$0 &= 0xffffefff;
			expedition_has_fight$field = new uint();
		}

		public function get hasExpeditionHasFight():Boolean {
			return (hasField$0 & 0x1000) != 0;
		}

		public function set expeditionHasFight(value:uint):void {
			hasField$0 |= 0x1000;
			expedition_has_fight$field = value;
		}

		public function get expeditionHasFight():uint {
			return expedition_has_fight$field;
		}

		/**
		 *  @private
		 */
		public static const ARENA_WIN_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.arena_win_flag", "arenaWinFlag", (24 << 3) | com.netease.protobuf.WireType.VARINT);

		private var arena_win_flag$field:uint;

		public function clearArenaWinFlag():void {
			hasField$0 &= 0xffffdfff;
			arena_win_flag$field = new uint();
		}

		public function get hasArenaWinFlag():Boolean {
			return (hasField$0 & 0x2000) != 0;
		}

		public function set arenaWinFlag(value:uint):void {
			hasField$0 |= 0x2000;
			arena_win_flag$field = value;
		}

		public function get arenaWinFlag():uint {
			return arena_win_flag$field;
		}

		/**
		 *  @private
		 */
		public static const TRY_OUT_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaInfo.try_out_info", "tryOutInfo", (25 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaTryOut);

		private var try_out_info$field:serverProto.baseInfo.ProtoNinjaTryOut;

		public function clearTryOutInfo():void {
			try_out_info$field = null;
		}

		public function get hasTryOutInfo():Boolean {
			return try_out_info$field != null;
		}

		public function set tryOutInfo(value:serverProto.baseInfo.ProtoNinjaTryOut):void {
			try_out_info$field = value;
		}

		public function get tryOutInfo():serverProto.baseInfo.ProtoNinjaTryOut {
			return try_out_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ninjaSequence);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ninjaId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.level);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ninjaState);
			if (hasDetailInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, detail_info$field);
			}
			for (var equipementInfo$index:uint = 0; equipementInfo$index < this.equipementInfo.length; ++equipementInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.equipementInfo[equipementInfo$index]);
			}
			if (hasAwakenLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, awaken_level$field);
			}
			if (hasNinjaAwakeInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_awake_info$field);
			}
			if (hasExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, exp$field);
			}
			if (hasFullExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, full_exp$field);
			}
			if (hasCombat) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, combat$field);
			}
			if (hasMood) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, mood$field);
			}
			if (hasAllProfitRatio) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, all_profit_ratio$field);
			}
			if (hasRolePromoteLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, role_promote_level$field);
			}
			if (hasStarLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 15);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, star_level$field);
			}
			if (hasNinjaStarInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 16);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_star_info$field);
			}
			if (hasAwakeLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 17);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, awake_level$field);
			}
			for (var awakeItemInfos$index:uint = 0; awakeItemInfos$index < this.awakeItemInfos.length; ++awakeItemInfos$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 18);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.awakeItemInfos[awakeItemInfos$index]);
			}
			if (hasNinjaPiecesCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 19);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, ninja_pieces_count$field);
			}
			if (hasUpgradeStarPiecesNeed) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 20);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, upgrade_star_pieces_need$field);
			}
			if (hasUpgradeMoneyTongbiNeed) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 21);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, upgrade_money_tongbi_need$field);
			}
			if (hasPropertyStrengthenInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 22);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, property_strengthen_info$field);
			}
			if (hasExpeditionHasFight) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 23);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, expedition_has_fight$field);
			}
			if (hasArenaWinFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 24);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, arena_win_flag$field);
			}
			if (hasTryOutInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 25);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, try_out_info$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ninja_sequence$count:uint = 0;
			var ninja_id$count:uint = 0;
			var level$count:uint = 0;
			var ninja_state$count:uint = 0;
			var detail_info$count:uint = 0;
			var awaken_level$count:uint = 0;
			var ninja_awake_info$count:uint = 0;
			var exp$count:uint = 0;
			var full_exp$count:uint = 0;
			var combat$count:uint = 0;
			var mood$count:uint = 0;
			var all_profit_ratio$count:uint = 0;
			var role_promote_level$count:uint = 0;
			var star_level$count:uint = 0;
			var ninja_star_info$count:uint = 0;
			var awake_level$count:uint = 0;
			var ninja_pieces_count$count:uint = 0;
			var upgrade_star_pieces_need$count:uint = 0;
			var upgrade_money_tongbi_need$count:uint = 0;
			var property_strengthen_info$count:uint = 0;
			var expedition_has_fight$count:uint = 0;
			var arena_win_flag$count:uint = 0;
			var try_out_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ninja_sequence$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaInfo.ninjaSequence cannot be set twice.');
					}
					++ninja_sequence$count;
					this.ninjaSequence = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (ninja_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaInfo.ninjaId cannot be set twice.');
					}
					++ninja_id$count;
					this.ninjaId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaInfo.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (ninja_state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaInfo.ninjaState cannot be set twice.');
					}
					++ninja_state$count;
					this.ninjaState = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (detail_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaInfo.detailInfo cannot be set twice.');
					}
					++detail_info$count;
					this.detailInfo = new serverProto.baseInfo.ProtoNinjaDetailInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.detailInfo);
					break;
				case 6:
					this.equipementInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.bag.ProtoEquipInfo()));
					break;
				case 7:
					if (awaken_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaInfo.awakenLevel cannot be set twice.');
					}
					++awaken_level$count;
					this.awakenLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (ninja_awake_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaInfo.ninjaAwakeInfo cannot be set twice.');
					}
					++ninja_awake_info$count;
					this.ninjaAwakeInfo = new serverProto.baseInfo.ProtoNinjaAwake();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaAwakeInfo);
					break;
				case 9:
					if (exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaInfo.exp cannot be set twice.');
					}
					++exp$count;
					this.exp = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 10:
					if (full_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaInfo.fullExp cannot be set twice.');
					}
					++full_exp$count;
					this.fullExp = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 11:
					if (combat$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaInfo.combat cannot be set twice.');
					}
					++combat$count;
					this.combat = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 12:
					if (mood$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaInfo.mood cannot be set twice.');
					}
					++mood$count;
					this.mood = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 13:
					if (all_profit_ratio$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaInfo.allProfitRatio cannot be set twice.');
					}
					++all_profit_ratio$count;
					this.allProfitRatio = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 14:
					if (role_promote_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaInfo.rolePromoteLevel cannot be set twice.');
					}
					++role_promote_level$count;
					this.rolePromoteLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 15:
					if (star_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaInfo.starLevel cannot be set twice.');
					}
					++star_level$count;
					this.starLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 16:
					if (ninja_star_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaInfo.ninjaStarInfo cannot be set twice.');
					}
					++ninja_star_info$count;
					this.ninjaStarInfo = new serverProto.baseInfo.ProtoNinjaStarInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaStarInfo);
					break;
				case 17:
					if (awake_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaInfo.awakeLevel cannot be set twice.');
					}
					++awake_level$count;
					this.awakeLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 18:
					this.awakeItemInfos.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.baseInfo.ProtoAwakeItem()));
					break;
				case 19:
					if (ninja_pieces_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaInfo.ninjaPiecesCount cannot be set twice.');
					}
					++ninja_pieces_count$count;
					this.ninjaPiecesCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 20:
					if (upgrade_star_pieces_need$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaInfo.upgradeStarPiecesNeed cannot be set twice.');
					}
					++upgrade_star_pieces_need$count;
					this.upgradeStarPiecesNeed = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 21:
					if (upgrade_money_tongbi_need$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaInfo.upgradeMoneyTongbiNeed cannot be set twice.');
					}
					++upgrade_money_tongbi_need$count;
					this.upgradeMoneyTongbiNeed = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 22:
					if (property_strengthen_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaInfo.propertyStrengthenInfo cannot be set twice.');
					}
					++property_strengthen_info$count;
					this.propertyStrengthenInfo = new serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfoList();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.propertyStrengthenInfo);
					break;
				case 23:
					if (expedition_has_fight$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaInfo.expeditionHasFight cannot be set twice.');
					}
					++expedition_has_fight$count;
					this.expeditionHasFight = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 24:
					if (arena_win_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaInfo.arenaWinFlag cannot be set twice.');
					}
					++arena_win_flag$count;
					this.arenaWinFlag = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 25:
					if (try_out_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaInfo.tryOutInfo cannot be set twice.');
					}
					++try_out_info$count;
					this.tryOutInfo = new serverProto.baseInfo.ProtoNinjaTryOut();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.tryOutInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
