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
	public  final class ProtoGvGManagerKickPlayerReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER_POS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGManagerKickPlayerReq.player_pos", "playerPos", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGvGBattleFieldPlayerPos);

		private var player_pos$field:serverProto.guild.ProtoGvGBattleFieldPlayerPos;

		public function clearPlayerPos():void {
			player_pos$field = null;
		}

		public function get hasPlayerPos():Boolean {
			return player_pos$field != null;
		}

		public function set playerPos(value:serverProto.guild.ProtoGvGBattleFieldPlayerPos):void {
			player_pos$field = value;
		}

		public function get playerPos():serverProto.guild.ProtoGvGBattleFieldPlayerPos {
			return player_pos$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasPlayerPos) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, player_pos$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var player_pos$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (player_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGManagerKickPlayerReq.playerPos cannot be set twice.');
					}
					++player_pos$count;
					this.playerPos = new serverProto.guild.ProtoGvGBattleFieldPlayerPos();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerPos);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
