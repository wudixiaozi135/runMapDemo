package serverProto.activity {
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
	import serverProto.inc.ProtoPlayerVipLevel;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoMergeServerBattleRank extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMergeServerBattleRank.player_id", "playerId", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

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
		public static const PLAYER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.activity.ProtoMergeServerBattleRank.player_name", "playerName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const ROLE_CATEGORY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerBattleRank.role_category", "roleCategory", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_category$field:uint;

		private var hasField$0:uint = 0;

		public function clearRoleCategory():void {
			hasField$0 &= 0xfffffffe;
			role_category$field = new uint();
		}

		public function get hasRoleCategory():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set roleCategory(value:uint):void {
			hasField$0 |= 0x1;
			role_category$field = value;
		}

		public function get roleCategory():uint {
			return role_category$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerBattleRank.role_level", "roleLevel", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_level$field:uint;

		public function clearRoleLevel():void {
			hasField$0 &= 0xfffffffd;
			role_level$field = new uint();
		}

		public function get hasRoleLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set roleLevel(value:uint):void {
			hasField$0 |= 0x2;
			role_level$field = value;
		}

		public function get roleLevel():uint {
			return role_level$field;
		}

		/**
		 *  @private
		 */
		public static const COMBAT_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerBattleRank.combat_power", "combatPower", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var combat_power$field:uint;

		public function clearCombatPower():void {
			hasField$0 &= 0xfffffffb;
			combat_power$field = new uint();
		}

		public function get hasCombatPower():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set combatPower(value:uint):void {
			hasField$0 |= 0x4;
			combat_power$field = value;
		}

		public function get combatPower():uint {
			return combat_power$field;
		}

		/**
		 *  @private
		 */
		public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.activity.ProtoMergeServerBattleRank.vip_level", "vipLevel", (6 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.ProtoPlayerVipLevel);

		private var vip_level$field:int;

		public function clearVipLevel():void {
			hasField$0 &= 0xfffffff7;
			vip_level$field = new int();
		}

		public function get hasVipLevel():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set vipLevel(value:int):void {
			hasField$0 |= 0x8;
			vip_level$field = value;
		}

		public function get vipLevel():int {
			return vip_level$field;
		}

		/**
		 *  @private
		 */
		public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMergeServerBattleRank.diamond_info", "diamondInfo", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoDiamondInfo);

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
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasPlayerId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, player_id$field);
			}
			if (hasPlayerName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, player_name$field);
			}
			if (hasRoleCategory) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, role_category$field);
			}
			if (hasRoleLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, role_level$field);
			}
			if (hasCombatPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, combat_power$field);
			}
			if (hasVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, vip_level$field);
			}
			if (hasDiamondInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, diamond_info$field);
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
			var player_name$count:uint = 0;
			var role_category$count:uint = 0;
			var role_level$count:uint = 0;
			var combat_power$count:uint = 0;
			var vip_level$count:uint = 0;
			var diamond_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (player_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMergeServerBattleRank.playerId cannot be set twice.');
					}
					++player_id$count;
					this.playerId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerId);
					break;
				case 2:
					if (player_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMergeServerBattleRank.playerName cannot be set twice.');
					}
					++player_name$count;
					this.playerName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (role_category$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMergeServerBattleRank.roleCategory cannot be set twice.');
					}
					++role_category$count;
					this.roleCategory = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (role_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMergeServerBattleRank.roleLevel cannot be set twice.');
					}
					++role_level$count;
					this.roleLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (combat_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMergeServerBattleRank.combatPower cannot be set twice.');
					}
					++combat_power$count;
					this.combatPower = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMergeServerBattleRank.vipLevel cannot be set twice.');
					}
					++vip_level$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 7:
					if (diamond_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMergeServerBattleRank.diamondInfo cannot be set twice.');
					}
					++diamond_info$count;
					this.diamondInfo = new serverProto.inc.ProtoDiamondInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.diamondInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
