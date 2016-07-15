package serverProto.user {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.user.ProtoTransfigurationType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTransfigurationRequset extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.user.ProtoTransfigurationRequset.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.user.ProtoTransfigurationType);

		public var type:int;

		/**
		 *  @private
		 */
		public static const OWN_NINJA_SEQ:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoTransfigurationRequset.own_ninja_seq", "ownNinjaSeq", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var own_ninja_seq$field:int;

		private var hasField$0:uint = 0;

		public function clearOwnNinjaSeq():void {
			hasField$0 &= 0xfffffffe;
			own_ninja_seq$field = new int();
		}

		public function get hasOwnNinjaSeq():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set ownNinjaSeq(value:int):void {
			hasField$0 |= 0x1;
			own_ninja_seq$field = value;
		}

		public function get ownNinjaSeq():int {
			return own_ninja_seq$field;
		}

		/**
		 *  @private
		 */
		public static const AUTO_BUY:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.user.ProtoTransfigurationRequset.auto_buy", "autoBuy", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var auto_buy$field:Boolean;

		public function clearAutoBuy():void {
			hasField$0 &= 0xfffffffd;
			auto_buy$field = new Boolean();
		}

		public function get hasAutoBuy():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set autoBuy(value:Boolean):void {
			hasField$0 |= 0x2;
			auto_buy$field = value;
		}

		public function get autoBuy():Boolean {
			return auto_buy$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.type);
			if (hasOwnNinjaSeq) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, own_ninja_seq$field);
			}
			if (hasAutoBuy) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, auto_buy$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var type$count:uint = 0;
			var own_ninja_seq$count:uint = 0;
			var auto_buy$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTransfigurationRequset.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (own_ninja_seq$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTransfigurationRequset.ownNinjaSeq cannot be set twice.');
					}
					++own_ninja_seq$count;
					this.ownNinjaSeq = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (auto_buy$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTransfigurationRequset.autoBuy cannot be set twice.');
					}
					++auto_buy$count;
					this.autoBuy = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
