package serverProto.chat {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoPlayerKey;
	import serverProto.chat.ProtoChatChannelType;
	import serverProto.chat.ProtoChatContextType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoChatRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CHANNEL_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.chat.ProtoChatRequest.channel_type", "channelType", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.chat.ProtoChatChannelType);

		public var channelType:int;

		/**
		 *  @private
		 */
		public static const CONTEXT_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.chat.ProtoChatRequest.context_type", "contextType", (2 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.chat.ProtoChatContextType);

		public var contextType:int;

		/**
		 *  @private
		 */
		public static const CONTEXT:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.chat.ProtoChatRequest.context", "context", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var context:String;

		/**
		 *  @private
		 */
		public static const LISTENER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.chat.ProtoChatRequest.listener_name", "listenerName", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var listener_name$field:String;

		public function clearListenerName():void {
			listener_name$field = null;
		}

		public function get hasListenerName():Boolean {
			return listener_name$field != null;
		}

		public function set listenerName(value:String):void {
			listener_name$field = value;
		}

		public function get listenerName():String {
			return listener_name$field;
		}

		/**
		 *  @private
		 */
		public static const LISTENER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.chat.ProtoChatRequest.listener_key", "listenerKey", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var listener_key$field:serverProto.inc.ProtoPlayerKey;

		public function clearListenerKey():void {
			listener_key$field = null;
		}

		public function get hasListenerKey():Boolean {
			return listener_key$field != null;
		}

		public function set listenerKey(value:serverProto.inc.ProtoPlayerKey):void {
			listener_key$field = value;
		}

		public function get listenerKey():serverProto.inc.ProtoPlayerKey {
			return listener_key$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.channelType);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.contextType);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.context);
			if (hasListenerName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, listener_name$field);
			}
			if (hasListenerKey) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, listener_key$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var channel_type$count:uint = 0;
			var context_type$count:uint = 0;
			var context$count:uint = 0;
			var listener_name$count:uint = 0;
			var listener_key$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (channel_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChatRequest.channelType cannot be set twice.');
					}
					++channel_type$count;
					this.channelType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (context_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChatRequest.contextType cannot be set twice.');
					}
					++context_type$count;
					this.contextType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 3:
					if (context$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChatRequest.context cannot be set twice.');
					}
					++context$count;
					this.context = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 4:
					if (listener_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChatRequest.listenerName cannot be set twice.');
					}
					++listener_name$count;
					this.listenerName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 5:
					if (listener_key$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChatRequest.listenerKey cannot be set twice.');
					}
					++listener_key$count;
					this.listenerKey = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.listenerKey);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
