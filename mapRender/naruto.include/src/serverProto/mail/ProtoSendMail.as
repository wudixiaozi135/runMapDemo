package serverProto.mail {
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
	public  final class ProtoSendMail extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SEND_PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.mail.ProtoSendMail.send_player_id", "sendPlayerId", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

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
		public static const SEND_PLAYER_NICK:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.mail.ProtoSendMail.send_player_nick", "sendPlayerNick", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var send_player_nick$field:String;

		public function clearSendPlayerNick():void {
			send_player_nick$field = null;
		}

		public function get hasSendPlayerNick():Boolean {
			return send_player_nick$field != null;
		}

		public function set sendPlayerNick(value:String):void {
			send_player_nick$field = value;
		}

		public function get sendPlayerNick():String {
			return send_player_nick$field;
		}

		/**
		 *  @private
		 */
		public static const RECV_PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.mail.ProtoSendMail.recv_player_id", "recvPlayerId", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var recv_player_id$field:serverProto.inc.ProtoPlayerKey;

		public function clearRecvPlayerId():void {
			recv_player_id$field = null;
		}

		public function get hasRecvPlayerId():Boolean {
			return recv_player_id$field != null;
		}

		public function set recvPlayerId(value:serverProto.inc.ProtoPlayerKey):void {
			recv_player_id$field = value;
		}

		public function get recvPlayerId():serverProto.inc.ProtoPlayerKey {
			return recv_player_id$field;
		}

		/**
		 *  @private
		 */
		public static const RECV_PLAYER_NICK:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.mail.ProtoSendMail.recv_player_nick", "recvPlayerNick", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var recv_player_nick$field:String;

		public function clearRecvPlayerNick():void {
			recv_player_nick$field = null;
		}

		public function get hasRecvPlayerNick():Boolean {
			return recv_player_nick$field != null;
		}

		public function set recvPlayerNick(value:String):void {
			recv_player_nick$field = value;
		}

		public function get recvPlayerNick():String {
			return recv_player_nick$field;
		}

		/**
		 *  @private
		 */
		public static const TITLE:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.mail.ProtoSendMail.title", "title", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var title$field:String;

		public function clearTitle():void {
			title$field = null;
		}

		public function get hasTitle():Boolean {
			return title$field != null;
		}

		public function set title(value:String):void {
			title$field = value;
		}

		public function get title():String {
			return title$field;
		}

		/**
		 *  @private
		 */
		public static const CONTENT:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.mail.ProtoSendMail.content", "content", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var content$field:String;

		public function clearContent():void {
			content$field = null;
		}

		public function get hasContent():Boolean {
			return content$field != null;
		}

		public function set content(value:String):void {
			content$field = value;
		}

		public function get content():String {
			return content$field;
		}

		/**
		 *  @private
		 */
		public static const SUB_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.mail.ProtoSendMail.sub_type", "subType", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var sub_type$field:uint;

		private var hasField$0:uint = 0;

		public function clearSubType():void {
			hasField$0 &= 0xfffffffe;
			sub_type$field = new uint();
		}

		public function get hasSubType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set subType(value:uint):void {
			hasField$0 |= 0x1;
			sub_type$field = value;
		}

		public function get subType():uint {
			return sub_type$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasSendPlayerId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, send_player_id$field);
			}
			if (hasSendPlayerNick) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, send_player_nick$field);
			}
			if (hasRecvPlayerId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, recv_player_id$field);
			}
			if (hasRecvPlayerNick) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, recv_player_nick$field);
			}
			if (hasTitle) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, title$field);
			}
			if (hasContent) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, content$field);
			}
			if (hasSubType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, sub_type$field);
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
			var send_player_nick$count:uint = 0;
			var recv_player_id$count:uint = 0;
			var recv_player_nick$count:uint = 0;
			var title$count:uint = 0;
			var content$count:uint = 0;
			var sub_type$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (send_player_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendMail.sendPlayerId cannot be set twice.');
					}
					++send_player_id$count;
					this.sendPlayerId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.sendPlayerId);
					break;
				case 2:
					if (send_player_nick$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendMail.sendPlayerNick cannot be set twice.');
					}
					++send_player_nick$count;
					this.sendPlayerNick = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (recv_player_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendMail.recvPlayerId cannot be set twice.');
					}
					++recv_player_id$count;
					this.recvPlayerId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.recvPlayerId);
					break;
				case 4:
					if (recv_player_nick$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendMail.recvPlayerNick cannot be set twice.');
					}
					++recv_player_nick$count;
					this.recvPlayerNick = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 5:
					if (title$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendMail.title cannot be set twice.');
					}
					++title$count;
					this.title = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 6:
					if (content$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendMail.content cannot be set twice.');
					}
					++content$count;
					this.content = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 7:
					if (sub_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendMail.subType cannot be set twice.');
					}
					++sub_type$count;
					this.subType = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
