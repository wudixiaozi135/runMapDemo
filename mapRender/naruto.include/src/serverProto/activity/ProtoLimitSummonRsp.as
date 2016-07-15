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
	public  final class ProtoLimitSummonRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoLimitSummonRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const ACTIVITY_BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLimitSummonRsp.activity_begin_time", "activityBeginTime", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var activity_begin_time$field:uint;

		private var hasField$0:uint = 0;

		public function clearActivityBeginTime():void {
			hasField$0 &= 0xfffffffe;
			activity_begin_time$field = new uint();
		}

		public function get hasActivityBeginTime():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set activityBeginTime(value:uint):void {
			hasField$0 |= 0x1;
			activity_begin_time$field = value;
		}

		public function get activityBeginTime():uint {
			return activity_begin_time$field;
		}

		/**
		 *  @private
		 */
		public static const ACTIVITY_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLimitSummonRsp.activity_end_time", "activityEndTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var activity_end_time$field:uint;

		public function clearActivityEndTime():void {
			hasField$0 &= 0xfffffffd;
			activity_end_time$field = new uint();
		}

		public function get hasActivityEndTime():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set activityEndTime(value:uint):void {
			hasField$0 |= 0x2;
			activity_end_time$field = value;
		}

		public function get activityEndTime():uint {
			return activity_end_time$field;
		}

		/**
		 *  @private
		 */
		public static const BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoLimitSummonRsp.boxes", "boxes", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoAwardPackageBox);

		[ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
		public var boxes:Array = [];

		/**
		 *  @private
		 */
		public static const ITEM_AREA:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLimitSummonRsp.item_area", "itemArea", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var itemArea:Array = [];

		/**
		 *  @private
		 */
		public static const ITEM_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLimitSummonRsp.item_num", "itemNum", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var item_num$field:uint;

		public function clearItemNum():void {
			hasField$0 &= 0xfffffffb;
			item_num$field = new uint();
		}

		public function get hasItemNum():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set itemNum(value:uint):void {
			hasField$0 |= 0x4;
			item_num$field = value;
		}

		public function get itemNum():uint {
			return item_num$field;
		}

		/**
		 *  @private
		 */
		public static const OPEN_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLimitSummonRsp.open_level", "openLevel", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var open_level$field:uint;

		public function clearOpenLevel():void {
			hasField$0 &= 0xfffffff7;
			open_level$field = new uint();
		}

		public function get hasOpenLevel():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set openLevel(value:uint):void {
			hasField$0 |= 0x8;
			open_level$field = value;
		}

		public function get openLevel():uint {
			return open_level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasActivityBeginTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, activity_begin_time$field);
			}
			if (hasActivityEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, activity_end_time$field);
			}
			for (var boxes$index:uint = 0; boxes$index < this.boxes.length; ++boxes$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.boxes[boxes$index]);
			}
			for (var itemArea$index:uint = 0; itemArea$index < this.itemArea.length; ++itemArea$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.itemArea[itemArea$index]);
			}
			if (hasItemNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, item_num$field);
			}
			if (hasOpenLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, open_level$field);
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
			var activity_begin_time$count:uint = 0;
			var activity_end_time$count:uint = 0;
			var item_num$count:uint = 0;
			var open_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitSummonRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (activity_begin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitSummonRsp.activityBeginTime cannot be set twice.');
					}
					++activity_begin_time$count;
					this.activityBeginTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (activity_end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitSummonRsp.activityEndTime cannot be set twice.');
					}
					++activity_end_time$count;
					this.activityEndTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					this.boxes.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoAwardPackageBox()));
					break;
				case 5:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.itemArea);
						break;
					}
					this.itemArea.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				case 6:
					if (item_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitSummonRsp.itemNum cannot be set twice.');
					}
					++item_num$count;
					this.itemNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (open_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLimitSummonRsp.openLevel cannot be set twice.');
					}
					++open_level$count;
					this.openLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
