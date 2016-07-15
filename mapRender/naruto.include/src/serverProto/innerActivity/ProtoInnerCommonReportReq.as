package serverProto.innerActivity {
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
	public  final class ProtoInnerCommonReportReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerCommonReportReq.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var type$field:uint;

		private var hasField$0:uint = 0;

		public function clearType():void {
			hasField$0 &= 0xfffffffe;
			type$field = new uint();
		}

		public function get hasType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set type(value:uint):void {
			hasField$0 |= 0x1;
			type$field = value;
		}

		public function get type():uint {
			return type$field;
		}

		/**
		 *  @private
		 */
		public static const DATA1:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerCommonReportReq.data1", "data1", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var data1$field:uint;

		public function clearData1():void {
			hasField$0 &= 0xfffffffd;
			data1$field = new uint();
		}

		public function get hasData1():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set data1(value:uint):void {
			hasField$0 |= 0x2;
			data1$field = value;
		}

		public function get data1():uint {
			return data1$field;
		}

		/**
		 *  @private
		 */
		public static const DATA2:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerCommonReportReq.data2", "data2", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var data2$field:uint;

		public function clearData2():void {
			hasField$0 &= 0xfffffffb;
			data2$field = new uint();
		}

		public function get hasData2():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set data2(value:uint):void {
			hasField$0 |= 0x4;
			data2$field = value;
		}

		public function get data2():uint {
			return data2$field;
		}

		/**
		 *  @private
		 */
		public static const DATA3:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerCommonReportReq.data3", "data3", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var data3$field:uint;

		public function clearData3():void {
			hasField$0 &= 0xfffffff7;
			data3$field = new uint();
		}

		public function get hasData3():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set data3(value:uint):void {
			hasField$0 |= 0x8;
			data3$field = value;
		}

		public function get data3():uint {
			return data3$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, type$field);
			}
			if (hasData1) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, data1$field);
			}
			if (hasData2) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, data2$field);
			}
			if (hasData3) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, data3$field);
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
			var data1$count:uint = 0;
			var data2$count:uint = 0;
			var data3$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerCommonReportReq.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (data1$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerCommonReportReq.data1 cannot be set twice.');
					}
					++data1$count;
					this.data1 = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (data2$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerCommonReportReq.data2 cannot be set twice.');
					}
					++data2$count;
					this.data2 = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (data3$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerCommonReportReq.data3 cannot be set twice.');
					}
					++data3$count;
					this.data3 = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
