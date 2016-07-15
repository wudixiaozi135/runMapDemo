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
	import serverProto.inc.ProtoNinjaSimpleInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGuildDungeonPlayer extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildDungeonPlayer.player_id", "playerId", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

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
		public static const PLAYER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildDungeonPlayer.player_name", "playerName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const NINJA_SIMPLE_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildDungeonPlayer.ninja_simple_info", "ninjaSimpleInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoNinjaSimpleInfo);

		[ArrayElementType("serverProto.inc.ProtoNinjaSimpleInfo")]
		public var ninjaSimpleInfo:Array = [];

		/**
		 *  @private
		 */
		public static const TOTAL_COMBAT_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonPlayer.total_combat_power", "totalCombatPower", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_combat_power$field:uint;

		private var hasField$0:uint = 0;

		public function clearTotalCombatPower():void {
			hasField$0 &= 0xfffffffe;
			total_combat_power$field = new uint();
		}

		public function get hasTotalCombatPower():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set totalCombatPower(value:uint):void {
			hasField$0 |= 0x1;
			total_combat_power$field = value;
		}

		public function get totalCombatPower():uint {
			return total_combat_power$field;
		}

		/**
		 *  @private
		 */
		public static const SUMMON_MONSTER_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonPlayer.summon_monster_id", "summonMonsterId", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var summon_monster_id$field:uint;

		public function clearSummonMonsterId():void {
			hasField$0 &= 0xfffffffd;
			summon_monster_id$field = new uint();
		}

		public function get hasSummonMonsterId():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set summonMonsterId(value:uint):void {
			hasField$0 |= 0x2;
			summon_monster_id$field = value;
		}

		public function get summonMonsterId():uint {
			return summon_monster_id$field;
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
			for (var ninjaSimpleInfo$index:uint = 0; ninjaSimpleInfo$index < this.ninjaSimpleInfo.length; ++ninjaSimpleInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaSimpleInfo[ninjaSimpleInfo$index]);
			}
			if (hasTotalCombatPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, total_combat_power$field);
			}
			if (hasSummonMonsterId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, summon_monster_id$field);
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
			var total_combat_power$count:uint = 0;
			var summon_monster_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (player_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonPlayer.playerId cannot be set twice.');
					}
					++player_id$count;
					this.playerId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerId);
					break;
				case 2:
					if (player_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonPlayer.playerName cannot be set twice.');
					}
					++player_name$count;
					this.playerName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					this.ninjaSimpleInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoNinjaSimpleInfo()));
					break;
				case 4:
					if (total_combat_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonPlayer.totalCombatPower cannot be set twice.');
					}
					++total_combat_power$count;
					this.totalCombatPower = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (summon_monster_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonPlayer.summonMonsterId cannot be set twice.');
					}
					++summon_monster_id$count;
					this.summonMonsterId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
