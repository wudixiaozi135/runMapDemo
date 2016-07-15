package serverProto.basePvp {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.basePvp.ProtoBaseInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoUpdateBaseNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BASE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoUpdateBaseNotify.base_info", "baseInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.basePvp.ProtoBaseInfo);

		private var base_info$field:serverProto.basePvp.ProtoBaseInfo;

		public function clearBaseInfo():void {
			base_info$field = null;
		}

		public function get hasBaseInfo():Boolean {
			return base_info$field != null;
		}

		public function set baseInfo(value:serverProto.basePvp.ProtoBaseInfo):void {
			base_info$field = value;
		}

		public function get baseInfo():serverProto.basePvp.ProtoBaseInfo {
			return base_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasBaseInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, base_info$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var base_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (base_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoUpdateBaseNotify.baseInfo cannot be set twice.');
					}
					++base_info$count;
					this.baseInfo = new serverProto.basePvp.ProtoBaseInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.baseInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
