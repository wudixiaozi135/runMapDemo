package serverProto.mail {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.mail.ProtoSendMail;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoSendMailReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.mail.ProtoSendMailReq.sid", "sid", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var sid$field:uint;

		private var hasField$0:uint = 0;

		public function clearSid():void {
			hasField$0 &= 0xfffffffe;
			sid$field = new uint();
		}

		public function get hasSid():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set sid(value:uint):void {
			hasField$0 |= 0x1;
			sid$field = value;
		}

		public function get sid():uint {
			return sid$field;
		}

		/**
		 *  @private
		 */
		public static const SEND_MAIL:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.mail.ProtoSendMailReq.send_mail", "sendMail", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.mail.ProtoSendMail);

		private var send_mail$field:serverProto.mail.ProtoSendMail;

		public function clearSendMail():void {
			send_mail$field = null;
		}

		public function get hasSendMail():Boolean {
			return send_mail$field != null;
		}

		public function set sendMail(value:serverProto.mail.ProtoSendMail):void {
			send_mail$field = value;
		}

		public function get sendMail():serverProto.mail.ProtoSendMail {
			return send_mail$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasSid) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, sid$field);
			}
			if (hasSendMail) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, send_mail$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var sid$count:uint = 0;
			var send_mail$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (sid$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendMailReq.sid cannot be set twice.');
					}
					++sid$count;
					this.sid = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (send_mail$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendMailReq.sendMail cannot be set twice.');
					}
					++send_mail$count;
					this.sendMail = new serverProto.mail.ProtoSendMail();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.sendMail);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
