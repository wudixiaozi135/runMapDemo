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
	public  final class ProtoInvestmentPlanGiftInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoInvestmentPlanGiftInfo.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var id$field:uint;

		private var hasField$0:uint = 0;

		public function clearId():void {
			hasField$0 &= 0xfffffffe;
			id$field = new uint();
		}

		public function get hasId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set id(value:uint):void {
			hasField$0 |= 0x1;
			id$field = value;
		}

		public function get id():uint {
			return id$field;
		}

		/**
		 *  @private
		 */
		public static const TOTAL_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoInvestmentPlanGiftInfo.total_count", "totalCount", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_count$field:uint;

		public function clearTotalCount():void {
			hasField$0 &= 0xfffffffd;
			total_count$field = new uint();
		}

		public function get hasTotalCount():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set totalCount(value:uint):void {
			hasField$0 |= 0x2;
			total_count$field = value;
		}

		public function get totalCount():uint {
			return total_count$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoInvestmentPlanGiftInfo.award_count", "awardCount", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var award_count$field:uint;

		public function clearAwardCount():void {
			hasField$0 &= 0xfffffffb;
			award_count$field = new uint();
		}

		public function get hasAwardCount():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set awardCount(value:uint):void {
			hasField$0 |= 0x4;
			award_count$field = value;
		}

		public function get awardCount():uint {
			return award_count$field;
		}

		/**
		 *  @private
		 */
		public static const REMAIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoInvestmentPlanGiftInfo.remain_time", "remainTime", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remain_time$field:uint;

		public function clearRemainTime():void {
			hasField$0 &= 0xfffffff7;
			remain_time$field = new uint();
		}

		public function get hasRemainTime():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set remainTime(value:uint):void {
			hasField$0 |= 0x8;
			remain_time$field = value;
		}

		public function get remainTime():uint {
			return remain_time$field;
		}

		/**
		 *  @private
		 */
		public static const PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoInvestmentPlanGiftInfo.package_boxes", "packageBoxes", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoAwardPackageBox);

		[ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
		public var packageBoxes:Array = [];

		/**
		 *  @private
		 */
		public static const VALUES:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoInvestmentPlanGiftInfo.values", "values", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var values:Array = [];

		/**
		 *  @private
		 */
		public static const STATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoInvestmentPlanGiftInfo.state", "state", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var state$field:uint;

		public function clearState():void {
			hasField$0 &= 0xffffffef;
			state$field = new uint();
		}

		public function get hasState():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set state(value:uint):void {
			hasField$0 |= 0x10;
			state$field = value;
		}

		public function get state():uint {
			return state$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, id$field);
			}
			if (hasTotalCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, total_count$field);
			}
			if (hasAwardCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, award_count$field);
			}
			if (hasRemainTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, remain_time$field);
			}
			for (var packageBoxes$index:uint = 0; packageBoxes$index < this.packageBoxes.length; ++packageBoxes$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.packageBoxes[packageBoxes$index]);
			}
			for (var values$index:uint = 0; values$index < this.values.length; ++values$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.values[values$index]);
			}
			if (hasState) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, state$field);
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
			var total_count$count:uint = 0;
			var award_count$count:uint = 0;
			var remain_time$count:uint = 0;
			var state$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInvestmentPlanGiftInfo.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (total_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInvestmentPlanGiftInfo.totalCount cannot be set twice.');
					}
					++total_count$count;
					this.totalCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (award_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInvestmentPlanGiftInfo.awardCount cannot be set twice.');
					}
					++award_count$count;
					this.awardCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (remain_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInvestmentPlanGiftInfo.remainTime cannot be set twice.');
					}
					++remain_time$count;
					this.remainTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					this.packageBoxes.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoAwardPackageBox()));
					break;
				case 6:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.values);
						break;
					}
					this.values.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				case 7:
					if (state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInvestmentPlanGiftInfo.state cannot be set twice.');
					}
					++state$count;
					this.state = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
