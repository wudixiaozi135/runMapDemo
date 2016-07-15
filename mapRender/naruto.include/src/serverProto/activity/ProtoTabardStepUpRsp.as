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
	public  final class ProtoTabardStepUpRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoTabardStepUpRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);
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
		public static const ACTIVITY_BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoTabardStepUpRsp.activity_begin_time", "activityBeginTime", (2 << 3) | com.netease.protobuf.WireType.VARINT);
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
		public static const ACTIVITY_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoTabardStepUpRsp.activity_end_time", "activityEndTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);
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
		public static const AWARD_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoTabardStepUpRsp.award_end_time", "awardEndTime", (4 << 3) | com.netease.protobuf.WireType.VARINT);
		private var award_end_time$field:uint;
		public function clearAwardEndTime():void {
			hasField$0 &= 0xfffffffb;
			award_end_time$field = new uint();
		}
		public function get hasAwardEndTime():Boolean {
			return (hasField$0 & 0x4) != 0;
		}
		public function set awardEndTime(value:uint):void {
			hasField$0 |= 0x4;
			award_end_time$field = value;
		}
		public function get awardEndTime():uint {
			return award_end_time$field;
		}
		/**
		 *  @private
		 */
		public static const AWARD_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoTabardStepUpRsp.award_info", "awardInfo", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoAwardPackageBox);
		[ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
		public var awardInfo:Array = [];
		/**
		 *  @private
		 */
		public static const ACHIVEMENT_AWARD_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoTabardStepUpRsp.achivement_award_info", "achivementAwardInfo", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoAwardPackageBox);
		[ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
		public var achivementAwardInfo:Array = [];
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
			if (hasAwardEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, award_end_time$field);
			}
			for (var awardInfo$index:uint = 0; awardInfo$index < this.awardInfo.length; ++awardInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.awardInfo[awardInfo$index]);
			}
			for (var achivementAwardInfo$index:uint = 0; achivementAwardInfo$index < this.achivementAwardInfo.length; ++achivementAwardInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.achivementAwardInfo[achivementAwardInfo$index]);
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
			var award_end_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTabardStepUpRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (activity_begin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTabardStepUpRsp.activityBeginTime cannot be set twice.');
					}
					++activity_begin_time$count;
					this.activityBeginTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (activity_end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTabardStepUpRsp.activityEndTime cannot be set twice.');
					}
					++activity_end_time$count;
					this.activityEndTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (award_end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTabardStepUpRsp.awardEndTime cannot be set twice.');
					}
					++award_end_time$count;
					this.awardEndTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					this.awardInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoAwardPackageBox()));
					break;
				case 6:
					this.achivementAwardInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoAwardPackageBox()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}
	}
}
