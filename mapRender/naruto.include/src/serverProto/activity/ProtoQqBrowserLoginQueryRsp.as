package serverProto.activity {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.activity.ProtoAwardPackageBox;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoQqBrowserLoginQueryRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoQqBrowserLoginQueryRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		private var ret$field:serverProto.inc.ProtoRetInfo;

		public function clearRet():void {
			ret$field = null;
		}

		public function get hasRet():Boolean {
			return ret$field != null;
		}

		public function set ret(value:serverProto.inc.ProtoRetInfo):void {
			ret$field = value;
		}

		public function get ret():serverProto.inc.ProtoRetInfo {
			return ret$field;
		}

		/**
		 *  @private
		 */
		public static const STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoQqBrowserLoginQueryRsp.status", "status", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var status$field:uint;

		private var hasField$0:uint = 0;

		public function clearStatus():void {
			hasField$0 &= 0xfffffffe;
			status$field = new uint();
		}

		public function get hasStatus():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set status(value:uint):void {
			hasField$0 |= 0x1;
			status$field = value;
		}

		public function get status():uint {
			return status$field;
		}

		/**
		 *  @private
		 */
		public static const FRESHMAN_BOXES:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoQqBrowserLoginQueryRsp.freshman_boxes", "freshmanBoxes", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoAwardPackageBox);

		private var freshman_boxes$field:serverProto.activity.ProtoAwardPackageBox;

		public function clearFreshmanBoxes():void {
			freshman_boxes$field = null;
		}

		public function get hasFreshmanBoxes():Boolean {
			return freshman_boxes$field != null;
		}

		public function set freshmanBoxes(value:serverProto.activity.ProtoAwardPackageBox):void {
			freshman_boxes$field = value;
		}

		public function get freshmanBoxes():serverProto.activity.ProtoAwardPackageBox {
			return freshman_boxes$field;
		}

		/**
		 *  @private
		 */
		public static const PACKAGE_BOXES:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoQqBrowserLoginQueryRsp.package_boxes", "packageBoxes", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoAwardPackageBox);

		private var package_boxes$field:serverProto.activity.ProtoAwardPackageBox;

		public function clearPackageBoxes():void {
			package_boxes$field = null;
		}

		public function get hasPackageBoxes():Boolean {
			return package_boxes$field != null;
		}

		public function set packageBoxes(value:serverProto.activity.ProtoAwardPackageBox):void {
			package_boxes$field = value;
		}

		public function get packageBoxes():serverProto.activity.ProtoAwardPackageBox {
			return package_boxes$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, status$field);
			}
			if (hasFreshmanBoxes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, freshman_boxes$field);
			}
			if (hasPackageBoxes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, package_boxes$field);
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
			var status$count:uint = 0;
			var freshman_boxes$count:uint = 0;
			var package_boxes$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQqBrowserLoginQueryRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQqBrowserLoginQueryRsp.status cannot be set twice.');
					}
					++status$count;
					this.status = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (freshman_boxes$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQqBrowserLoginQueryRsp.freshmanBoxes cannot be set twice.');
					}
					++freshman_boxes$count;
					this.freshmanBoxes = new serverProto.activity.ProtoAwardPackageBox();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.freshmanBoxes);
					break;
				case 4:
					if (package_boxes$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQqBrowserLoginQueryRsp.packageBoxes cannot be set twice.');
					}
					++package_boxes$count;
					this.packageBoxes = new serverProto.activity.ProtoAwardPackageBox();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.packageBoxes);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
