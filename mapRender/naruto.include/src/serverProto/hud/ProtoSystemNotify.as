package serverProto.hud {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.hud.ProtoMsgArea;
	import serverProto.hud.ProtoMsgArg;
	import serverProto.hud.ProtoMsgChannel;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoSystemNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.hud.ProtoSystemNotify.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var id:uint;

		/**
		 *  @private
		 */
		public static const AREA:RepeatedFieldDescriptor$TYPE_ENUM = new RepeatedFieldDescriptor$TYPE_ENUM("serverProto.hud.ProtoSystemNotify.area", "area", (2 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.hud.ProtoMsgArea);

		[ArrayElementType("int")]
		public var area:Array = [];

		/**
		 *  @private
		 */
		public static const CHANNEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.hud.ProtoSystemNotify.channel", "channel", (3 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.hud.ProtoMsgChannel);

		private var channel$field:int;

		private var hasField$0:uint = 0;

		public function clearChannel():void {
			hasField$0 &= 0xfffffffe;
			channel$field = new int();
		}

		public function get hasChannel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set channel(value:int):void {
			hasField$0 |= 0x1;
			channel$field = value;
		}

		public function get channel():int {
			return channel$field;
		}

		/**
		 *  @private
		 */
		public static const MSG:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.hud.ProtoSystemNotify.msg", "msg", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var msg$field:String;

		public function clearMsg():void {
			msg$field = null;
		}

		public function get hasMsg():Boolean {
			return msg$field != null;
		}

		public function set msg(value:String):void {
			msg$field = value;
		}

		public function get msg():String {
			return msg$field;
		}

		/**
		 *  @private
		 */
		public static const ARGS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.hud.ProtoSystemNotify.args", "args", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.hud.ProtoMsgArg);

		[ArrayElementType("serverProto.hud.ProtoMsgArg")]
		public var args:Array = [];

		/**
		 *  @private
		 */
		public static const YOU_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.hud.ProtoSystemNotify.you_flag", "youFlag", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var you_flag$field:uint;

		public function clearYouFlag():void {
			hasField$0 &= 0xfffffffd;
			you_flag$field = new uint();
		}

		public function get hasYouFlag():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set youFlag(value:uint):void {
			hasField$0 |= 0x2;
			you_flag$field = value;
		}

		public function get youFlag():uint {
			return you_flag$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.id);
			for (var area$index:uint = 0; area$index < this.area.length; ++area$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.area[area$index]);
			}
			if (hasChannel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, channel$field);
			}
			if (hasMsg) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, msg$field);
			}
			for (var args$index:uint = 0; args$index < this.args.length; ++args$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.args[args$index]);
			}
			if (hasYouFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, you_flag$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var id$count:uint = 0;
			var channel$count:uint = 0;
			var msg$count:uint = 0;
			var you_flag$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSystemNotify.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_ENUM, this.area);
						break;
					}
					this.area.push(com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input));
					break;
				case 3:
					if (channel$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSystemNotify.channel cannot be set twice.');
					}
					++channel$count;
					this.channel = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 4:
					if (msg$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSystemNotify.msg cannot be set twice.');
					}
					++msg$count;
					this.msg = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 5:
					this.args.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.hud.ProtoMsgArg()));
					break;
				case 6:
					if (you_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSystemNotify.youFlag cannot be set twice.');
					}
					++you_flag$count;
					this.youFlag = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
