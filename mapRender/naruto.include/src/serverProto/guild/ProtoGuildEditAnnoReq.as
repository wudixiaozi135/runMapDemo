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
	public  final class ProtoGuildEditAnnoReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const GUILD_QQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildEditAnnoReq.guild_qq", "guildQq", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guild_qq$field:uint;

		private var hasField$0:uint = 0;

		public function clearGuildQq():void {
			hasField$0 &= 0xfffffffe;
			guild_qq$field = new uint();
		}

		public function get hasGuildQq():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set guildQq(value:uint):void {
			hasField$0 |= 0x1;
			guild_qq$field = value;
		}

		public function get guildQq():uint {
			return guild_qq$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_ANNO:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildEditAnnoReq.guild_anno", "guildAnno", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var guild_anno$field:String;

		public function clearGuildAnno():void {
			guild_anno$field = null;
		}

		public function get hasGuildAnno():Boolean {
			return guild_anno$field != null;
		}

		public function set guildAnno(value:String):void {
			guild_anno$field = value;
		}

		public function get guildAnno():String {
			return guild_anno$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasGuildQq) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, guild_qq$field);
			}
			if (hasGuildAnno) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, guild_anno$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var guild_qq$count:uint = 0;
			var guild_anno$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (guild_qq$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildEditAnnoReq.guildQq cannot be set twice.');
					}
					++guild_qq$count;
					this.guildQq = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (guild_anno$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildEditAnnoReq.guildAnno cannot be set twice.');
					}
					++guild_anno$count;
					this.guildAnno = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
