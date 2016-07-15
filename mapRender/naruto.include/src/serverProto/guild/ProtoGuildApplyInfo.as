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
	public  final class ProtoGuildApplyInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildApplyInfo.player_id", "playerId", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

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
		public static const PLAYER_NICK:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildApplyInfo.player_nick", "playerNick", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var player_nick$field:String;

		public function clearPlayerNick():void {
			player_nick$field = null;
		}

		public function get hasPlayerNick():Boolean {
			return player_nick$field != null;
		}

		public function set playerNick(value:String):void {
			player_nick$field = value;
		}

		public function get playerNick():String {
			return player_nick$field;
		}

		/**
		 *  @private
		 */
		public static const PLAYER_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildApplyInfo.player_lvl", "playerLvl", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var player_lvl$field:uint;

		private var hasField$0:uint = 0;

		public function clearPlayerLvl():void {
			hasField$0 &= 0xfffffffe;
			player_lvl$field = new uint();
		}

		public function get hasPlayerLvl():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set playerLvl(value:uint):void {
			hasField$0 |= 0x1;
			player_lvl$field = value;
		}

		public function get playerLvl():uint {
			return player_lvl$field;
		}

		/**
		 *  @private
		 */
		public static const PLAYER_COMBAT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildApplyInfo.player_combat", "playerCombat", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var player_combat$field:uint;

		public function clearPlayerCombat():void {
			hasField$0 &= 0xfffffffd;
			player_combat$field = new uint();
		}

		public function get hasPlayerCombat():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set playerCombat(value:uint):void {
			hasField$0 |= 0x2;
			player_combat$field = value;
		}

		public function get playerCombat():uint {
			return player_combat$field;
		}

		/**
		 *  @private
		 */
		public static const PLAYER_CAREER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildApplyInfo.player_career", "playerCareer", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var player_career$field:uint;

		public function clearPlayerCareer():void {
			hasField$0 &= 0xfffffffb;
			player_career$field = new uint();
		}

		public function get hasPlayerCareer():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set playerCareer(value:uint):void {
			hasField$0 |= 0x4;
			player_career$field = value;
		}

		public function get playerCareer():uint {
			return player_career$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasPlayerId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, player_id$field);
			}
			if (hasPlayerNick) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, player_nick$field);
			}
			if (hasPlayerLvl) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, player_lvl$field);
			}
			if (hasPlayerCombat) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, player_combat$field);
			}
			if (hasPlayerCareer) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, player_career$field);
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
			var player_nick$count:uint = 0;
			var player_lvl$count:uint = 0;
			var player_combat$count:uint = 0;
			var player_career$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (player_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildApplyInfo.playerId cannot be set twice.');
					}
					++player_id$count;
					this.playerId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerId);
					break;
				case 2:
					if (player_nick$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildApplyInfo.playerNick cannot be set twice.');
					}
					++player_nick$count;
					this.playerNick = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (player_lvl$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildApplyInfo.playerLvl cannot be set twice.');
					}
					++player_lvl$count;
					this.playerLvl = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (player_combat$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildApplyInfo.playerCombat cannot be set twice.');
					}
					++player_combat$count;
					this.playerCombat = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (player_career$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildApplyInfo.playerCareer cannot be set twice.');
					}
					++player_career$count;
					this.playerCareer = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
