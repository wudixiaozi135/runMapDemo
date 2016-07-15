package serverProto.guild {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGvGGuildCell extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const GUILD_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.guild.ProtoGvGGuildCell.guild_id", "guildId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGvGGuildCell.guild_name", "guildName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const TOTAL_SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGGuildCell.total_score", "totalScore", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_score$field:uint;

		private var hasField$0:uint = 0;

		public function clearTotalScore():void {
			hasField$0 &= 0xfffffffe;
			total_score$field = new uint();
		}

		public function get hasTotalScore():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set totalScore(value:uint):void {
			hasField$0 |= 0x1;
			total_score$field = value;
		}

		public function get totalScore():uint {
			return total_score$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGGuildCell.guild_lvl", "guildLvl", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guild_lvl$field:uint;

		public function clearGuildLvl():void {
			hasField$0 &= 0xfffffffd;
			guild_lvl$field = new uint();
		}

		public function get hasGuildLvl():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set guildLvl(value:uint):void {
			hasField$0 |= 0x2;
			guild_lvl$field = value;
		}

		public function get guildLvl():uint {
			return guild_lvl$field;
		}

		/**
		 *  @private
		 */
		public static const TOTAL_COMBAT_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGGuildCell.total_combat_power", "totalCombatPower", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_combat_power$field:uint;

		public function clearTotalCombatPower():void {
			hasField$0 &= 0xfffffffb;
			total_combat_power$field = new uint();
		}

		public function get hasTotalCombatPower():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set totalCombatPower(value:uint):void {
			hasField$0 |= 0x4;
			total_combat_power$field = value;
		}

		public function get totalCombatPower():uint {
			return total_combat_power$field;
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
			if (hasTotalScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, total_score$field);
			}
			if (hasGuildLvl) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, guild_lvl$field);
			}
			if (hasTotalCombatPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, total_combat_power$field);
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
			var total_score$count:uint = 0;
			var guild_lvl$count:uint = 0;
			var total_combat_power$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (guild_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGGuildCell.guildId cannot be set twice.');
					}
					++guild_id$count;
					this.guildId = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 2:
					if (guild_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGGuildCell.guildName cannot be set twice.');
					}
					++guild_name$count;
					this.guildName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (total_score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGGuildCell.totalScore cannot be set twice.');
					}
					++total_score$count;
					this.totalScore = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (guild_lvl$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGGuildCell.guildLvl cannot be set twice.');
					}
					++guild_lvl$count;
					this.guildLvl = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (total_combat_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGGuildCell.totalCombatPower cannot be set twice.');
					}
					++total_combat_power$count;
					this.totalCombatPower = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
