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
	import serverProto.activity.AwardInfo;
	// @@protoc_insertion_point(imports)
	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoPlayerRecallRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoPlayerRecallRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);
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
		public static const ACTIVITY_BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoPlayerRecallRsp.activity_begin_time", "activityBeginTime", (2 << 3) | com.netease.protobuf.WireType.VARINT);
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
		public static const ACTIVITY_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoPlayerRecallRsp.activity_end_time", "activityEndTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);
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
		public static const AWARD_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoPlayerRecallRsp.award_end_time", "awardEndTime", (4 << 3) | com.netease.protobuf.WireType.VARINT);
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
		public static const HISTORY_RECHARGE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoPlayerRecallRsp.history_recharge", "historyRecharge", (5 << 3) | com.netease.protobuf.WireType.VARINT);
		private var history_recharge$field:uint;
		public function clearHistoryRecharge():void {
			hasField$0 &= 0xfffffff7;
			history_recharge$field = new uint();
		}
		public function get hasHistoryRecharge():Boolean {
			return (hasField$0 & 0x8) != 0;
		}
		public function set historyRecharge(value:uint):void {
			hasField$0 |= 0x8;
			history_recharge$field = value;
		}
		public function get historyRecharge():uint {
			return history_recharge$field;
		}
		/**
		 *  @private
		 */
		public static const HISTORY_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoPlayerRecallRsp.history_level", "historyLevel", (6 << 3) | com.netease.protobuf.WireType.VARINT);
		private var history_level$field:uint;
		public function clearHistoryLevel():void {
			hasField$0 &= 0xffffffef;
			history_level$field = new uint();
		}
		public function get hasHistoryLevel():Boolean {
			return (hasField$0 & 0x10) != 0;
		}
		public function set historyLevel(value:uint):void {
			hasField$0 |= 0x10;
			history_level$field = value;
		}
		public function get historyLevel():uint {
			return history_level$field;
		}
		/**
		 *  @private
		 */
		public static const MONEY_COUPE_REBATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoPlayerRecallRsp.money_coupe_rebate", "moneyCoupeRebate", (7 << 3) | com.netease.protobuf.WireType.VARINT);
		private var money_coupe_rebate$field:uint;
		public function clearMoneyCoupeRebate():void {
			hasField$0 &= 0xffffffdf;
			money_coupe_rebate$field = new uint();
		}
		public function get hasMoneyCoupeRebate():Boolean {
			return (hasField$0 & 0x20) != 0;
		}
		public function set moneyCoupeRebate(value:uint):void {
			hasField$0 |= 0x20;
			money_coupe_rebate$field = value;
		}
		public function get moneyCoupeRebate():uint {
			return money_coupe_rebate$field;
		}
		/**
		 *  @private
		 */
		public static const LOGIN_AWARD_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoPlayerRecallRsp.login_award_info", "loginAwardInfo", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.AwardInfo);
		private var login_award_info$field:serverProto.activity.AwardInfo;
		public function clearLoginAwardInfo():void {
			login_award_info$field = null;
		}
		public function get hasLoginAwardInfo():Boolean {
			return login_award_info$field != null;
		}
		public function set loginAwardInfo(value:serverProto.activity.AwardInfo):void {
			login_award_info$field = value;
		}
		public function get loginAwardInfo():serverProto.activity.AwardInfo {
			return login_award_info$field;
		}
		/**
		 *  @private
		 */
		public static const HISTORY_RECHARGE_AWARD_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoPlayerRecallRsp.history_recharge_award_info", "historyRechargeAwardInfo", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.AwardInfo);
		private var history_recharge_award_info$field:serverProto.activity.AwardInfo;
		public function clearHistoryRechargeAwardInfo():void {
			history_recharge_award_info$field = null;
		}
		public function get hasHistoryRechargeAwardInfo():Boolean {
			return history_recharge_award_info$field != null;
		}
		public function set historyRechargeAwardInfo(value:serverProto.activity.AwardInfo):void {
			history_recharge_award_info$field = value;
		}
		public function get historyRechargeAwardInfo():serverProto.activity.AwardInfo {
			return history_recharge_award_info$field;
		}
		/**
		 *  @private
		 */
		public static const HISTORY_LEVEL_AWARD_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoPlayerRecallRsp.history_level_award_info", "historyLevelAwardInfo", (10 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.AwardInfo);
		private var history_level_award_info$field:serverProto.activity.AwardInfo;
		public function clearHistoryLevelAwardInfo():void {
			history_level_award_info$field = null;
		}
		public function get hasHistoryLevelAwardInfo():Boolean {
			return history_level_award_info$field != null;
		}
		public function set historyLevelAwardInfo(value:serverProto.activity.AwardInfo):void {
			history_level_award_info$field = value;
		}
		public function get historyLevelAwardInfo():serverProto.activity.AwardInfo {
			return history_level_award_info$field;
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
			if (hasAwardEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, award_end_time$field);
			}
			if (hasHistoryRecharge) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, history_recharge$field);
			}
			if (hasHistoryLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, history_level$field);
			}
			if (hasMoneyCoupeRebate) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, money_coupe_rebate$field);
			}
			if (hasLoginAwardInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, login_award_info$field);
			}
			if (hasHistoryRechargeAwardInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, history_recharge_award_info$field);
			}
			if (hasHistoryLevelAwardInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, history_level_award_info$field);
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
			var history_recharge$count:uint = 0;
			var history_level$count:uint = 0;
			var money_coupe_rebate$count:uint = 0;
			var login_award_info$count:uint = 0;
			var history_recharge_award_info$count:uint = 0;
			var history_level_award_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerRecallRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (activity_begin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerRecallRsp.activityBeginTime cannot be set twice.');
					}
					++activity_begin_time$count;
					this.activityBeginTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (activity_end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerRecallRsp.activityEndTime cannot be set twice.');
					}
					++activity_end_time$count;
					this.activityEndTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (award_end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerRecallRsp.awardEndTime cannot be set twice.');
					}
					++award_end_time$count;
					this.awardEndTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (history_recharge$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerRecallRsp.historyRecharge cannot be set twice.');
					}
					++history_recharge$count;
					this.historyRecharge = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (history_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerRecallRsp.historyLevel cannot be set twice.');
					}
					++history_level$count;
					this.historyLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (money_coupe_rebate$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerRecallRsp.moneyCoupeRebate cannot be set twice.');
					}
					++money_coupe_rebate$count;
					this.moneyCoupeRebate = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (login_award_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerRecallRsp.loginAwardInfo cannot be set twice.');
					}
					++login_award_info$count;
					this.loginAwardInfo = new serverProto.activity.AwardInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.loginAwardInfo);
					break;
				case 9:
					if (history_recharge_award_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerRecallRsp.historyRechargeAwardInfo cannot be set twice.');
					}
					++history_recharge_award_info$count;
					this.historyRechargeAwardInfo = new serverProto.activity.AwardInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.historyRechargeAwardInfo);
					break;
				case 10:
					if (history_level_award_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerRecallRsp.historyLevelAwardInfo cannot be set twice.');
					}
					++history_level_award_info$count;
					this.historyLevelAwardInfo = new serverProto.activity.AwardInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.historyLevelAwardInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}
	}
}
