package serverProto.guild {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.guild.ProtoGvGBattleFieldPlayerPos;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGvGManagerAjustBattleFieldPosReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const FROM_POS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGManagerAjustBattleFieldPosReq.from_pos", "fromPos", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGvGBattleFieldPlayerPos);

		private var from_pos$field:serverProto.guild.ProtoGvGBattleFieldPlayerPos;

		public function clearFromPos():void {
			from_pos$field = null;
		}

		public function get hasFromPos():Boolean {
			return from_pos$field != null;
		}

		public function set fromPos(value:serverProto.guild.ProtoGvGBattleFieldPlayerPos):void {
			from_pos$field = value;
		}

		public function get fromPos():serverProto.guild.ProtoGvGBattleFieldPlayerPos {
			return from_pos$field;
		}

		/**
		 *  @private
		 */
		public static const TO_POS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGManagerAjustBattleFieldPosReq.to_pos", "toPos", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGvGBattleFieldPlayerPos);

		private var to_pos$field:serverProto.guild.ProtoGvGBattleFieldPlayerPos;

		public function clearToPos():void {
			to_pos$field = null;
		}

		public function get hasToPos():Boolean {
			return to_pos$field != null;
		}

		public function set toPos(value:serverProto.guild.ProtoGvGBattleFieldPlayerPos):void {
			to_pos$field = value;
		}

		public function get toPos():serverProto.guild.ProtoGvGBattleFieldPlayerPos {
			return to_pos$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasFromPos) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, from_pos$field);
			}
			if (hasToPos) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, to_pos$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var from_pos$count:uint = 0;
			var to_pos$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (from_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGManagerAjustBattleFieldPosReq.fromPos cannot be set twice.');
					}
					++from_pos$count;
					this.fromPos = new serverProto.guild.ProtoGvGBattleFieldPlayerPos();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.fromPos);
					break;
				case 2:
					if (to_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGManagerAjustBattleFieldPosReq.toPos cannot be set twice.');
					}
					++to_pos$count;
					this.toPos = new serverProto.guild.ProtoGvGBattleFieldPlayerPos();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.toPos);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
