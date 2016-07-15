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
	import serverProto.activity.ProtoMergeServerBattleRankData;
	import serverProto.activity.ProtoMergeServerLoginData;
	import serverProto.activity.ProtoMergeServerConsumeData;
	import serverProto.activity.ProtoMergeServerRechargeData;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoMergeServerQueryRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMergeServerQueryRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const TAB_IDX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerQueryRsp.tab_idx", "tabIdx", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var tab_idx$field:uint;

		private var hasField$0:uint = 0;

		public function clearTabIdx():void {
			hasField$0 &= 0xfffffffe;
			tab_idx$field = new uint();
		}

		public function get hasTabIdx():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set tabIdx(value:uint):void {
			hasField$0 |= 0x1;
			tab_idx$field = value;
		}

		public function get tabIdx():uint {
			return tab_idx$field;
		}

		/**
		 *  @private
		 */
		public static const TAB_STATUS:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerQueryRsp.tab_status", "tabStatus", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var tabStatus:Array = [];

		/**
		 *  @private
		 */
		public static const DEADLINE_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerQueryRsp.deadline_time", "deadlineTime", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var deadline_time$field:uint;

		public function clearDeadlineTime():void {
			hasField$0 &= 0xfffffffd;
			deadline_time$field = new uint();
		}

		public function get hasDeadlineTime():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set deadlineTime(value:uint):void {
			hasField$0 |= 0x2;
			deadline_time$field = value;
		}

		public function get deadlineTime():uint {
			return deadline_time$field;
		}

		/**
		 *  @private
		 */
		public static const CUR_DAY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerQueryRsp.cur_day", "curDay", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var cur_day$field:uint;

		public function clearCurDay():void {
			hasField$0 &= 0xfffffffb;
			cur_day$field = new uint();
		}

		public function get hasCurDay():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set curDay(value:uint):void {
			hasField$0 |= 0x4;
			cur_day$field = value;
		}

		public function get curDay():uint {
			return cur_day$field;
		}

		/**
		 *  @private
		 */
		public static const RECHARGE_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMergeServerQueryRsp.recharge_data", "rechargeData", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoMergeServerRechargeData);

		private var recharge_data$field:serverProto.activity.ProtoMergeServerRechargeData;

		public function clearRechargeData():void {
			recharge_data$field = null;
		}

		public function get hasRechargeData():Boolean {
			return recharge_data$field != null;
		}

		public function set rechargeData(value:serverProto.activity.ProtoMergeServerRechargeData):void {
			recharge_data$field = value;
		}

		public function get rechargeData():serverProto.activity.ProtoMergeServerRechargeData {
			return recharge_data$field;
		}

		/**
		 *  @private
		 */
		public static const BATTLE_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMergeServerQueryRsp.battle_data", "battleData", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoMergeServerBattleRankData);

		private var battle_data$field:serverProto.activity.ProtoMergeServerBattleRankData;

		public function clearBattleData():void {
			battle_data$field = null;
		}

		public function get hasBattleData():Boolean {
			return battle_data$field != null;
		}

		public function set battleData(value:serverProto.activity.ProtoMergeServerBattleRankData):void {
			battle_data$field = value;
		}

		public function get battleData():serverProto.activity.ProtoMergeServerBattleRankData {
			return battle_data$field;
		}

		/**
		 *  @private
		 */
		public static const LOGIN_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMergeServerQueryRsp.login_data", "loginData", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoMergeServerLoginData);

		private var login_data$field:serverProto.activity.ProtoMergeServerLoginData;

		public function clearLoginData():void {
			login_data$field = null;
		}

		public function get hasLoginData():Boolean {
			return login_data$field != null;
		}

		public function set loginData(value:serverProto.activity.ProtoMergeServerLoginData):void {
			login_data$field = value;
		}

		public function get loginData():serverProto.activity.ProtoMergeServerLoginData {
			return login_data$field;
		}

		/**
		 *  @private
		 */
		public static const CONSUME_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMergeServerQueryRsp.consume_data", "consumeData", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoMergeServerConsumeData);

		private var consume_data$field:serverProto.activity.ProtoMergeServerConsumeData;

		public function clearConsumeData():void {
			consume_data$field = null;
		}

		public function get hasConsumeData():Boolean {
			return consume_data$field != null;
		}

		public function set consumeData(value:serverProto.activity.ProtoMergeServerConsumeData):void {
			consume_data$field = value;
		}

		public function get consumeData():serverProto.activity.ProtoMergeServerConsumeData {
			return consume_data$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasTabIdx) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, tab_idx$field);
			}
			for (var tabStatus$index:uint = 0; tabStatus$index < this.tabStatus.length; ++tabStatus$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.tabStatus[tabStatus$index]);
			}
			if (hasDeadlineTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, deadline_time$field);
			}
			if (hasCurDay) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, cur_day$field);
			}
			if (hasRechargeData) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, recharge_data$field);
			}
			if (hasBattleData) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, battle_data$field);
			}
			if (hasLoginData) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, login_data$field);
			}
			if (hasConsumeData) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, consume_data$field);
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
			var tab_idx$count:uint = 0;
			var deadline_time$count:uint = 0;
			var cur_day$count:uint = 0;
			var recharge_data$count:uint = 0;
			var battle_data$count:uint = 0;
			var login_data$count:uint = 0;
			var consume_data$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMergeServerQueryRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (tab_idx$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMergeServerQueryRsp.tabIdx cannot be set twice.');
					}
					++tab_idx$count;
					this.tabIdx = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.tabStatus);
						break;
					}
					this.tabStatus.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				case 4:
					if (deadline_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMergeServerQueryRsp.deadlineTime cannot be set twice.');
					}
					++deadline_time$count;
					this.deadlineTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (cur_day$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMergeServerQueryRsp.curDay cannot be set twice.');
					}
					++cur_day$count;
					this.curDay = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (recharge_data$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMergeServerQueryRsp.rechargeData cannot be set twice.');
					}
					++recharge_data$count;
					this.rechargeData = new serverProto.activity.ProtoMergeServerRechargeData();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.rechargeData);
					break;
				case 7:
					if (battle_data$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMergeServerQueryRsp.battleData cannot be set twice.');
					}
					++battle_data$count;
					this.battleData = new serverProto.activity.ProtoMergeServerBattleRankData();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.battleData);
					break;
				case 8:
					if (login_data$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMergeServerQueryRsp.loginData cannot be set twice.');
					}
					++login_data$count;
					this.loginData = new serverProto.activity.ProtoMergeServerLoginData();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.loginData);
					break;
				case 9:
					if (consume_data$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMergeServerQueryRsp.consumeData cannot be set twice.');
					}
					++consume_data$count;
					this.consumeData = new serverProto.activity.ProtoMergeServerConsumeData();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.consumeData);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
