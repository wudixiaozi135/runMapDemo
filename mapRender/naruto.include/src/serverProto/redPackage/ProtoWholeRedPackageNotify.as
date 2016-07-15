package serverProto.redPackage {
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
	public  final class ProtoWholeRedPackageNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RED_PACKAGE_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.redPackage.ProtoWholeRedPackageNotify.red_package_id", "redPackageId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var red_package_id$field:UInt64;

		public function clearRedPackageId():void {
			red_package_id$field = null;
		}

		public function get hasRedPackageId():Boolean {
			return red_package_id$field != null;
		}

		public function set redPackageId(value:UInt64):void {
			red_package_id$field = value;
		}

		public function get redPackageId():UInt64 {
			return red_package_id$field;
		}

		/**
		 *  @private
		 */
		public static const RED_PACKAGE_MSG:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.redPackage.ProtoWholeRedPackageNotify.red_package_msg", "redPackageMsg", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var red_package_msg$field:String;

		public function clearRedPackageMsg():void {
			red_package_msg$field = null;
		}

		public function get hasRedPackageMsg():Boolean {
			return red_package_msg$field != null;
		}

		public function set redPackageMsg(value:String):void {
			red_package_msg$field = value;
		}

		public function get redPackageMsg():String {
			return red_package_msg$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRedPackageId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, red_package_id$field);
			}
			if (hasRedPackageMsg) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, red_package_msg$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var red_package_id$count:uint = 0;
			var red_package_msg$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (red_package_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWholeRedPackageNotify.redPackageId cannot be set twice.');
					}
					++red_package_id$count;
					this.redPackageId = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 2:
					if (red_package_msg$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWholeRedPackageNotify.redPackageMsg cannot be set twice.');
					}
					++red_package_msg$count;
					this.redPackageMsg = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
