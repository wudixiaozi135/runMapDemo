package serverProto.user {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaPropertyComposeInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ORIGINAL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoNinjaPropertyComposeInfo.original", "original", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var original$field:int;

		private var hasField$0:uint = 0;

		public function clearOriginal():void {
			hasField$0 &= 0xfffffffe;
			original$field = new int();
		}

		public function get hasOriginal():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set original(value:int):void {
			hasField$0 |= 0x1;
			original$field = value;
		}

		public function get original():int {
			return original$field;
		}

		/**
		 *  @private
		 */
		public static const OTHER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoNinjaPropertyComposeInfo.other", "other", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var other$field:int;

		public function clearOther():void {
			hasField$0 &= 0xfffffffd;
			other$field = new int();
		}

		public function get hasOther():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set other(value:int):void {
			hasField$0 |= 0x2;
			other$field = value;
		}

		public function get other():int {
			return other$field;
		}

		/**
		 *  @private
		 */
		public static const VIP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoNinjaPropertyComposeInfo.vip", "vip", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var vip$field:int;

		public function clearVip():void {
			hasField$0 &= 0xfffffffb;
			vip$field = new int();
		}

		public function get hasVip():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set vip(value:int):void {
			hasField$0 |= 0x4;
			vip$field = value;
		}

		public function get vip():int {
			return vip$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasOriginal) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, original$field);
			}
			if (hasOther) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, other$field);
			}
			if (hasVip) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, vip$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var original$count:uint = 0;
			var other$count:uint = 0;
			var vip$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (original$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyComposeInfo.original cannot be set twice.');
					}
					++original$count;
					this.original = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (other$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyComposeInfo.other cannot be set twice.');
					}
					++other$count;
					this.other = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (vip$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyComposeInfo.vip cannot be set twice.');
					}
					++vip$count;
					this.vip = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
