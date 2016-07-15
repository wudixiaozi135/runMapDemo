package serverProto.mail {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.mail.ProtoBaseMail;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetMailListRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.mail.ProtoGetMailListRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const OUTBOX:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.mail.ProtoGetMailListRsp.outbox", "outbox", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.mail.ProtoBaseMail);

		[ArrayElementType("serverProto.mail.ProtoBaseMail")]
		public var outbox:Array = [];

		/**
		 *  @private
		 */
		public static const INBOX:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.mail.ProtoGetMailListRsp.inbox", "inbox", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.mail.ProtoBaseMail);

		[ArrayElementType("serverProto.mail.ProtoBaseMail")]
		public var inbox:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			for (var outbox$index:uint = 0; outbox$index < this.outbox.length; ++outbox$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.outbox[outbox$index]);
			}
			for (var inbox$index:uint = 0; inbox$index < this.inbox.length; ++inbox$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.inbox[inbox$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetMailListRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					this.outbox.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.mail.ProtoBaseMail()));
					break;
				case 3:
					this.inbox.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.mail.ProtoBaseMail()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
