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
	public  final class ProtoGvGFinalResult extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const QUARTER_FINAL:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGFinalResult.quarter_final", "quarterFinal", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGvGGuildCell);

		[ArrayElementType("serverProto.guild.ProtoGvGGuildCell")]
		public var quarterFinal:Array = [];

		/**
		 *  @private
		 */
		public static const HALF_FINAL:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGFinalResult.half_final", "halfFinal", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGvGGuildCell);

		[ArrayElementType("serverProto.guild.ProtoGvGGuildCell")]
		public var halfFinal:Array = [];

		/**
		 *  @private
		 */
		public static const THE_FINAL:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGFinalResult.the_final", "theFinal", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGvGGuildCell);

		[ArrayElementType("serverProto.guild.ProtoGvGGuildCell")]
		public var theFinal:Array = [];

		/**
		 *  @private
		 */
		public static const WINNER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGFinalResult.winner", "winner", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGvGGuildCell);

		private var winner$field:serverProto.guild.ProtoGvGGuildCell;

		public function clearWinner():void {
			winner$field = null;
		}

		public function get hasWinner():Boolean {
			return winner$field != null;
		}

		public function set winner(value:serverProto.guild.ProtoGvGGuildCell):void {
			winner$field = value;
		}

		public function get winner():serverProto.guild.ProtoGvGGuildCell {
			return winner$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var quarterFinal$index:uint = 0; quarterFinal$index < this.quarterFinal.length; ++quarterFinal$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.quarterFinal[quarterFinal$index]);
			}
			for (var halfFinal$index:uint = 0; halfFinal$index < this.halfFinal.length; ++halfFinal$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.halfFinal[halfFinal$index]);
			}
			for (var theFinal$index:uint = 0; theFinal$index < this.theFinal.length; ++theFinal$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.theFinal[theFinal$index]);
			}
			if (hasWinner) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, winner$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var winner$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.quarterFinal.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.guild.ProtoGvGGuildCell()));
					break;
				case 2:
					this.halfFinal.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.guild.ProtoGvGGuildCell()));
					break;
				case 3:
					this.theFinal.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.guild.ProtoGvGGuildCell()));
					break;
				case 4:
					if (winner$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGFinalResult.winner cannot be set twice.');
					}
					++winner$count;
					this.winner = new serverProto.guild.ProtoGvGGuildCell();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.winner);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
