package serverProto.tabard {
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
	public  final class ProtoTabardStepUpReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const FLAG:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoTabardStepUpReq.flag", "flag", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var flag$field:int;

		private var hasField$0:uint = 0;

		public function clearFlag():void {
			hasField$0 &= 0xfffffffe;
			flag$field = new int();
		}

		public function get hasFlag():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set flag(value:int):void {
			hasField$0 |= 0x1;
			flag$field = value;
		}

		public function get flag():int {
			return flag$field;
		}

		/**
		 *  @private
		 */
		public static const AUTO_BUY_FLAG:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoTabardStepUpReq.auto_buy_flag", "autoBuyFlag", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var auto_buy_flag$field:int;

		public function clearAutoBuyFlag():void {
			hasField$0 &= 0xfffffffd;
			auto_buy_flag$field = new int();
		}

		public function get hasAutoBuyFlag():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set autoBuyFlag(value:int):void {
			hasField$0 |= 0x2;
			auto_buy_flag$field = value;
		}

		public function get autoBuyFlag():int {
			return auto_buy_flag$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, flag$field);
			}
			if (hasAutoBuyFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, auto_buy_flag$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var flag$count:uint = 0;
			var auto_buy_flag$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTabardStepUpReq.flag cannot be set twice.');
					}
					++flag$count;
					this.flag = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (auto_buy_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTabardStepUpReq.autoBuyFlag cannot be set twice.');
					}
					++auto_buy_flag$count;
					this.autoBuyFlag = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
