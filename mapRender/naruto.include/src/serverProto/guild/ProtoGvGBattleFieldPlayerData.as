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
	public  final class ProtoGvGBattleFieldPlayerData extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGBattleFieldPlayerData.player_id", "playerId", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var player_id$field:serverProto.inc.ProtoPlayerKey;

		public function clearPlayerId():void {
			player_id$field = null;
		}

		public function get hasPlayerId():Boolean {
			return player_id$field != null;
		}

		public function set playerId(value:serverProto.inc.ProtoPlayerKey):void {
			player_id$field = value;
		}

		public function get playerId():serverProto.inc.ProtoPlayerKey {
			return player_id$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGvGBattleFieldPlayerData.role_name", "roleName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var role_name$field:String;

		public function clearRoleName():void {
			role_name$field = null;
		}

		public function get hasRoleName():Boolean {
			return role_name$field != null;
		}

		public function set roleName(value:String):void {
			role_name$field = value;
		}

		public function get roleName():String {
			return role_name$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_LVL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGvGBattleFieldPlayerData.role_lvl", "roleLvl", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_lvl$field:int;

		private var hasField$0:uint = 0;

		public function clearRoleLvl():void {
			hasField$0 &= 0xfffffffe;
			role_lvl$field = new int();
		}

		public function get hasRoleLvl():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set roleLvl(value:int):void {
			hasField$0 |= 0x1;
			role_lvl$field = value;
		}

		public function get roleLvl():int {
			return role_lvl$field;
		}

		/**
		 *  @private
		 */
		public static const COMBAT_POWER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGvGBattleFieldPlayerData.combat_power", "combatPower", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var combat_power$field:int;

		public function clearCombatPower():void {
			hasField$0 &= 0xfffffffd;
			combat_power$field = new int();
		}

		public function get hasCombatPower():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set combatPower(value:int):void {
			hasField$0 |= 0x2;
			combat_power$field = value;
		}

		public function get combatPower():int {
			return combat_power$field;
		}

		/**
		 *  @private
		 */
		public static const PLAYER_STATUS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGvGBattleFieldPlayerData.player_status", "playerStatus", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var player_status$field:int;

		public function clearPlayerStatus():void {
			hasField$0 &= 0xfffffffb;
			player_status$field = new int();
		}

		public function get hasPlayerStatus():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set playerStatus(value:int):void {
			hasField$0 |= 0x4;
			player_status$field = value;
		}

		public function get playerStatus():int {
			return player_status$field;
		}

		/**
		 *  @private
		 */
		public static const FIGHT_STATUS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGvGBattleFieldPlayerData.fight_status", "fightStatus", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var fight_status$field:int;

		public function clearFightStatus():void {
			hasField$0 &= 0xfffffff7;
			fight_status$field = new int();
		}

		public function get hasFightStatus():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set fightStatus(value:int):void {
			hasField$0 |= 0x8;
			fight_status$field = value;
		}

		public function get fightStatus():int {
			return fight_status$field;
		}

		/**
		 *  @private
		 */
		public static const SEQ:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGvGBattleFieldPlayerData.seq", "seq", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var seq$field:int;

		public function clearSeq():void {
			hasField$0 &= 0xffffffef;
			seq$field = new int();
		}

		public function get hasSeq():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set seq(value:int):void {
			hasField$0 |= 0x10;
			seq$field = value;
		}

		public function get seq():int {
			return seq$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_CATEGORY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGvGBattleFieldPlayerData.role_category", "roleCategory", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_category$field:int;

		public function clearRoleCategory():void {
			hasField$0 &= 0xffffffdf;
			role_category$field = new int();
		}

		public function get hasRoleCategory():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set roleCategory(value:int):void {
			hasField$0 |= 0x20;
			role_category$field = value;
		}

		public function get roleCategory():int {
			return role_category$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasPlayerId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, player_id$field);
			}
			if (hasRoleName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, role_name$field);
			}
			if (hasRoleLvl) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, role_lvl$field);
			}
			if (hasCombatPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, combat_power$field);
			}
			if (hasPlayerStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, player_status$field);
			}
			if (hasFightStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, fight_status$field);
			}
			if (hasSeq) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, seq$field);
			}
			if (hasRoleCategory) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, role_category$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var player_id$count:uint = 0;
			var role_name$count:uint = 0;
			var role_lvl$count:uint = 0;
			var combat_power$count:uint = 0;
			var player_status$count:uint = 0;
			var fight_status$count:uint = 0;
			var seq$count:uint = 0;
			var role_category$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (player_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldPlayerData.playerId cannot be set twice.');
					}
					++player_id$count;
					this.playerId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerId);
					break;
				case 2:
					if (role_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldPlayerData.roleName cannot be set twice.');
					}
					++role_name$count;
					this.roleName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (role_lvl$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldPlayerData.roleLvl cannot be set twice.');
					}
					++role_lvl$count;
					this.roleLvl = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (combat_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldPlayerData.combatPower cannot be set twice.');
					}
					++combat_power$count;
					this.combatPower = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (player_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldPlayerData.playerStatus cannot be set twice.');
					}
					++player_status$count;
					this.playerStatus = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (fight_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldPlayerData.fightStatus cannot be set twice.');
					}
					++fight_status$count;
					this.fightStatus = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (seq$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldPlayerData.seq cannot be set twice.');
					}
					++seq$count;
					this.seq = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (role_category$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldPlayerData.roleCategory cannot be set twice.');
					}
					++role_category$count;
					this.roleCategory = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
