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
	public  final class ProtoGuildJoinInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const GUILD_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.guild.ProtoGuildJoinInfo.guild_id", "guildId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildJoinInfo.guild_name", "guildName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const CHIEF_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildJoinInfo.chief_id", "chiefId", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

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
		public static const CHIEF_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildJoinInfo.chief_name", "chiefName", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const GUILD_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildJoinInfo.guild_lvl", "guildLvl", (5 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const GUILD_MEMBER_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildJoinInfo.guild_member_num", "guildMemberNum", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guild_member_num$field:uint;

		public function clearGuildMemberNum():void {
			hasField$0 &= 0xfffffffd;
			guild_member_num$field = new uint();
		}

		public function get hasGuildMemberNum():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set guildMemberNum(value:uint):void {
			hasField$0 |= 0x2;
			guild_member_num$field = value;
		}

		public function get guildMemberNum():uint {
			return guild_member_num$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_GUILD_MEMBER_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildJoinInfo.max_guild_member_num", "maxGuildMemberNum", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_guild_member_num$field:uint;

		public function clearMaxGuildMemberNum():void {
			hasField$0 &= 0xfffffffb;
			max_guild_member_num$field = new uint();
		}

		public function get hasMaxGuildMemberNum():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set maxGuildMemberNum(value:uint):void {
			hasField$0 |= 0x4;
			max_guild_member_num$field = value;
		}

		public function get maxGuildMemberNum():uint {
			return max_guild_member_num$field;
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
			if (hasChiefId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, chief_id$field);
			}
			if (hasChiefName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, chief_name$field);
			}
			if (hasGuildLvl) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, guild_lvl$field);
			}
			if (hasGuildMemberNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, guild_member_num$field);
			}
			if (hasMaxGuildMemberNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, max_guild_member_num$field);
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
			var chief_id$count:uint = 0;
			var chief_name$count:uint = 0;
			var guild_lvl$count:uint = 0;
			var guild_member_num$count:uint = 0;
			var max_guild_member_num$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (guild_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildJoinInfo.guildId cannot be set twice.');
					}
					++guild_id$count;
					this.guildId = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 2:
					if (guild_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildJoinInfo.guildName cannot be set twice.');
					}
					++guild_name$count;
					this.guildName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (chief_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildJoinInfo.chiefId cannot be set twice.');
					}
					++chief_id$count;
					this.chiefId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.chiefId);
					break;
				case 4:
					if (chief_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildJoinInfo.chiefName cannot be set twice.');
					}
					++chief_name$count;
					this.chiefName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 5:
					if (guild_lvl$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildJoinInfo.guildLvl cannot be set twice.');
					}
					++guild_lvl$count;
					this.guildLvl = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (guild_member_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildJoinInfo.guildMemberNum cannot be set twice.');
					}
					++guild_member_num$count;
					this.guildMemberNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (max_guild_member_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildJoinInfo.maxGuildMemberNum cannot be set twice.');
					}
					++max_guild_member_num$count;
					this.maxGuildMemberNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
