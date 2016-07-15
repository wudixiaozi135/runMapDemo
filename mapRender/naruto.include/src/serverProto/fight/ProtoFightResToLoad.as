package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.ProtoPlayerTeamPos;
	import serverProto.fight.FightStartType;
	import serverProto.fight.ProtoCustomBattleInfo;
	import serverProto.fight.FightStartSubType;
	import serverProto.fight.FightBackgroundRes;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoFightResToLoad extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER_RES_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightResToLoad.player_res_info", "playerResInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoPlayerTeamPos);

		[ArrayElementType("serverProto.fight.ProtoPlayerTeamPos")]
		public var playerResInfo:Array = [];

		/**
		 *  @private
		 */
		public static const CUSTOM_BATTLE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightResToLoad.custom_battle_info", "customBattleInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoCustomBattleInfo);

		private var custom_battle_info$field:serverProto.fight.ProtoCustomBattleInfo;

		public function clearCustomBattleInfo():void {
			custom_battle_info$field = null;
		}

		public function get hasCustomBattleInfo():Boolean {
			return custom_battle_info$field != null;
		}

		public function set customBattleInfo(value:serverProto.fight.ProtoCustomBattleInfo):void {
			custom_battle_info$field = value;
		}

		public function get customBattleInfo():serverProto.fight.ProtoCustomBattleInfo {
			return custom_battle_info$field;
		}

		/**
		 *  @private
		 */
		public static const SCRIPT_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightResToLoad.script_id", "scriptId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var script_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearScriptId():void {
			hasField$0 &= 0xfffffffe;
			script_id$field = new uint();
		}

		public function get hasScriptId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set scriptId(value:uint):void {
			hasField$0 |= 0x1;
			script_id$field = value;
		}

		public function get scriptId():uint {
			return script_id$field;
		}

		/**
		 *  @private
		 */
		public static const BACKGROUND_RES:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightResToLoad.background_res", "backgroundRes", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.FightBackgroundRes);

		private var background_res$field:serverProto.fight.FightBackgroundRes;

		public function clearBackgroundRes():void {
			background_res$field = null;
		}

		public function get hasBackgroundRes():Boolean {
			return background_res$field != null;
		}

		public function set backgroundRes(value:serverProto.fight.FightBackgroundRes):void {
			background_res$field = value;
		}

		public function get backgroundRes():serverProto.fight.FightBackgroundRes {
			return background_res$field;
		}

		/**
		 *  @private
		 */
		public static const FIGHT_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoFightResToLoad.fight_type", "fightType", (5 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.fight.FightStartType);

		private var fight_type$field:int;

		public function clearFightType():void {
			hasField$0 &= 0xfffffffd;
			fight_type$field = new int();
		}

		public function get hasFightType():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set fightType(value:int):void {
			hasField$0 |= 0x2;
			fight_type$field = value;
		}

		public function get fightType():int {
			return fight_type$field;
		}

		/**
		 *  @private
		 */
		public static const TEAM_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightResToLoad.team_id", "teamId", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var team_id$field:int;

		public function clearTeamId():void {
			hasField$0 &= 0xfffffffb;
			team_id$field = new int();
		}

		public function get hasTeamId():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set teamId(value:int):void {
			hasField$0 |= 0x4;
			team_id$field = value;
		}

		public function get teamId():int {
			return team_id$field;
		}

		/**
		 *  @private
		 */
		public static const WORLD_BOSS_FAINT_ROUND:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightResToLoad.world_boss_faint_round", "worldBossFaintRound", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var world_boss_faint_round$field:int;

		public function clearWorldBossFaintRound():void {
			hasField$0 &= 0xfffffff7;
			world_boss_faint_round$field = new int();
		}

		public function get hasWorldBossFaintRound():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set worldBossFaintRound(value:int):void {
			hasField$0 |= 0x8;
			world_boss_faint_round$field = value;
		}

		public function get worldBossFaintRound():int {
			return world_boss_faint_round$field;
		}

		/**
		 *  @private
		 */
		public static const HAS_START_TIPS:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightResToLoad.has_start_tips", "hasStartTips", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var has_start_tips$field:int;

		public function clearHasStartTips():void {
			hasField$0 &= 0xffffffef;
			has_start_tips$field = new int();
		}

		public function get hasHasStartTips():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set hasStartTips(value:int):void {
			hasField$0 |= 0x10;
			has_start_tips$field = value;
		}

		public function get hasStartTips():int {
			return has_start_tips$field;
		}

		/**
		 *  @private
		 */
		public static const FIGHT_SUB_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoFightResToLoad.fight_sub_type", "fightSubType", (9 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.fight.FightStartSubType);

		private var fight_sub_type$field:int;

		public function clearFightSubType():void {
			hasField$0 &= 0xffffffdf;
			fight_sub_type$field = new int();
		}

		public function get hasFightSubType():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set fightSubType(value:int):void {
			hasField$0 |= 0x20;
			fight_sub_type$field = value;
		}

		public function get fightSubType():int {
			return fight_sub_type$field;
		}

		/**
		 *  @private
		 */
		public static const SYNC_TIMEOUT_SEC:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightResToLoad.sync_timeout_sec", "syncTimeoutSec", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var sync_timeout_sec$field:int;

		public function clearSyncTimeoutSec():void {
			hasField$0 &= 0xffffffbf;
			sync_timeout_sec$field = new int();
		}

		public function get hasSyncTimeoutSec():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set syncTimeoutSec(value:int):void {
			hasField$0 |= 0x40;
			sync_timeout_sec$field = value;
		}

		public function get syncTimeoutSec():int {
			return sync_timeout_sec$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var playerResInfo$index:uint = 0; playerResInfo$index < this.playerResInfo.length; ++playerResInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.playerResInfo[playerResInfo$index]);
			}
			if (hasCustomBattleInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, custom_battle_info$field);
			}
			if (hasScriptId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, script_id$field);
			}
			if (hasBackgroundRes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, background_res$field);
			}
			if (hasFightType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, fight_type$field);
			}
			if (hasTeamId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, team_id$field);
			}
			if (hasWorldBossFaintRound) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, world_boss_faint_round$field);
			}
			if (hasHasStartTips) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, has_start_tips$field);
			}
			if (hasFightSubType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, fight_sub_type$field);
			}
			if (hasSyncTimeoutSec) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, sync_timeout_sec$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var custom_battle_info$count:uint = 0;
			var script_id$count:uint = 0;
			var background_res$count:uint = 0;
			var fight_type$count:uint = 0;
			var team_id$count:uint = 0;
			var world_boss_faint_round$count:uint = 0;
			var has_start_tips$count:uint = 0;
			var fight_sub_type$count:uint = 0;
			var sync_timeout_sec$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.playerResInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoPlayerTeamPos()));
					break;
				case 2:
					if (custom_battle_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightResToLoad.customBattleInfo cannot be set twice.');
					}
					++custom_battle_info$count;
					this.customBattleInfo = new serverProto.fight.ProtoCustomBattleInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.customBattleInfo);
					break;
				case 3:
					if (script_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightResToLoad.scriptId cannot be set twice.');
					}
					++script_id$count;
					this.scriptId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (background_res$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightResToLoad.backgroundRes cannot be set twice.');
					}
					++background_res$count;
					this.backgroundRes = new serverProto.fight.FightBackgroundRes();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.backgroundRes);
					break;
				case 5:
					if (fight_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightResToLoad.fightType cannot be set twice.');
					}
					++fight_type$count;
					this.fightType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 6:
					if (team_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightResToLoad.teamId cannot be set twice.');
					}
					++team_id$count;
					this.teamId = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 7:
					if (world_boss_faint_round$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightResToLoad.worldBossFaintRound cannot be set twice.');
					}
					++world_boss_faint_round$count;
					this.worldBossFaintRound = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 8:
					if (has_start_tips$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightResToLoad.hasStartTips cannot be set twice.');
					}
					++has_start_tips$count;
					this.hasStartTips = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 9:
					if (fight_sub_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightResToLoad.fightSubType cannot be set twice.');
					}
					++fight_sub_type$count;
					this.fightSubType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 10:
					if (sync_timeout_sec$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightResToLoad.syncTimeoutSec cannot be set twice.');
					}
					++sync_timeout_sec$count;
					this.syncTimeoutSec = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
