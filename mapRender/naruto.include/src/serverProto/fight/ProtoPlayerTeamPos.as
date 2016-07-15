package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoPlayerKey;
	import serverProto.fight.ProtoStageInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoPlayerTeamPos extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoPlayerTeamPos.player", "player", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var player$field:serverProto.inc.ProtoPlayerKey;

		public function clearPlayer():void {
			player$field = null;
		}

		public function get hasPlayer():Boolean {
			return player$field != null;
		}

		public function set player(value:serverProto.inc.ProtoPlayerKey):void {
			player$field = value;
		}

		public function get player():serverProto.inc.ProtoPlayerKey {
			return player$field;
		}

		/**
		 *  @private
		 */
		public static const TEAM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPlayerTeamPos.team_id", "teamId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var team_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearTeamId():void {
			hasField$0 &= 0xfffffffe;
			team_id$field = new uint();
		}

		public function get hasTeamId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set teamId(value:uint):void {
			hasField$0 |= 0x1;
			team_id$field = value;
		}

		public function get teamId():uint {
			return team_id$field;
		}

		/**
		 *  @private
		 */
		public static const KATHA_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPlayerTeamPos.katha_value", "kathaValue", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var katha_value$field:uint;

		public function clearKathaValue():void {
			hasField$0 &= 0xfffffffd;
			katha_value$field = new uint();
		}

		public function get hasKathaValue():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set kathaValue(value:uint):void {
			hasField$0 |= 0x2;
			katha_value$field = value;
		}

		public function get kathaValue():uint {
			return katha_value$field;
		}

		/**
		 *  @private
		 */
		public static const TEAM_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPlayerTeamPos.team_type", "teamType", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var team_type$field:uint;

		public function clearTeamType():void {
			hasField$0 &= 0xfffffffb;
			team_type$field = new uint();
		}

		public function get hasTeamType():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set teamType(value:uint):void {
			hasField$0 |= 0x4;
			team_type$field = value;
		}

		public function get teamType():uint {
			return team_type$field;
		}

		/**
		 *  @private
		 */
		public static const STAGE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoPlayerTeamPos.stage_info", "stageInfo", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoStageInfo);

		private var stage_info$field:serverProto.fight.ProtoStageInfo;

		public function clearStageInfo():void {
			stage_info$field = null;
		}

		public function get hasStageInfo():Boolean {
			return stage_info$field != null;
		}

		public function set stageInfo(value:serverProto.fight.ProtoStageInfo):void {
			stage_info$field = value;
		}

		public function get stageInfo():serverProto.fight.ProtoStageInfo {
			return stage_info$field;
		}

		/**
		 *  @private
		 */
		public static const CONTRACT_PET_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPlayerTeamPos.contract_pet_id", "contractPetId", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var contract_pet_id$field:uint;

		public function clearContractPetId():void {
			hasField$0 &= 0xfffffff7;
			contract_pet_id$field = new uint();
		}

		public function get hasContractPetId():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set contractPetId(value:uint):void {
			hasField$0 |= 0x8;
			contract_pet_id$field = value;
		}

		public function get contractPetId():uint {
			return contract_pet_id$field;
		}

		/**
		 *  @private
		 */
		public static const PLAYER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.fight.ProtoPlayerTeamPos.player_name", "playerName", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var player_name$field:String;

		public function clearPlayerName():void {
			player_name$field = null;
		}

		public function get hasPlayerName():Boolean {
			return player_name$field != null;
		}

		public function set playerName(value:String):void {
			player_name$field = value;
		}

		public function get playerName():String {
			return player_name$field;
		}

		/**
		 *  @private
		 */
		public static const OFFLINE_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPlayerTeamPos.offline_flag", "offlineFlag", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var offline_flag$field:uint;

		public function clearOfflineFlag():void {
			hasField$0 &= 0xffffffef;
			offline_flag$field = new uint();
		}

		public function get hasOfflineFlag():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set offlineFlag(value:uint):void {
			hasField$0 |= 0x10;
			offline_flag$field = value;
		}

		public function get offlineFlag():uint {
			return offline_flag$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoPlayerTeamPos.level", "level", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:int;

		public function clearLevel():void {
			hasField$0 &= 0xffffffdf;
			level$field = new int();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set level(value:int):void {
			hasField$0 |= 0x20;
			level$field = value;
		}

		public function get level():int {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const COMBAT_POWER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoPlayerTeamPos.combat_power", "combatPower", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var combat_power$field:int;

		public function clearCombatPower():void {
			hasField$0 &= 0xffffffbf;
			combat_power$field = new int();
		}

		public function get hasCombatPower():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set combatPower(value:int):void {
			hasField$0 |= 0x40;
			combat_power$field = value;
		}

		public function get combatPower():int {
			return combat_power$field;
		}

		/**
		 *  @private
		 */
		public static const FACE_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoPlayerTeamPos.face_id", "faceId", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var face_id$field:int;

		public function clearFaceId():void {
			hasField$0 &= 0xffffff7f;
			face_id$field = new int();
		}

		public function get hasFaceId():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set faceId(value:int):void {
			hasField$0 |= 0x80;
			face_id$field = value;
		}

		public function get faceId():int {
			return face_id$field;
		}

		/**
		 *  @private
		 */
		public static const MASTER_TEAM:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoPlayerTeamPos.master_team", "masterTeam", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var master_team$field:int;

		public function clearMasterTeam():void {
			hasField$0 &= 0xfffffeff;
			master_team$field = new int();
		}

		public function get hasMasterTeam():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set masterTeam(value:int):void {
			hasField$0 |= 0x100;
			master_team$field = value;
		}

		public function get masterTeam():int {
			return master_team$field;
		}

		/**
		 *  @private
		 */
		public static const HAS_LOADED_RES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoPlayerTeamPos.has_loaded_res", "hasLoadedRes", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var has_loaded_res$field:int;

		public function clearHasLoadedRes():void {
			hasField$0 &= 0xfffffdff;
			has_loaded_res$field = new int();
		}

		public function get hasHasLoadedRes():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set hasLoadedRes(value:int):void {
			hasField$0 |= 0x200;
			has_loaded_res$field = value;
		}

		public function get hasLoadedRes():int {
			return has_loaded_res$field;
		}

		/**
		 *  @private
		 */
		public static const STANCE_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoPlayerTeamPos.stance_id", "stanceId", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		private var stance_id$field:int;

		public function clearStanceId():void {
			hasField$0 &= 0xfffffbff;
			stance_id$field = new int();
		}

		public function get hasStanceId():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set stanceId(value:int):void {
			hasField$0 |= 0x400;
			stance_id$field = value;
		}

		public function get stanceId():int {
			return stance_id$field;
		}

		/**
		 *  @private
		 */
		public static const SVR_REPLACE_FLAG:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoPlayerTeamPos.svr_replace_flag", "svrReplaceFlag", (15 << 3) | com.netease.protobuf.WireType.VARINT);

		private var svr_replace_flag$field:int;

		public function clearSvrReplaceFlag():void {
			hasField$0 &= 0xfffff7ff;
			svr_replace_flag$field = new int();
		}

		public function get hasSvrReplaceFlag():Boolean {
			return (hasField$0 & 0x800) != 0;
		}

		public function set svrReplaceFlag(value:int):void {
			hasField$0 |= 0x800;
			svr_replace_flag$field = value;
		}

		public function get svrReplaceFlag():int {
			return svr_replace_flag$field;
		}

		/**
		 *  @private
		 */
		public static const AI_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoPlayerTeamPos.ai_level", "aiLevel", (16 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ai_level$field:int;

		public function clearAiLevel():void {
			hasField$0 &= 0xffffefff;
			ai_level$field = new int();
		}

		public function get hasAiLevel():Boolean {
			return (hasField$0 & 0x1000) != 0;
		}

		public function set aiLevel(value:int):void {
			hasField$0 |= 0x1000;
			ai_level$field = value;
		}

		public function get aiLevel():int {
			return ai_level$field;
		}

		/**
		 *  @private
		 */
		public static const ARENA_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoPlayerTeamPos.arena_level", "arenaLevel", (17 << 3) | com.netease.protobuf.WireType.VARINT);

		private var arena_level$field:int;

		public function clearArenaLevel():void {
			hasField$0 &= 0xffffdfff;
			arena_level$field = new int();
		}

		public function get hasArenaLevel():Boolean {
			return (hasField$0 & 0x2000) != 0;
		}

		public function set arenaLevel(value:int):void {
			hasField$0 |= 0x2000;
			arena_level$field = value;
		}

		public function get arenaLevel():int {
			return arena_level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasPlayer) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, player$field);
			}
			if (hasTeamId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, team_id$field);
			}
			if (hasKathaValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, katha_value$field);
			}
			if (hasTeamType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, team_type$field);
			}
			if (hasStageInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, stage_info$field);
			}
			if (hasContractPetId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, contract_pet_id$field);
			}
			if (hasPlayerName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, player_name$field);
			}
			if (hasOfflineFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, offline_flag$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, level$field);
			}
			if (hasCombatPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, combat_power$field);
			}
			if (hasFaceId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, face_id$field);
			}
			if (hasMasterTeam) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, master_team$field);
			}
			if (hasHasLoadedRes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, has_loaded_res$field);
			}
			if (hasStanceId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, stance_id$field);
			}
			if (hasSvrReplaceFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 15);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, svr_replace_flag$field);
			}
			if (hasAiLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 16);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, ai_level$field);
			}
			if (hasArenaLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 17);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, arena_level$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var player$count:uint = 0;
			var team_id$count:uint = 0;
			var katha_value$count:uint = 0;
			var team_type$count:uint = 0;
			var stage_info$count:uint = 0;
			var contract_pet_id$count:uint = 0;
			var player_name$count:uint = 0;
			var offline_flag$count:uint = 0;
			var level$count:uint = 0;
			var combat_power$count:uint = 0;
			var face_id$count:uint = 0;
			var master_team$count:uint = 0;
			var has_loaded_res$count:uint = 0;
			var stance_id$count:uint = 0;
			var svr_replace_flag$count:uint = 0;
			var ai_level$count:uint = 0;
			var arena_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (player$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTeamPos.player cannot be set twice.');
					}
					++player$count;
					this.player = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.player);
					break;
				case 2:
					if (team_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTeamPos.teamId cannot be set twice.');
					}
					++team_id$count;
					this.teamId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (katha_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTeamPos.kathaValue cannot be set twice.');
					}
					++katha_value$count;
					this.kathaValue = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (team_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTeamPos.teamType cannot be set twice.');
					}
					++team_type$count;
					this.teamType = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (stage_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTeamPos.stageInfo cannot be set twice.');
					}
					++stage_info$count;
					this.stageInfo = new serverProto.fight.ProtoStageInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.stageInfo);
					break;
				case 6:
					if (contract_pet_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTeamPos.contractPetId cannot be set twice.');
					}
					++contract_pet_id$count;
					this.contractPetId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (player_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTeamPos.playerName cannot be set twice.');
					}
					++player_name$count;
					this.playerName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 8:
					if (offline_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTeamPos.offlineFlag cannot be set twice.');
					}
					++offline_flag$count;
					this.offlineFlag = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTeamPos.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 10:
					if (combat_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTeamPos.combatPower cannot be set twice.');
					}
					++combat_power$count;
					this.combatPower = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 11:
					if (face_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTeamPos.faceId cannot be set twice.');
					}
					++face_id$count;
					this.faceId = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 12:
					if (master_team$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTeamPos.masterTeam cannot be set twice.');
					}
					++master_team$count;
					this.masterTeam = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 13:
					if (has_loaded_res$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTeamPos.hasLoadedRes cannot be set twice.');
					}
					++has_loaded_res$count;
					this.hasLoadedRes = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 14:
					if (stance_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTeamPos.stanceId cannot be set twice.');
					}
					++stance_id$count;
					this.stanceId = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 15:
					if (svr_replace_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTeamPos.svrReplaceFlag cannot be set twice.');
					}
					++svr_replace_flag$count;
					this.svrReplaceFlag = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 16:
					if (ai_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTeamPos.aiLevel cannot be set twice.');
					}
					++ai_level$count;
					this.aiLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 17:
					if (arena_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTeamPos.arenaLevel cannot be set twice.');
					}
					++arena_level$count;
					this.arenaLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
