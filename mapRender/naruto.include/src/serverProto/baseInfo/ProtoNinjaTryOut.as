package serverProto.baseInfo {
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
	public  final class ProtoNinjaTryOut extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const LEFT_MINUTES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaTryOut.left_minutes", "leftMinutes", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var left_minutes$field:int;

		private var hasField$0:uint = 0;

		public function clearLeftMinutes():void {
			hasField$0 &= 0xfffffffe;
			left_minutes$field = new int();
		}

		public function get hasLeftMinutes():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set leftMinutes(value:int):void {
			hasField$0 |= 0x1;
			left_minutes$field = value;
		}

		public function get leftMinutes():int {
			return left_minutes$field;
		}

		/**
		 *  @private
		 */
		public static const VIP_FLAG:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaTryOut.vip_flag", "vipFlag", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var vip_flag$field:int;

		public function clearVipFlag():void {
			hasField$0 &= 0xfffffffd;
			vip_flag$field = new int();
		}

		public function get hasVipFlag():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set vipFlag(value:int):void {
			hasField$0 |= 0x2;
			vip_flag$field = value;
		}

		public function get vipFlag():int {
			return vip_flag$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasLeftMinutes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, left_minutes$field);
			}
			if (hasVipFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, vip_flag$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var left_minutes$count:uint = 0;
			var vip_flag$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (left_minutes$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaTryOut.leftMinutes cannot be set twice.');
					}
					++left_minutes$count;
					this.leftMinutes = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (vip_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaTryOut.vipFlag cannot be set twice.');
					}
					++vip_flag$count;
					this.vipFlag = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
