package serverProto.guild {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.guild.ProtoGuildClientData;
	import serverProto.guild.GuildDataNotifyReason;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGuildClientDataNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const REASON:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoGuildClientDataNotify.reason", "reason", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.guild.GuildDataNotifyReason);

		private var reason$field:int;

		private var hasField$0:uint = 0;

		public function clearReason():void {
			hasField$0 &= 0xfffffffe;
			reason$field = new int();
		}

		public function get hasReason():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set reason(value:int):void {
			hasField$0 |= 0x1;
			reason$field = value;
		}

		public function get reason():int {
			return reason$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildClientDataNotify.guild_data", "guildData", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGuildClientData);

		private var guild_data$field:serverProto.guild.ProtoGuildClientData;

		public function clearGuildData():void {
			guild_data$field = null;
		}

		public function get hasGuildData():Boolean {
			return guild_data$field != null;
		}

		public function set guildData(value:serverProto.guild.ProtoGuildClientData):void {
			guild_data$field = value;
		}

		public function get guildData():serverProto.guild.ProtoGuildClientData {
			return guild_data$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasReason) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, reason$field);
			}
			if (hasGuildData) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, guild_data$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var reason$count:uint = 0;
			var guild_data$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (reason$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildClientDataNotify.reason cannot be set twice.');
					}
					++reason$count;
					this.reason = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (guild_data$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildClientDataNotify.guildData cannot be set twice.');
					}
					++guild_data$count;
					this.guildData = new serverProto.guild.ProtoGuildClientData();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.guildData);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
