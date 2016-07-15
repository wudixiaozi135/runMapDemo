package serverProto.innerPartner {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.innerPartner.Proto3366MyInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoQuery3366InfoRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPartner.ProtoQuery3366InfoRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const MY_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.innerPartner.ProtoQuery3366InfoRsp.my_info", "myInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.innerPartner.Proto3366MyInfo);

		private var my_info$field:serverProto.innerPartner.Proto3366MyInfo;

		public function clearMyInfo():void {
			my_info$field = null;
		}

		public function get hasMyInfo():Boolean {
			return my_info$field != null;
		}

		public function set myInfo(value:serverProto.innerPartner.Proto3366MyInfo):void {
			my_info$field = value;
		}

		public function get myInfo():serverProto.innerPartner.Proto3366MyInfo {
			return my_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, ret$field);
			}
			if (hasMyInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, my_info$field);
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
			var my_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuery3366InfoRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (my_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuery3366InfoRsp.myInfo cannot be set twice.');
					}
					++my_info$count;
					this.myInfo = new serverProto.innerPartner.Proto3366MyInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.myInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
