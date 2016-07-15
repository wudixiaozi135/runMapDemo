package serverProto.guild {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.guild.ProtoGvGGuildCell;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGvGMatchCell extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const GUILD_CELL_1:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGMatchCell.guild_cell_1", "guildCell_1", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGvGGuildCell);

		private var guild_cell_1$field:serverProto.guild.ProtoGvGGuildCell;

		public function clearGuildCell_1():void {
			guild_cell_1$field = null;
		}

		public function get hasGuildCell_1():Boolean {
			return guild_cell_1$field != null;
		}

		public function set guildCell_1(value:serverProto.guild.ProtoGvGGuildCell):void {
			guild_cell_1$field = value;
		}

		public function get guildCell_1():serverProto.guild.ProtoGvGGuildCell {
			return guild_cell_1$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_CELL_2:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGMatchCell.guild_cell_2", "guildCell_2", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGvGGuildCell);

		private var guild_cell_2$field:serverProto.guild.ProtoGvGGuildCell;

		public function clearGuildCell_2():void {
			guild_cell_2$field = null;
		}

		public function get hasGuildCell_2():Boolean {
			return guild_cell_2$field != null;
		}

		public function set guildCell_2(value:serverProto.guild.ProtoGvGGuildCell):void {
			guild_cell_2$field = value;
		}

		public function get guildCell_2():serverProto.guild.ProtoGvGGuildCell {
			return guild_cell_2$field;
		}

		/**
		 *  @private
		 */
		public static const WINNER_SEQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGMatchCell.winner_seq", "winnerSeq", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var winner_seq$field:uint;

		private var hasField$0:uint = 0;

		public function clearWinnerSeq():void {
			hasField$0 &= 0xfffffffe;
			winner_seq$field = new uint();
		}

		public function get hasWinnerSeq():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set winnerSeq(value:uint):void {
			hasField$0 |= 0x1;
			winner_seq$field = value;
		}

		public function get winnerSeq():uint {
			return winner_seq$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasGuildCell_1) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, guild_cell_1$field);
			}
			if (hasGuildCell_2) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, guild_cell_2$field);
			}
			if (hasWinnerSeq) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, winner_seq$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var guild_cell_1$count:uint = 0;
			var guild_cell_2$count:uint = 0;
			var winner_seq$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (guild_cell_1$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGMatchCell.guildCell_1 cannot be set twice.');
					}
					++guild_cell_1$count;
					this.guildCell_1 = new serverProto.guild.ProtoGvGGuildCell();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.guildCell_1);
					break;
				case 2:
					if (guild_cell_2$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGMatchCell.guildCell_2 cannot be set twice.');
					}
					++guild_cell_2$count;
					this.guildCell_2 = new serverProto.guild.ProtoGvGGuildCell();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.guildCell_2);
					break;
				case 3:
					if (winner_seq$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGMatchCell.winnerSeq cannot be set twice.');
					}
					++winner_seq$count;
					this.winnerSeq = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
