package serverProto.family {
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
	public  final class ProtoSendFlowerNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SEND_PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoSendFlowerNotify.send_player_id", "sendPlayerId", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var send_player_id$field:serverProto.inc.ProtoPlayerKey;

		public function clearSendPlayerId():void {
			send_player_id$field = null;
		}

		public function get hasSendPlayerId():Boolean {
			return send_player_id$field != null;
		}

		public function set sendPlayerId(value:serverProto.inc.ProtoPlayerKey):void {
			send_player_id$field = value;
		}

		public function get sendPlayerId():serverProto.inc.ProtoPlayerKey {
			return send_player_id$field;
		}

		/**
		 *  @private
		 */
		public static const SEND_PLAYER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.family.ProtoSendFlowerNotify.send_player_name", "sendPlayerName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var send_player_name$field:String;

		public function clearSendPlayerName():void {
			send_player_name$field = null;
		}

		public function get hasSendPlayerName():Boolean {
			return send_player_name$field != null;
		}

		public function set sendPlayerName(value:String):void {
			send_player_name$field = value;
		}

		public function get sendPlayerName():String {
			return send_player_name$field;
		}

		/**
		 *  @private
		 */
		public static const RECEIVE_PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoSendFlowerNotify.receive_player_id", "receivePlayerId", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var receive_player_id$field:serverProto.inc.ProtoPlayerKey;

		public function clearReceivePlayerId():void {
			receive_player_id$field = null;
		}

		public function get hasReceivePlayerId():Boolean {
			return receive_player_id$field != null;
		}

		public function set receivePlayerId(value:serverProto.inc.ProtoPlayerKey):void {
			receive_player_id$field = value;
		}

		public function get receivePlayerId():serverProto.inc.ProtoPlayerKey {
			return receive_player_id$field;
		}

		/**
		 *  @private
		 */
		public static const RECEIVE_PLAYER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.family.ProtoSendFlowerNotify.receive_player_name", "receivePlayerName", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var receive_player_name$field:String;

		public function clearReceivePlayerName():void {
			receive_player_name$field = null;
		}

		public function get hasReceivePlayerName():Boolean {
			return receive_player_name$field != null;
		}

		public function set receivePlayerName(value:String):void {
			receive_player_name$field = value;
		}

		public function get receivePlayerName():String {
			return receive_player_name$field;
		}

		/**
		 *  @private
		 */
		public static const FLOWER_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerNotify.flower_count", "flowerCount", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var flower_count$field:uint;

		private var hasField$0:uint = 0;

		public function clearFlowerCount():void {
			hasField$0 &= 0xfffffffe;
			flower_count$field = new uint();
		}

		public function get hasFlowerCount():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set flowerCount(value:uint):void {
			hasField$0 |= 0x1;
			flower_count$field = value;
		}

		public function get flowerCount():uint {
			return flower_count$field;
		}

		/**
		 *  @private
		 */
		public static const FLOWER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.family.ProtoSendFlowerNotify.flower_name", "flowerName", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var flower_name$field:String;

		public function clearFlowerName():void {
			flower_name$field = null;
		}

		public function get hasFlowerName():Boolean {
			return flower_name$field != null;
		}

		public function set flowerName(value:String):void {
			flower_name$field = value;
		}

		public function get flowerName():String {
			return flower_name$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasSendPlayerId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, send_player_id$field);
			}
			if (hasSendPlayerName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, send_player_name$field);
			}
			if (hasReceivePlayerId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, receive_player_id$field);
			}
			if (hasReceivePlayerName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, receive_player_name$field);
			}
			if (hasFlowerCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, flower_count$field);
			}
			if (hasFlowerName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, flower_name$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var send_player_id$count:uint = 0;
			var send_player_name$count:uint = 0;
			var receive_player_id$count:uint = 0;
			var receive_player_name$count:uint = 0;
			var flower_count$count:uint = 0;
			var flower_name$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (send_player_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerNotify.sendPlayerId cannot be set twice.');
					}
					++send_player_id$count;
					this.sendPlayerId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.sendPlayerId);
					break;
				case 2:
					if (send_player_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerNotify.sendPlayerName cannot be set twice.');
					}
					++send_player_name$count;
					this.sendPlayerName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (receive_player_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerNotify.receivePlayerId cannot be set twice.');
					}
					++receive_player_id$count;
					this.receivePlayerId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.receivePlayerId);
					break;
				case 4:
					if (receive_player_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerNotify.receivePlayerName cannot be set twice.');
					}
					++receive_player_name$count;
					this.receivePlayerName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 5:
					if (flower_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerNotify.flowerCount cannot be set twice.');
					}
					++flower_count$count;
					this.flowerCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (flower_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerNotify.flowerName cannot be set twice.');
					}
					++flower_name$count;
					this.flowerName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
