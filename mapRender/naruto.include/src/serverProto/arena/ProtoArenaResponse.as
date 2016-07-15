package serverProto.arena {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.formationBase.ProtoFormationInfo;
	import serverProto.arena.ProtoArenaBuiltInReward;
	import serverProto.ninjaSystem.ProtoNinjStorage;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoArenaResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.arena.ProtoArenaResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const TOTALFIGHTCOUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.arena.ProtoArenaResponse.totalFightCount", "totalFightCount", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var totalFightCount:int;

		/**
		 *  @private
		 */
		public static const WINFIGHTCOUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.arena.ProtoArenaResponse.winFightCount", "winFightCount", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var winFightCount:int;

		/**
		 *  @private
		 */
		public static const NINJA_STORAGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.arena.ProtoArenaResponse.ninja_storage", "ninjaStorage", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.ninjaSystem.ProtoNinjStorage);

		private var ninja_storage$field:serverProto.ninjaSystem.ProtoNinjStorage;

		public function clearNinjaStorage():void {
			ninja_storage$field = null;
		}

		public function get hasNinjaStorage():Boolean {
			return ninja_storage$field != null;
		}

		public function set ninjaStorage(value:serverProto.ninjaSystem.ProtoNinjStorage):void {
			ninja_storage$field = value;
		}

		public function get ninjaStorage():serverProto.ninjaSystem.ProtoNinjStorage {
			return ninja_storage$field;
		}

		/**
		 *  @private
		 */
		public static const FORMATION_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.arena.ProtoArenaResponse.formation_info", "formationInfo", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.formationBase.ProtoFormationInfo);

		private var formation_info$field:serverProto.formationBase.ProtoFormationInfo;

		public function clearFormationInfo():void {
			formation_info$field = null;
		}

		public function get hasFormationInfo():Boolean {
			return formation_info$field != null;
		}

		public function set formationInfo(value:serverProto.formationBase.ProtoFormationInfo):void {
			formation_info$field = value;
		}

		public function get formationInfo():serverProto.formationBase.ProtoFormationInfo {
			return formation_info$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.arena.ProtoArenaResponse.level", "level", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:int;

		private var hasField$0:uint = 0;

		public function clearLevel():void {
			hasField$0 &= 0xfffffffe;
			level$field = new int();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set level(value:int):void {
			hasField$0 |= 0x1;
			level$field = value;
		}

		public function get level():int {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const DAILY_WIN_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.arena.ProtoArenaResponse.daily_win_times", "dailyWinTimes", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var daily_win_times$field:int;

		public function clearDailyWinTimes():void {
			hasField$0 &= 0xfffffffd;
			daily_win_times$field = new int();
		}

		public function get hasDailyWinTimes():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set dailyWinTimes(value:int):void {
			hasField$0 |= 0x2;
			daily_win_times$field = value;
		}

		public function get dailyWinTimes():int {
			return daily_win_times$field;
		}

		/**
		 *  @private
		 */
		public static const WEEKLY_WIN_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.arena.ProtoArenaResponse.weekly_win_times", "weeklyWinTimes", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var weekly_win_times$field:int;

		public function clearWeeklyWinTimes():void {
			hasField$0 &= 0xfffffffb;
			weekly_win_times$field = new int();
		}

		public function get hasWeeklyWinTimes():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set weeklyWinTimes(value:int):void {
			hasField$0 |= 0x4;
			weekly_win_times$field = value;
		}

		public function get weeklyWinTimes():int {
			return weekly_win_times$field;
		}

		/**
		 *  @private
		 */
		public static const SCORE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.arena.ProtoArenaResponse.score", "score", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var score$field:int;

		public function clearScore():void {
			hasField$0 &= 0xfffffff7;
			score$field = new int();
		}

		public function get hasScore():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set score(value:int):void {
			hasField$0 |= 0x8;
			score$field = value;
		}

		public function get score():int {
			return score$field;
		}

		/**
		 *  @private
		 */
		public static const BUILT_IN_REWARD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.arena.ProtoArenaResponse.built_in_reward", "builtInReward", (10 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.arena.ProtoArenaBuiltInReward);

		private var built_in_reward$field:serverProto.arena.ProtoArenaBuiltInReward;

		public function clearBuiltInReward():void {
			built_in_reward$field = null;
		}

		public function get hasBuiltInReward():Boolean {
			return built_in_reward$field != null;
		}

		public function set builtInReward(value:serverProto.arena.ProtoArenaBuiltInReward):void {
			built_in_reward$field = value;
		}

		public function get builtInReward():serverProto.arena.ProtoArenaBuiltInReward {
			return built_in_reward$field;
		}

		/**
		 *  @private
		 */
		public static const INTER_FLAG:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.arena.ProtoArenaResponse.inter_flag", "interFlag", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var inter_flag$field:Boolean;

		public function clearInterFlag():void {
			hasField$0 &= 0xffffffef;
			inter_flag$field = new Boolean();
		}

		public function get hasInterFlag():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set interFlag(value:Boolean):void {
			hasField$0 |= 0x10;
			inter_flag$field = value;
		}

		public function get interFlag():Boolean {
			return inter_flag$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.totalFightCount);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.winFightCount);
			if (hasNinjaStorage) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_storage$field);
			}
			if (hasFormationInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, formation_info$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, level$field);
			}
			if (hasDailyWinTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, daily_win_times$field);
			}
			if (hasWeeklyWinTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, weekly_win_times$field);
			}
			if (hasScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, score$field);
			}
			if (hasBuiltInReward) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, built_in_reward$field);
			}
			if (hasInterFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, inter_flag$field);
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
			var totalFightCount$count:uint = 0;
			var winFightCount$count:uint = 0;
			var ninja_storage$count:uint = 0;
			var formation_info$count:uint = 0;
			var level$count:uint = 0;
			var daily_win_times$count:uint = 0;
			var weekly_win_times$count:uint = 0;
			var score$count:uint = 0;
			var built_in_reward$count:uint = 0;
			var inter_flag$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoArenaResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (totalFightCount$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoArenaResponse.totalFightCount cannot be set twice.');
					}
					++totalFightCount$count;
					this.totalFightCount = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (winFightCount$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoArenaResponse.winFightCount cannot be set twice.');
					}
					++winFightCount$count;
					this.winFightCount = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (ninja_storage$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoArenaResponse.ninjaStorage cannot be set twice.');
					}
					++ninja_storage$count;
					this.ninjaStorage = new serverProto.ninjaSystem.ProtoNinjStorage();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaStorage);
					break;
				case 5:
					if (formation_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoArenaResponse.formationInfo cannot be set twice.');
					}
					++formation_info$count;
					this.formationInfo = new serverProto.formationBase.ProtoFormationInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.formationInfo);
					break;
				case 6:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoArenaResponse.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 7:
					if (daily_win_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoArenaResponse.dailyWinTimes cannot be set twice.');
					}
					++daily_win_times$count;
					this.dailyWinTimes = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 8:
					if (weekly_win_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoArenaResponse.weeklyWinTimes cannot be set twice.');
					}
					++weekly_win_times$count;
					this.weeklyWinTimes = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 9:
					if (score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoArenaResponse.score cannot be set twice.');
					}
					++score$count;
					this.score = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 10:
					if (built_in_reward$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoArenaResponse.builtInReward cannot be set twice.');
					}
					++built_in_reward$count;
					this.builtInReward = new serverProto.arena.ProtoArenaBuiltInReward();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.builtInReward);
					break;
				case 11:
					if (inter_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoArenaResponse.interFlag cannot be set twice.');
					}
					++inter_flag$count;
					this.interFlag = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
