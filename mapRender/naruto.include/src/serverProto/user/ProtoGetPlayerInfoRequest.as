package serverProto.user {
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
	public  final class ProtoGetPlayerInfoRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoGetPlayerInfoRequest.player_key", "playerKey", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var player_key$field:serverProto.inc.ProtoPlayerKey;

		public function clearPlayerKey():void {
			player_key$field = null;
		}

		public function get hasPlayerKey():Boolean {
			return player_key$field != null;
		}

		public function set playerKey(value:serverProto.inc.ProtoPlayerKey):void {
			player_key$field = value;
		}

		public function get playerKey():serverProto.inc.ProtoPlayerKey {
			return player_key$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasPlayerKey) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, player_key$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var player_key$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (player_key$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetPlayerInfoRequest.playerKey cannot be set twice.');
					}
					++player_key$count;
					this.playerKey = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerKey);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
