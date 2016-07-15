package serverProto.activity {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.activity.ProtoAwardPackageBox;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoSignInData extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TOTAL_MONTH_SIGN_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoSignInData.total_month_sign_count", "totalMonthSignCount", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_month_sign_count$field:uint;

		private var hasField$0:uint = 0;

		public function clearTotalMonthSignCount():void {
			hasField$0 &= 0xfffffffe;
			total_month_sign_count$field = new uint();
		}

		public function get hasTotalMonthSignCount():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set totalMonthSignCount(value:uint):void {
			hasField$0 |= 0x1;
			total_month_sign_count$field = value;
		}

		public function get totalMonthSignCount():uint {
			return total_month_sign_count$field;
		}

		/**
		 *  @private
		 */
		public static const CUR_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoSignInData.cur_time", "curTime", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var cur_time$field:uint;

		public function clearCurTime():void {
			hasField$0 &= 0xfffffffd;
			cur_time$field = new uint();
		}

		public function get hasCurTime():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set curTime(value:uint):void {
			hasField$0 |= 0x2;
			cur_time$field = value;
		}

		public function get curTime():uint {
			return cur_time$field;
		}

		/**
		 *  @private
		 */
		public static const MONTH_SIGN_STATUS:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoSignInData.month_sign_status", "monthSignStatus", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var monthSignStatus:Array = [];

		/**
		 *  @private
		 */
		public static const PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoSignInData.package_boxes", "packageBoxes", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoAwardPackageBox);

		[ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
		public var packageBoxes:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasTotalMonthSignCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, total_month_sign_count$field);
			}
			if (hasCurTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, cur_time$field);
			}
			for (var monthSignStatus$index:uint = 0; monthSignStatus$index < this.monthSignStatus.length; ++monthSignStatus$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.monthSignStatus[monthSignStatus$index]);
			}
			for (var packageBoxes$index:uint = 0; packageBoxes$index < this.packageBoxes.length; ++packageBoxes$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.packageBoxes[packageBoxes$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var total_month_sign_count$count:uint = 0;
			var cur_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (total_month_sign_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSignInData.totalMonthSignCount cannot be set twice.');
					}
					++total_month_sign_count$count;
					this.totalMonthSignCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (cur_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSignInData.curTime cannot be set twice.');
					}
					++cur_time$count;
					this.curTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.monthSignStatus);
						break;
					}
					this.monthSignStatus.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				case 4:
					this.packageBoxes.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoAwardPackageBox()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
