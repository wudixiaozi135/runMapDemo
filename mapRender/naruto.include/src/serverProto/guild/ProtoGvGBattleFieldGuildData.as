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
	public  final class ProtoGvGBattleFieldGuildData extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const GUILD_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.guild.ProtoGvGBattleFieldGuildData.guild_id", "guildId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGvGBattleFieldGuildData.guild_name", "guildName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const GUILD_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGBattleFieldGuildData.guild_lvl", "guildLvl", (3 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const JOIN_MEMBER_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGBattleFieldGuildData.join_member_num", "joinMemberNum", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var join_member_num$field:uint;

		public function clearJoinMemberNum():void {
			hasField$0 &= 0xfffffffd;
			join_member_num$field = new uint();
		}

		public function get hasJoinMemberNum():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set joinMemberNum(value:uint):void {
			hasField$0 |= 0x2;
			join_member_num$field = value;
		}

		public function get joinMemberNum():uint {
			return join_member_num$field;
		}

		/**
		 *  @private
		 */
		public static const TOTAL_BATTLE_SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGBattleFieldGuildData.total_battle_score", "totalBattleScore", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_battle_score$field:uint;

		public function clearTotalBattleScore():void {
			hasField$0 &= 0xfffffffb;
			total_battle_score$field = new uint();
		}

		public function get hasTotalBattleScore():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set totalBattleScore(value:uint):void {
			hasField$0 |= 0x4;
			total_battle_score$field = value;
		}

		public function get totalBattleScore():uint {
			return total_battle_score$field;
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
			if (hasGuildLvl) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, guild_lvl$field);
			}
			if (hasJoinMemberNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, join_member_num$field);
			}
			if (hasTotalBattleScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, total_battle_score$field);
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
			var guild_lvl$count:uint = 0;
			var join_member_num$count:uint = 0;
			var total_battle_score$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (guild_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldGuildData.guildId cannot be set twice.');
					}
					++guild_id$count;
					this.guildId = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 2:
					if (guild_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldGuildData.guildName cannot be set twice.');
					}
					++guild_name$count;
					this.guildName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (guild_lvl$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldGuildData.guildLvl cannot be set twice.');
					}
					++guild_lvl$count;
					this.guildLvl = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (join_member_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldGuildData.joinMemberNum cannot be set twice.');
					}
					++join_member_num$count;
					this.joinMemberNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (total_battle_score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldGuildData.totalBattleScore cannot be set twice.');
					}
					++total_battle_score$count;
					this.totalBattleScore = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
