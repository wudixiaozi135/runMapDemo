package serverProto.chest {
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
	public  final class ProtoQuiltChestReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.chest.ProtoQuiltChestReq.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var id:uint;

		/**
		 *  @private
		 */
		public static const QUILT_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.chest.ProtoQuiltChestReq.quilt_times", "quiltTimes", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var quiltTimes:uint;

		/**
		 *  @private
		 */
		public static const PAY_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.chest.ProtoQuiltChestReq.pay_flag", "payFlag", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var pay_flag$field:uint;

		private var hasField$0:uint = 0;

		public function clearPayFlag():void {
			hasField$0 &= 0xfffffffe;
			pay_flag$field = new uint();
		}

		public function get hasPayFlag():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set payFlag(value:uint):void {
			hasField$0 |= 0x1;
			pay_flag$field = value;
		}

		public function get payFlag():uint {
			return pay_flag$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.id);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.quiltTimes);
			if (hasPayFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, pay_flag$field);
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
			var quilt_times$count:uint = 0;
			var pay_flag$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuiltChestReq.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (quilt_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuiltChestReq.quiltTimes cannot be set twice.');
					}
					++quilt_times$count;
					this.quiltTimes = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (pay_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuiltChestReq.payFlag cannot be set twice.');
					}
					++pay_flag$count;
					this.payFlag = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
