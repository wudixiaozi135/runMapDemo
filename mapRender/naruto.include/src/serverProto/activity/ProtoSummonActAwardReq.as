package serverProto.activity {
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
	public  final class ProtoSummonActAwardReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PKG_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoSummonActAwardReq.pkg_id", "pkgId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var pkg_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearPkgId():void {
			hasField$0 &= 0xfffffffe;
			pkg_id$field = new uint();
		}

		public function get hasPkgId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set pkgId(value:uint):void {
			hasField$0 |= 0x1;
			pkg_id$field = value;
		}

		public function get pkgId():uint {
			return pkg_id$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasPkgId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, pkg_id$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var pkg_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (pkg_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSummonActAwardReq.pkgId cannot be set twice.');
					}
					++pkg_id$count;
					this.pkgId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
