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
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoOpenServiceRechargeRebateRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoOpenServiceRechargeRebateRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const ACTIVITY_BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceRechargeRebateRsp.activity_begin_time", "activityBeginTime", (2 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const ACTIVITY_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceRechargeRebateRsp.activity_end_time", "activityEndTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const REBATED:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceRechargeRebateRsp.rebated", "rebated", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rebated$field:uint;

		public function clearRebated():void {
			hasField$0 &= 0xfffffffb;
			rebated$field = new uint();
		}

		public function get hasRebated():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set rebated(value:uint):void {
			hasField$0 |= 0x4;
			rebated$field = value;
		}

		public function get rebated():uint {
			return rebated$field;
		}

		/**
		 *  @private
		 */
		public static const AVAILABLE_REBATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceRechargeRebateRsp.available_rebate", "availableRebate", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var available_rebate$field:uint;

		public function clearAvailableRebate():void {
			hasField$0 &= 0xfffffff7;
			available_rebate$field = new uint();
		}

		public function get hasAvailableRebate():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set availableRebate(value:uint):void {
			hasField$0 |= 0x8;
			available_rebate$field = value;
		}

		public function get availableRebate():uint {
			return available_rebate$field;
		}

		/**
		 *  @private
		 */
		public static const REMAIND_REBATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceRechargeRebateRsp.remaind_rebate", "remaindRebate", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remaind_rebate$field:uint;

		public function clearRemaindRebate():void {
			hasField$0 &= 0xffffffef;
			remaind_rebate$field = new uint();
		}

		public function get hasRemaindRebate():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set remaindRebate(value:uint):void {
			hasField$0 |= 0x10;
			remaind_rebate$field = value;
		}

		public function get remaindRebate():uint {
			return remaind_rebate$field;
		}

		/**
		 *  @private
		 */
		public static const RATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceRechargeRebateRsp.rate", "rate", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rate$field:uint;

		public function clearRate():void {
			hasField$0 &= 0xffffffdf;
			rate$field = new uint();
		}

		public function get hasRate():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set rate(value:uint):void {
			hasField$0 |= 0x20;
			rate$field = value;
		}

		public function get rate():uint {
			return rate$field;
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
			if (hasRebated) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, rebated$field);
			}
			if (hasAvailableRebate) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, available_rebate$field);
			}
			if (hasRemaindRebate) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, remaind_rebate$field);
			}
			if (hasRate) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, rate$field);
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
			var rebated$count:uint = 0;
			var available_rebate$count:uint = 0;
			var remaind_rebate$count:uint = 0;
			var rate$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceRechargeRebateRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (activity_begin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceRechargeRebateRsp.activityBeginTime cannot be set twice.');
					}
					++activity_begin_time$count;
					this.activityBeginTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (activity_end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceRechargeRebateRsp.activityEndTime cannot be set twice.');
					}
					++activity_end_time$count;
					this.activityEndTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (rebated$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceRechargeRebateRsp.rebated cannot be set twice.');
					}
					++rebated$count;
					this.rebated = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (available_rebate$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceRechargeRebateRsp.availableRebate cannot be set twice.');
					}
					++available_rebate$count;
					this.availableRebate = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (remaind_rebate$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceRechargeRebateRsp.remaindRebate cannot be set twice.');
					}
					++remaind_rebate$count;
					this.remaindRebate = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (rate$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceRechargeRebateRsp.rate cannot be set twice.');
					}
					++rate$count;
					this.rate = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
