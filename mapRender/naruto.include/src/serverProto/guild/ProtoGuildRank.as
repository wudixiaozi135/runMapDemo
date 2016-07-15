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
	public  final class ProtoGuildRank extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RANK:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildRank.rank", "rank", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rank$field:uint;

		private var hasField$0:uint = 0;

		public function clearRank():void {
			hasField$0 &= 0xfffffffe;
			rank$field = new uint();
		}

		public function get hasRank():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set rank(value:uint):void {
			hasField$0 |= 0x1;
			rank$field = value;
		}

		public function get rank():uint {
			return rank$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.guild.ProtoGuildRank.guild_id", "guildId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildRank.guild_name", "guildName", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const GUILD_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildRank.guild_level", "guildLevel", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guild_level$field:uint;

		public function clearGuildLevel():void {
			hasField$0 &= 0xfffffffd;
			guild_level$field = new uint();
		}

		public function get hasGuildLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set guildLevel(value:uint):void {
			hasField$0 |= 0x2;
			guild_level$field = value;
		}

		public function get guildLevel():uint {
			return guild_level$field;
		}

		/**
		 *  @private
		 */
		public static const CHIEF_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildRank.chief_id", "chiefId", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var chief_id$field:serverProto.inc.ProtoPlayerKey;

		public function clearChiefId():void {
			chief_id$field = null;
		}

		public function get hasChiefId():Boolean {
			return chief_id$field != null;
		}

		public function set chiefId(value:serverProto.inc.ProtoPlayerKey):void {
			chief_id$field = value;
		}

		public function get chiefId():serverProto.inc.ProtoPlayerKey {
			return chief_id$field;
		}

		/**
		 *  @private
		 */
		public static const CHIEF_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildRank.chief_name", "chiefName", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var chief_name$field:String;

		public function clearChiefName():void {
			chief_name$field = null;
		}

		public function get hasChiefName():Boolean {
			return chief_name$field != null;
		}

		public function set chiefName(value:String):void {
			chief_name$field = value;
		}

		public function get chiefName():String {
			return chief_name$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_DATA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildRank.guild_data", "guildData", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guild_data$field:uint;

		public function clearGuildData():void {
			hasField$0 &= 0xfffffffb;
			guild_data$field = new uint();
		}

		public function get hasGuildData():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set guildData(value:uint):void {
			hasField$0 |= 0x4;
			guild_data$field = value;
		}

		public function get guildData():uint {
			return guild_data$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_MEMBER_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildRank.guild_member_count", "guildMemberCount", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guild_member_count$field:uint;

		public function clearGuildMemberCount():void {
			hasField$0 &= 0xfffffff7;
			guild_member_count$field = new uint();
		}

		public function get hasGuildMemberCount():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set guildMemberCount(value:uint):void {
			hasField$0 |= 0x8;
			guild_member_count$field = value;
		}

		public function get guildMemberCount():uint {
			return guild_member_count$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_GUILD_MEMBER_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildRank.max_guild_member_count", "maxGuildMemberCount", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_guild_member_count$field:uint;

		public function clearMaxGuildMemberCount():void {
			hasField$0 &= 0xffffffef;
			max_guild_member_count$field = new uint();
		}

		public function get hasMaxGuildMemberCount():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set maxGuildMemberCount(value:uint):void {
			hasField$0 |= 0x10;
			max_guild_member_count$field = value;
		}

		public function get maxGuildMemberCount():uint {
			return max_guild_member_count$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRank) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, rank$field);
			}
			if (hasGuildId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, guild_id$field);
			}
			if (hasGuildName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, guild_name$field);
			}
			if (hasGuildLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, guild_level$field);
			}
			if (hasChiefId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, chief_id$field);
			}
			if (hasChiefName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, chief_name$field);
			}
			if (hasGuildData) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, guild_data$field);
			}
			if (hasGuildMemberCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, guild_member_count$field);
			}
			if (hasMaxGuildMemberCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, max_guild_member_count$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var rank$count:uint = 0;
			var guild_id$count:uint = 0;
			var guild_name$count:uint = 0;
			var guild_level$count:uint = 0;
			var chief_id$count:uint = 0;
			var chief_name$count:uint = 0;
			var guild_data$count:uint = 0;
			var guild_member_count$count:uint = 0;
			var max_guild_member_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildRank.rank cannot be set twice.');
					}
					++rank$count;
					this.rank = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (guild_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildRank.guildId cannot be set twice.');
					}
					++guild_id$count;
					this.guildId = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 3:
					if (guild_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildRank.guildName cannot be set twice.');
					}
					++guild_name$count;
					this.guildName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 4:
					if (guild_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildRank.guildLevel cannot be set twice.');
					}
					++guild_level$count;
					this.guildLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (chief_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildRank.chiefId cannot be set twice.');
					}
					++chief_id$count;
					this.chiefId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.chiefId);
					break;
				case 6:
					if (chief_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildRank.chiefName cannot be set twice.');
					}
					++chief_name$count;
					this.chiefName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 7:
					if (guild_data$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildRank.guildData cannot be set twice.');
					}
					++guild_data$count;
					this.guildData = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (guild_member_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildRank.guildMemberCount cannot be set twice.');
					}
					++guild_member_count$count;
					this.guildMemberCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (max_guild_member_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildRank.maxGuildMemberCount cannot be set twice.');
					}
					++max_guild_member_count$count;
					this.maxGuildMemberCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
