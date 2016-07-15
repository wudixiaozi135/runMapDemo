package serverProto.innerPartner {
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
	public  final class ProtoQueryXinyueInfoRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPartner.ProtoQueryXinyueInfoRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ret$field:int;

		private var hasField$0:uint = 0;

		public function clearRet():void {
			hasField$0 &= 0xfffffffe;
			ret$field = new int();
		}

		public function get hasRet():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set ret(value:int):void {
			hasField$0 |= 0x1;
			ret$field = value;
		}

		public function get ret():int {
			return ret$field;
		}

		/**
		 *  @private
		 */
		public static const VIP_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPartner.ProtoQueryXinyueInfoRsp.vip_level", "vipLevel", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var vip_level$field:uint;

		public function clearVipLevel():void {
			hasField$0 &= 0xfffffffd;
			vip_level$field = new uint();
		}

		public function get hasVipLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set vipLevel(value:uint):void {
			hasField$0 |= 0x2;
			vip_level$field = value;
		}

		public function get vipLevel():uint {
			return vip_level$field;
		}

		/**
		 *  @private
		 */
		public static const POINT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPartner.ProtoQueryXinyueInfoRsp.point", "point", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var point$field:uint;

		public function clearPoint():void {
			hasField$0 &= 0xfffffffb;
			point$field = new uint();
		}

		public function get hasPoint():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set point(value:uint):void {
			hasField$0 |= 0x4;
			point$field = value;
		}

		public function get point():uint {
			return point$field;
		}

		/**
		 *  @private
		 */
		public static const FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPartner.ProtoQueryXinyueInfoRsp.flag", "flag", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var flag$field:uint;

		public function clearFlag():void {
			hasField$0 &= 0xfffffff7;
			flag$field = new uint();
		}

		public function get hasFlag():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set flag(value:uint):void {
			hasField$0 |= 0x8;
			flag$field = value;
		}

		public function get flag():uint {
			return flag$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, ret$field);
			}
			if (hasVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, vip_level$field);
			}
			if (hasPoint) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, point$field);
			}
			if (hasFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, flag$field);
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
			var vip_level$count:uint = 0;
			var point$count:uint = 0;
			var flag$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQueryXinyueInfoRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQueryXinyueInfoRsp.vipLevel cannot be set twice.');
					}
					++vip_level$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (point$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQueryXinyueInfoRsp.point cannot be set twice.');
					}
					++point$count;
					this.point = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQueryXinyueInfoRsp.flag cannot be set twice.');
					}
					++flag$count;
					this.flag = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
