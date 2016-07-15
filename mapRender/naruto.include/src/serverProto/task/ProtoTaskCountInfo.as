package serverProto.task {
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
	public  final class ProtoTaskCountInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const OFFER_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.offer_times", "offerTimes", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var offer_times$field:uint;

		private var hasField$0:uint = 0;

		public function clearOfferTimes():void {
			hasField$0 &= 0xfffffffe;
			offer_times$field = new uint();
		}

		public function get hasOfferTimes():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set offerTimes(value:uint):void {
			hasField$0 |= 0x1;
			offer_times$field = value;
		}

		public function get offerTimes():uint {
			return offer_times$field;
		}

		/**
		 *  @private
		 */
		public static const OFFER_TOTAL_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.offer_total_times", "offerTotalTimes", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var offer_total_times$field:uint;

		public function clearOfferTotalTimes():void {
			hasField$0 &= 0xfffffffd;
			offer_total_times$field = new uint();
		}

		public function get hasOfferTotalTimes():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set offerTotalTimes(value:uint):void {
			hasField$0 |= 0x2;
			offer_total_times$field = value;
		}

		public function get offerTotalTimes():uint {
			return offer_total_times$field;
		}

		/**
		 *  @private
		 */
		public static const OFFER_SUPER_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.offer_super_times", "offerSuperTimes", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var offer_super_times$field:uint;

		public function clearOfferSuperTimes():void {
			hasField$0 &= 0xfffffffb;
			offer_super_times$field = new uint();
		}

		public function get hasOfferSuperTimes():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set offerSuperTimes(value:uint):void {
			hasField$0 |= 0x4;
			offer_super_times$field = value;
		}

		public function get offerSuperTimes():uint {
			return offer_super_times$field;
		}

		/**
		 *  @private
		 */
		public static const OFFER_SUPER_TOTAL_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.offer_super_total_times", "offerSuperTotalTimes", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var offer_super_total_times$field:uint;

		public function clearOfferSuperTotalTimes():void {
			hasField$0 &= 0xfffffff7;
			offer_super_total_times$field = new uint();
		}

		public function get hasOfferSuperTotalTimes():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set offerSuperTotalTimes(value:uint):void {
			hasField$0 |= 0x8;
			offer_super_total_times$field = value;
		}

		public function get offerSuperTotalTimes():uint {
			return offer_super_total_times$field;
		}

		/**
		 *  @private
		 */
		public static const OFFER_FREE_FRESH_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.offer_free_fresh_times", "offerFreeFreshTimes", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var offer_free_fresh_times$field:uint;

		public function clearOfferFreeFreshTimes():void {
			hasField$0 &= 0xffffffef;
			offer_free_fresh_times$field = new uint();
		}

		public function get hasOfferFreeFreshTimes():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set offerFreeFreshTimes(value:uint):void {
			hasField$0 |= 0x10;
			offer_free_fresh_times$field = value;
		}

		public function get offerFreeFreshTimes():uint {
			return offer_free_fresh_times$field;
		}

		/**
		 *  @private
		 */
		public static const OFFER_REFRESH_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.offer_refresh_time", "offerRefreshTime", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var offer_refresh_time$field:uint;

		public function clearOfferRefreshTime():void {
			hasField$0 &= 0xffffffdf;
			offer_refresh_time$field = new uint();
		}

		public function get hasOfferRefreshTime():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set offerRefreshTime(value:uint):void {
			hasField$0 |= 0x20;
			offer_refresh_time$field = value;
		}

		public function get offerRefreshTime():uint {
			return offer_refresh_time$field;
		}

		/**
		 *  @private
		 */
		public static const DAILY_TASK_TOTAL_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.daily_task_total_times", "dailyTaskTotalTimes", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var daily_task_total_times$field:uint;

		public function clearDailyTaskTotalTimes():void {
			hasField$0 &= 0xffffffbf;
			daily_task_total_times$field = new uint();
		}

		public function get hasDailyTaskTotalTimes():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set dailyTaskTotalTimes(value:uint):void {
			hasField$0 |= 0x40;
			daily_task_total_times$field = value;
		}

		public function get dailyTaskTotalTimes():uint {
			return daily_task_total_times$field;
		}

		/**
		 *  @private
		 */
		public static const DAILY_TASK_COMPLETE_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.daily_task_complete_times", "dailyTaskCompleteTimes", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var daily_task_complete_times$field:uint;

		public function clearDailyTaskCompleteTimes():void {
			hasField$0 &= 0xffffff7f;
			daily_task_complete_times$field = new uint();
		}

		public function get hasDailyTaskCompleteTimes():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set dailyTaskCompleteTimes(value:uint):void {
			hasField$0 |= 0x80;
			daily_task_complete_times$field = value;
		}

		public function get dailyTaskCompleteTimes():uint {
			return daily_task_complete_times$field;
		}

		/**
		 *  @private
		 */
		public static const PRACTICE_TOTAL_ACCEPT_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.practice_total_accept_times", "practiceTotalAcceptTimes", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var practice_total_accept_times$field:uint;

		public function clearPracticeTotalAcceptTimes():void {
			hasField$0 &= 0xfffffeff;
			practice_total_accept_times$field = new uint();
		}

		public function get hasPracticeTotalAcceptTimes():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set practiceTotalAcceptTimes(value:uint):void {
			hasField$0 |= 0x100;
			practice_total_accept_times$field = value;
		}

		public function get practiceTotalAcceptTimes():uint {
			return practice_total_accept_times$field;
		}

		/**
		 *  @private
		 */
		public static const PRACTICE_ACCEPT_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.practice_accept_times", "practiceAcceptTimes", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var practice_accept_times$field:uint;

		public function clearPracticeAcceptTimes():void {
			hasField$0 &= 0xfffffdff;
			practice_accept_times$field = new uint();
		}

		public function get hasPracticeAcceptTimes():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set practiceAcceptTimes(value:uint):void {
			hasField$0 |= 0x200;
			practice_accept_times$field = value;
		}

		public function get practiceAcceptTimes():uint {
			return practice_accept_times$field;
		}

		/**
		 *  @private
		 */
		public static const ESCORT_TOTAL_ACCEPT_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.escort_total_accept_times", "escortTotalAcceptTimes", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var escort_total_accept_times$field:uint;

		public function clearEscortTotalAcceptTimes():void {
			hasField$0 &= 0xfffffbff;
			escort_total_accept_times$field = new uint();
		}

		public function get hasEscortTotalAcceptTimes():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set escortTotalAcceptTimes(value:uint):void {
			hasField$0 |= 0x400;
			escort_total_accept_times$field = value;
		}

		public function get escortTotalAcceptTimes():uint {
			return escort_total_accept_times$field;
		}

		/**
		 *  @private
		 */
		public static const ESCORT_ACCEPT_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.escort_accept_times", "escortAcceptTimes", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var escort_accept_times$field:uint;

		public function clearEscortAcceptTimes():void {
			hasField$0 &= 0xfffff7ff;
			escort_accept_times$field = new uint();
		}

		public function get hasEscortAcceptTimes():Boolean {
			return (hasField$0 & 0x800) != 0;
		}

		public function set escortAcceptTimes(value:uint):void {
			hasField$0 |= 0x800;
			escort_accept_times$field = value;
		}

		public function get escortAcceptTimes():uint {
			return escort_accept_times$field;
		}

		/**
		 *  @private
		 */
		public static const ESCORT_FREE_FRESH_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.escort_free_fresh_times", "escortFreeFreshTimes", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var escort_free_fresh_times$field:uint;

		public function clearEscortFreeFreshTimes():void {
			hasField$0 &= 0xffffefff;
			escort_free_fresh_times$field = new uint();
		}

		public function get hasEscortFreeFreshTimes():Boolean {
			return (hasField$0 & 0x1000) != 0;
		}

		public function set escortFreeFreshTimes(value:uint):void {
			hasField$0 |= 0x1000;
			escort_free_fresh_times$field = value;
		}

		public function get escortFreeFreshTimes():uint {
			return escort_free_fresh_times$field;
		}

		/**
		 *  @private
		 */
		public static const ESCORT_REFRESH_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.escort_refresh_time", "escortRefreshTime", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		private var escort_refresh_time$field:uint;

		public function clearEscortRefreshTime():void {
			hasField$0 &= 0xffffdfff;
			escort_refresh_time$field = new uint();
		}

		public function get hasEscortRefreshTime():Boolean {
			return (hasField$0 & 0x2000) != 0;
		}

		public function set escortRefreshTime(value:uint):void {
			hasField$0 |= 0x2000;
			escort_refresh_time$field = value;
		}

		public function get escortRefreshTime():uint {
			return escort_refresh_time$field;
		}

		/**
		 *  @private
		 */
		public static const ESCORT_FAIL_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.escort_fail_time", "escortFailTime", (15 << 3) | com.netease.protobuf.WireType.VARINT);

		private var escort_fail_time$field:uint;

		public function clearEscortFailTime():void {
			hasField$0 &= 0xffffbfff;
			escort_fail_time$field = new uint();
		}

		public function get hasEscortFailTime():Boolean {
			return (hasField$0 & 0x4000) != 0;
		}

		public function set escortFailTime(value:uint):void {
			hasField$0 |= 0x4000;
			escort_fail_time$field = value;
		}

		public function get escortFailTime():uint {
			return escort_fail_time$field;
		}

		/**
		 *  @private
		 */
		public static const ESCORT_REAL_MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.escort_real_money", "escortRealMoney", (16 << 3) | com.netease.protobuf.WireType.VARINT);

		private var escort_real_money$field:uint;

		public function clearEscortRealMoney():void {
			hasField$0 &= 0xffff7fff;
			escort_real_money$field = new uint();
		}

		public function get hasEscortRealMoney():Boolean {
			return (hasField$0 & 0x8000) != 0;
		}

		public function set escortRealMoney(value:uint):void {
			hasField$0 |= 0x8000;
			escort_real_money$field = value;
		}

		public function get escortRealMoney():uint {
			return escort_real_money$field;
		}

		/**
		 *  @private
		 */
		public static const WANTED_TOTAL_ACCEPT_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.wanted_total_accept_times", "wantedTotalAcceptTimes", (17 << 3) | com.netease.protobuf.WireType.VARINT);

		private var wanted_total_accept_times$field:uint;

		public function clearWantedTotalAcceptTimes():void {
			hasField$0 &= 0xfffeffff;
			wanted_total_accept_times$field = new uint();
		}

		public function get hasWantedTotalAcceptTimes():Boolean {
			return (hasField$0 & 0x10000) != 0;
		}

		public function set wantedTotalAcceptTimes(value:uint):void {
			hasField$0 |= 0x10000;
			wanted_total_accept_times$field = value;
		}

		public function get wantedTotalAcceptTimes():uint {
			return wanted_total_accept_times$field;
		}

		/**
		 *  @private
		 */
		public static const WANTED_ACCEPT_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.wanted_accept_times", "wantedAcceptTimes", (18 << 3) | com.netease.protobuf.WireType.VARINT);

		private var wanted_accept_times$field:uint;

		public function clearWantedAcceptTimes():void {
			hasField$0 &= 0xfffdffff;
			wanted_accept_times$field = new uint();
		}

		public function get hasWantedAcceptTimes():Boolean {
			return (hasField$0 & 0x20000) != 0;
		}

		public function set wantedAcceptTimes(value:uint):void {
			hasField$0 |= 0x20000;
			wanted_accept_times$field = value;
		}

		public function get wantedAcceptTimes():uint {
			return wanted_accept_times$field;
		}

		/**
		 *  @private
		 */
		public static const WANTED_TEAM_EXP_ADDITION:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.wanted_team_exp_addition", "wantedTeamExpAddition", (19 << 3) | com.netease.protobuf.WireType.VARINT);

		private var wanted_team_exp_addition$field:uint;

		public function clearWantedTeamExpAddition():void {
			hasField$0 &= 0xfffbffff;
			wanted_team_exp_addition$field = new uint();
		}

		public function get hasWantedTeamExpAddition():Boolean {
			return (hasField$0 & 0x40000) != 0;
		}

		public function set wantedTeamExpAddition(value:uint):void {
			hasField$0 |= 0x40000;
			wanted_team_exp_addition$field = value;
		}

		public function get wantedTeamExpAddition():uint {
			return wanted_team_exp_addition$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasOfferTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, offer_times$field);
			}
			if (hasOfferTotalTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, offer_total_times$field);
			}
			if (hasOfferSuperTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, offer_super_times$field);
			}
			if (hasOfferSuperTotalTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, offer_super_total_times$field);
			}
			if (hasOfferFreeFreshTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, offer_free_fresh_times$field);
			}
			if (hasOfferRefreshTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, offer_refresh_time$field);
			}
			if (hasDailyTaskTotalTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, daily_task_total_times$field);
			}
			if (hasDailyTaskCompleteTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, daily_task_complete_times$field);
			}
			if (hasPracticeTotalAcceptTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, practice_total_accept_times$field);
			}
			if (hasPracticeAcceptTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, practice_accept_times$field);
			}
			if (hasEscortTotalAcceptTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, escort_total_accept_times$field);
			}
			if (hasEscortAcceptTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, escort_accept_times$field);
			}
			if (hasEscortFreeFreshTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, escort_free_fresh_times$field);
			}
			if (hasEscortRefreshTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, escort_refresh_time$field);
			}
			if (hasEscortFailTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 15);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, escort_fail_time$field);
			}
			if (hasEscortRealMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 16);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, escort_real_money$field);
			}
			if (hasWantedTotalAcceptTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 17);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, wanted_total_accept_times$field);
			}
			if (hasWantedAcceptTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 18);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, wanted_accept_times$field);
			}
			if (hasWantedTeamExpAddition) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 19);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, wanted_team_exp_addition$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var offer_times$count:uint = 0;
			var offer_total_times$count:uint = 0;
			var offer_super_times$count:uint = 0;
			var offer_super_total_times$count:uint = 0;
			var offer_free_fresh_times$count:uint = 0;
			var offer_refresh_time$count:uint = 0;
			var daily_task_total_times$count:uint = 0;
			var daily_task_complete_times$count:uint = 0;
			var practice_total_accept_times$count:uint = 0;
			var practice_accept_times$count:uint = 0;
			var escort_total_accept_times$count:uint = 0;
			var escort_accept_times$count:uint = 0;
			var escort_free_fresh_times$count:uint = 0;
			var escort_refresh_time$count:uint = 0;
			var escort_fail_time$count:uint = 0;
			var escort_real_money$count:uint = 0;
			var wanted_total_accept_times$count:uint = 0;
			var wanted_accept_times$count:uint = 0;
			var wanted_team_exp_addition$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (offer_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskCountInfo.offerTimes cannot be set twice.');
					}
					++offer_times$count;
					this.offerTimes = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (offer_total_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskCountInfo.offerTotalTimes cannot be set twice.');
					}
					++offer_total_times$count;
					this.offerTotalTimes = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (offer_super_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskCountInfo.offerSuperTimes cannot be set twice.');
					}
					++offer_super_times$count;
					this.offerSuperTimes = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (offer_super_total_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskCountInfo.offerSuperTotalTimes cannot be set twice.');
					}
					++offer_super_total_times$count;
					this.offerSuperTotalTimes = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (offer_free_fresh_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskCountInfo.offerFreeFreshTimes cannot be set twice.');
					}
					++offer_free_fresh_times$count;
					this.offerFreeFreshTimes = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (offer_refresh_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskCountInfo.offerRefreshTime cannot be set twice.');
					}
					++offer_refresh_time$count;
					this.offerRefreshTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (daily_task_total_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskCountInfo.dailyTaskTotalTimes cannot be set twice.');
					}
					++daily_task_total_times$count;
					this.dailyTaskTotalTimes = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (daily_task_complete_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskCountInfo.dailyTaskCompleteTimes cannot be set twice.');
					}
					++daily_task_complete_times$count;
					this.dailyTaskCompleteTimes = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (practice_total_accept_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskCountInfo.practiceTotalAcceptTimes cannot be set twice.');
					}
					++practice_total_accept_times$count;
					this.practiceTotalAcceptTimes = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 10:
					if (practice_accept_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskCountInfo.practiceAcceptTimes cannot be set twice.');
					}
					++practice_accept_times$count;
					this.practiceAcceptTimes = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 11:
					if (escort_total_accept_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskCountInfo.escortTotalAcceptTimes cannot be set twice.');
					}
					++escort_total_accept_times$count;
					this.escortTotalAcceptTimes = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 12:
					if (escort_accept_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskCountInfo.escortAcceptTimes cannot be set twice.');
					}
					++escort_accept_times$count;
					this.escortAcceptTimes = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 13:
					if (escort_free_fresh_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskCountInfo.escortFreeFreshTimes cannot be set twice.');
					}
					++escort_free_fresh_times$count;
					this.escortFreeFreshTimes = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 14:
					if (escort_refresh_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskCountInfo.escortRefreshTime cannot be set twice.');
					}
					++escort_refresh_time$count;
					this.escortRefreshTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 15:
					if (escort_fail_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskCountInfo.escortFailTime cannot be set twice.');
					}
					++escort_fail_time$count;
					this.escortFailTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 16:
					if (escort_real_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskCountInfo.escortRealMoney cannot be set twice.');
					}
					++escort_real_money$count;
					this.escortRealMoney = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 17:
					if (wanted_total_accept_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskCountInfo.wantedTotalAcceptTimes cannot be set twice.');
					}
					++wanted_total_accept_times$count;
					this.wantedTotalAcceptTimes = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 18:
					if (wanted_accept_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskCountInfo.wantedAcceptTimes cannot be set twice.');
					}
					++wanted_accept_times$count;
					this.wantedAcceptTimes = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 19:
					if (wanted_team_exp_addition$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskCountInfo.wantedTeamExpAddition cannot be set twice.');
					}
					++wanted_team_exp_addition$count;
					this.wantedTeamExpAddition = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
