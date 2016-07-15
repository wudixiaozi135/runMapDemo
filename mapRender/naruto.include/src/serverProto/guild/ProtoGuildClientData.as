package serverProto.guild {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.GuildMemberIdentity;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGuildClientData extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const GUILD_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.guild.ProtoGuildClientData.guild_id", "guildId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildClientData.guild_name", "guildName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const GUILD_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildClientData.guild_lvl", "guildLvl", (3 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const MEMBER_IDENTITY:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoGuildClientData.member_identity", "memberIdentity", (4 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.GuildMemberIdentity);

		private var member_identity$field:int;

		public function clearMemberIdentity():void {
			hasField$0 &= 0xfffffffd;
			member_identity$field = new int();
		}

		public function get hasMemberIdentity():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set memberIdentity(value:int):void {
			hasField$0 |= 0x2;
			member_identity$field = value;
		}

		public function get memberIdentity():int {
			return member_identity$field;
		}

		/**
		 *  @private
		 */
		public static const OPEN_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildClientData.open_level", "openLevel", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var open_level$field:uint;

		public function clearOpenLevel():void {
			hasField$0 &= 0xfffffffb;
			open_level$field = new uint();
		}

		public function get hasOpenLevel():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set openLevel(value:uint):void {
			hasField$0 |= 0x4;
			open_level$field = value;
		}

		public function get openLevel():uint {
			return open_level$field;
		}

		/**
		 *  @private
		 */
		public static const CREATE_INGOT_COST:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildClientData.create_ingot_cost", "createIngotCost", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var create_ingot_cost$field:uint;

		public function clearCreateIngotCost():void {
			hasField$0 &= 0xfffffff7;
			create_ingot_cost$field = new uint();
		}

		public function get hasCreateIngotCost():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set createIngotCost(value:uint):void {
			hasField$0 |= 0x8;
			create_ingot_cost$field = value;
		}

		public function get createIngotCost():uint {
			return create_ingot_cost$field;
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
			if (hasMemberIdentity) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, member_identity$field);
			}
			if (hasOpenLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, open_level$field);
			}
			if (hasCreateIngotCost) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, create_ingot_cost$field);
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
			var member_identity$count:uint = 0;
			var open_level$count:uint = 0;
			var create_ingot_cost$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (guild_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildClientData.guildId cannot be set twice.');
					}
					++guild_id$count;
					this.guildId = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 2:
					if (guild_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildClientData.guildName cannot be set twice.');
					}
					++guild_name$count;
					this.guildName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (guild_lvl$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildClientData.guildLvl cannot be set twice.');
					}
					++guild_lvl$count;
					this.guildLvl = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (member_identity$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildClientData.memberIdentity cannot be set twice.');
					}
					++member_identity$count;
					this.memberIdentity = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 5:
					if (open_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildClientData.openLevel cannot be set twice.');
					}
					++open_level$count;
					this.openLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (create_ingot_cost$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildClientData.createIngotCost cannot be set twice.');
					}
					++create_ingot_cost$count;
					this.createIngotCost = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
