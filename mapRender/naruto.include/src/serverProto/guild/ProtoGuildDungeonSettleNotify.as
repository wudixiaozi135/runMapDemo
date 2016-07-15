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
	public  final class ProtoGuildDungeonSettleNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonSettleNotify.money", "money", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var money$field:uint;

		private var hasField$0:uint = 0;

		public function clearMoney():void {
			hasField$0 &= 0xfffffffe;
			money$field = new uint();
		}

		public function get hasMoney():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set money(value:uint):void {
			hasField$0 |= 0x1;
			money$field = value;
		}

		public function get money():uint {
			return money$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_CONTRI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonSettleNotify.guild_contri", "guildContri", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guild_contri$field:uint;

		public function clearGuildContri():void {
			hasField$0 &= 0xfffffffd;
			guild_contri$field = new uint();
		}

		public function get hasGuildContri():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set guildContri(value:uint):void {
			hasField$0 |= 0x2;
			guild_contri$field = value;
		}

		public function get guildContri():uint {
			return guild_contri$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonSettleNotify.guild_money", "guildMoney", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guild_money$field:uint;

		public function clearGuildMoney():void {
			hasField$0 &= 0xfffffffb;
			guild_money$field = new uint();
		}

		public function get hasGuildMoney():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set guildMoney(value:uint):void {
			hasField$0 |= 0x4;
			guild_money$field = value;
		}

		public function get guildMoney():uint {
			return guild_money$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, money$field);
			}
			if (hasGuildContri) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, guild_contri$field);
			}
			if (hasGuildMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, guild_money$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var money$count:uint = 0;
			var guild_contri$count:uint = 0;
			var guild_money$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonSettleNotify.money cannot be set twice.');
					}
					++money$count;
					this.money = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (guild_contri$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonSettleNotify.guildContri cannot be set twice.');
					}
					++guild_contri$count;
					this.guildContri = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (guild_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonSettleNotify.guildMoney cannot be set twice.');
					}
					++guild_money$count;
					this.guildMoney = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
