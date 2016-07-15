package serverProto.chat {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoDiamondInfo;
	import serverProto.inc.ProtoPlayerKey;
	import serverProto.chat.ProtoChatChannelType;
	import serverProto.chat.ProtoChatContextType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoChatNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CHANNEL_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.chat.ProtoChatNotify.channel_type", "channelType", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.chat.ProtoChatChannelType);

		public var channelType:int;

		/**
		 *  @private
		 */
		public static const CONTEXT_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.chat.ProtoChatNotify.context_type", "contextType", (2 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.chat.ProtoChatContextType);

		public var contextType:int;

		/**
		 *  @private
		 */
		public static const CONTEXT:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.chat.ProtoChatNotify.context", "context", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var context:String;

		/**
		 *  @private
		 */
		public static const TALKER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.chat.ProtoChatNotify.talker_name", "talkerName", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var talker_name$field:String;

		public function clearTalkerName():void {
			talker_name$field = null;
		}

		public function get hasTalkerName():Boolean {
			return talker_name$field != null;
		}

		public function set talkerName(value:String):void {
			talker_name$field = value;
		}

		public function get talkerName():String {
			return talker_name$field;
		}

		/**
		 *  @private
		 */
		public static const TALKER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.chat.ProtoChatNotify.talker_key", "talkerKey", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var talker_key$field:serverProto.inc.ProtoPlayerKey;

		public function clearTalkerKey():void {
			talker_key$field = null;
		}

		public function get hasTalkerKey():Boolean {
			return talker_key$field != null;
		}

		public function set talkerKey(value:serverProto.inc.ProtoPlayerKey):void {
			talker_key$field = value;
		}

		public function get talkerKey():serverProto.inc.ProtoPlayerKey {
			return talker_key$field;
		}

		/**
		 *  @private
		 */
		public static const LISTENER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.chat.ProtoChatNotify.listener_name", "listenerName", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const LISTENER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.chat.ProtoChatNotify.listener_key", "listenerKey", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

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
		public static const TALKER_DIAMOND:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.chat.ProtoChatNotify.talker_diamond", "talkerDiamond", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoDiamondInfo);

		private var talker_diamond$field:serverProto.inc.ProtoDiamondInfo;

		public function clearTalkerDiamond():void {
			talker_diamond$field = null;
		}

		public function get hasTalkerDiamond():Boolean {
			return talker_diamond$field != null;
		}

		public function set talkerDiamond(value:serverProto.inc.ProtoDiamondInfo):void {
			talker_diamond$field = value;
		}

		public function get talkerDiamond():serverProto.inc.ProtoDiamondInfo {
			return talker_diamond$field;
		}

		/**
		 *  @private
		 */
		public static const TALKER_VIP_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.chat.ProtoChatNotify.talker_vip_level", "talkerVipLevel", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var talker_vip_level$field:int;

		private var hasField$0:uint = 0;

		public function clearTalkerVipLevel():void {
			hasField$0 &= 0xfffffffe;
			talker_vip_level$field = new int();
		}

		public function get hasTalkerVipLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set talkerVipLevel(value:int):void {
			hasField$0 |= 0x1;
			talker_vip_level$field = value;
		}

		public function get talkerVipLevel():int {
			return talker_vip_level$field;
		}

		/**
		 *  @private
		 */
		public static const LISTENER_DIAMOND:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.chat.ProtoChatNotify.listener_diamond", "listenerDiamond", (10 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoDiamondInfo);

		private var listener_diamond$field:serverProto.inc.ProtoDiamondInfo;

		public function clearListenerDiamond():void {
			listener_diamond$field = null;
		}

		public function get hasListenerDiamond():Boolean {
			return listener_diamond$field != null;
		}

		public function set listenerDiamond(value:serverProto.inc.ProtoDiamondInfo):void {
			listener_diamond$field = value;
		}

		public function get listenerDiamond():serverProto.inc.ProtoDiamondInfo {
			return listener_diamond$field;
		}

		/**
		 *  @private
		 */
		public static const LISTENER_VIP_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.chat.ProtoChatNotify.listener_vip_level", "listenerVipLevel", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var listener_vip_level$field:int;

		public function clearListenerVipLevel():void {
			hasField$0 &= 0xfffffffd;
			listener_vip_level$field = new int();
		}

		public function get hasListenerVipLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set listenerVipLevel(value:int):void {
			hasField$0 |= 0x2;
			listener_vip_level$field = value;
		}

		public function get listenerVipLevel():int {
			return listener_vip_level$field;
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
			if (hasTalkerName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, talker_name$field);
			}
			if (hasTalkerKey) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, talker_key$field);
			}
			if (hasListenerName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, listener_name$field);
			}
			if (hasListenerKey) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, listener_key$field);
			}
			if (hasTalkerDiamond) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, talker_diamond$field);
			}
			if (hasTalkerVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, talker_vip_level$field);
			}
			if (hasListenerDiamond) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, listener_diamond$field);
			}
			if (hasListenerVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, listener_vip_level$field);
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
			var talker_name$count:uint = 0;
			var talker_key$count:uint = 0;
			var listener_name$count:uint = 0;
			var listener_key$count:uint = 0;
			var talker_diamond$count:uint = 0;
			var talker_vip_level$count:uint = 0;
			var listener_diamond$count:uint = 0;
			var listener_vip_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (channel_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChatNotify.channelType cannot be set twice.');
					}
					++channel_type$count;
					this.channelType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (context_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChatNotify.contextType cannot be set twice.');
					}
					++context_type$count;
					this.contextType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 3:
					if (context$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChatNotify.context cannot be set twice.');
					}
					++context$count;
					this.context = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 4:
					if (talker_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChatNotify.talkerName cannot be set twice.');
					}
					++talker_name$count;
					this.talkerName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 5:
					if (talker_key$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChatNotify.talkerKey cannot be set twice.');
					}
					++talker_key$count;
					this.talkerKey = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.talkerKey);
					break;
				case 6:
					if (listener_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChatNotify.listenerName cannot be set twice.');
					}
					++listener_name$count;
					this.listenerName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 7:
					if (listener_key$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChatNotify.listenerKey cannot be set twice.');
					}
					++listener_key$count;
					this.listenerKey = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.listenerKey);
					break;
				case 8:
					if (talker_diamond$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChatNotify.talkerDiamond cannot be set twice.');
					}
					++talker_diamond$count;
					this.talkerDiamond = new serverProto.inc.ProtoDiamondInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.talkerDiamond);
					break;
				case 9:
					if (talker_vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChatNotify.talkerVipLevel cannot be set twice.');
					}
					++talker_vip_level$count;
					this.talkerVipLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 10:
					if (listener_diamond$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChatNotify.listenerDiamond cannot be set twice.');
					}
					++listener_diamond$count;
					this.listenerDiamond = new serverProto.inc.ProtoDiamondInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.listenerDiamond);
					break;
				case 11:
					if (listener_vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChatNotify.listenerVipLevel cannot be set twice.');
					}
					++listener_vip_level$count;
					this.listenerVipLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
