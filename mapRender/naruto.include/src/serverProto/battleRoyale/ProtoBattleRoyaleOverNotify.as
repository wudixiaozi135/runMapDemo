package serverProto.battleRoyale {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo;
	import serverProto.battleRoyale.ProtoBattleRoyaleFieldCampType;
	import serverProto.battleRoyale.ProtoBattleRoyaleOverAward;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBattleRoyaleOverNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CAMP:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.battleRoyale.ProtoBattleRoyaleOverNotify.camp", "camp", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.battleRoyale.ProtoBattleRoyaleFieldCampType);

		public var camp:int;

		/**
		 *  @private
		 */
		public static const WIN_CAMP:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.battleRoyale.ProtoBattleRoyaleOverNotify.win_camp", "winCamp", (2 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.battleRoyale.ProtoBattleRoyaleFieldCampType);

		public var winCamp:int;

		/**
		 *  @private
		 */
		public static const ENTER_FLAG:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleOverNotify.enter_flag", "enterFlag", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var enter_flag$field:int;

		private var hasField$0:uint = 0;

		public function clearEnterFlag():void {
			hasField$0 &= 0xfffffffe;
			enter_flag$field = new int();
		}

		public function get hasEnterFlag():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set enterFlag(value:int):void {
			hasField$0 |= 0x1;
			enter_flag$field = value;
		}

		public function get enterFlag():int {
			return enter_flag$field;
		}

		/**
		 *  @private
		 */
		public static const CAMP_TOTAL_SCORE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleOverNotify.camp_total_score", "campTotalScore", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var camp_total_score$field:int;

		public function clearCampTotalScore():void {
			hasField$0 &= 0xfffffffd;
			camp_total_score$field = new int();
		}

		public function get hasCampTotalScore():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set campTotalScore(value:int):void {
			hasField$0 |= 0x2;
			camp_total_score$field = value;
		}

		public function get campTotalScore():int {
			return camp_total_score$field;
		}

		/**
		 *  @private
		 */
		public static const SELF_SCORE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleOverNotify.self_score", "selfScore", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var self_score$field:int;

		public function clearSelfScore():void {
			hasField$0 &= 0xfffffffb;
			self_score$field = new int();
		}

		public function get hasSelfScore():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set selfScore(value:int):void {
			hasField$0 |= 0x4;
			self_score$field = value;
		}

		public function get selfScore():int {
			return self_score$field;
		}

		/**
		 *  @private
		 */
		public static const RANK:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleOverNotify.rank", "rank", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rank$field:int;

		public function clearRank():void {
			hasField$0 &= 0xfffffff7;
			rank$field = new int();
		}

		public function get hasRank():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set rank(value:int):void {
			hasField$0 |= 0x8;
			rank$field = value;
		}

		public function get rank():int {
			return rank$field;
		}

		/**
		 *  @private
		 */
		public static const WIN_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleOverNotify.win_times", "winTimes", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var win_times$field:int;

		public function clearWinTimes():void {
			hasField$0 &= 0xffffffef;
			win_times$field = new int();
		}

		public function get hasWinTimes():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set winTimes(value:int):void {
			hasField$0 |= 0x10;
			win_times$field = value;
		}

		public function get winTimes():int {
			return win_times$field;
		}

		/**
		 *  @private
		 */
		public static const WIN_STREAK_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleOverNotify.win_streak_times", "winStreakTimes", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var win_streak_times$field:int;

		public function clearWinStreakTimes():void {
			hasField$0 &= 0xffffffdf;
			win_streak_times$field = new int();
		}

		public function get hasWinStreakTimes():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set winStreakTimes(value:int):void {
			hasField$0 |= 0x20;
			win_streak_times$field = value;
		}

		public function get winStreakTimes():int {
			return win_streak_times$field;
		}

		/**
		 *  @private
		 */
		public static const HISTORY_MAX_WIN_STREAK_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleOverNotify.history_max_win_streak_times", "historyMaxWinStreakTimes", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var history_max_win_streak_times$field:int;

		public function clearHistoryMaxWinStreakTimes():void {
			hasField$0 &= 0xffffffbf;
			history_max_win_streak_times$field = new int();
		}

		public function get hasHistoryMaxWinStreakTimes():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set historyMaxWinStreakTimes(value:int):void {
			hasField$0 |= 0x40;
			history_max_win_streak_times$field = value;
		}

		public function get historyMaxWinStreakTimes():int {
			return history_max_win_streak_times$field;
		}

		/**
		 *  @private
		 */
		public static const STAR_PLAYER_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoBattleRoyaleOverNotify.star_player_list", "starPlayerList", (10 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo);

		[ArrayElementType("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo")]
		public var starPlayerList:Array = [];

		/**
		 *  @private
		 */
		public static const AWARD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoBattleRoyaleOverNotify.award", "award", (11 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.battleRoyale.ProtoBattleRoyaleOverAward);

		private var award$field:serverProto.battleRoyale.ProtoBattleRoyaleOverAward;

		public function clearAward():void {
			award$field = null;
		}

		public function get hasAward():Boolean {
			return award$field != null;
		}

		public function set award(value:serverProto.battleRoyale.ProtoBattleRoyaleOverAward):void {
			award$field = value;
		}

		public function get award():serverProto.battleRoyale.ProtoBattleRoyaleOverAward {
			return award$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.camp);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.winCamp);
			if (hasEnterFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, enter_flag$field);
			}
			if (hasCampTotalScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, camp_total_score$field);
			}
			if (hasSelfScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, self_score$field);
			}
			if (hasRank) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, rank$field);
			}
			if (hasWinTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, win_times$field);
			}
			if (hasWinStreakTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, win_streak_times$field);
			}
			if (hasHistoryMaxWinStreakTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, history_max_win_streak_times$field);
			}
			for (var starPlayerList$index:uint = 0; starPlayerList$index < this.starPlayerList.length; ++starPlayerList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.starPlayerList[starPlayerList$index]);
			}
			if (hasAward) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, award$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var camp$count:uint = 0;
			var win_camp$count:uint = 0;
			var enter_flag$count:uint = 0;
			var camp_total_score$count:uint = 0;
			var self_score$count:uint = 0;
			var rank$count:uint = 0;
			var win_times$count:uint = 0;
			var win_streak_times$count:uint = 0;
			var history_max_win_streak_times$count:uint = 0;
			var award$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (camp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleOverNotify.camp cannot be set twice.');
					}
					++camp$count;
					this.camp = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (win_camp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleOverNotify.winCamp cannot be set twice.');
					}
					++win_camp$count;
					this.winCamp = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 3:
					if (enter_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleOverNotify.enterFlag cannot be set twice.');
					}
					++enter_flag$count;
					this.enterFlag = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (camp_total_score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleOverNotify.campTotalScore cannot be set twice.');
					}
					++camp_total_score$count;
					this.campTotalScore = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 5:
					if (self_score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleOverNotify.selfScore cannot be set twice.');
					}
					++self_score$count;
					this.selfScore = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 6:
					if (rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleOverNotify.rank cannot be set twice.');
					}
					++rank$count;
					this.rank = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 7:
					if (win_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleOverNotify.winTimes cannot be set twice.');
					}
					++win_times$count;
					this.winTimes = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 8:
					if (win_streak_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleOverNotify.winStreakTimes cannot be set twice.');
					}
					++win_streak_times$count;
					this.winStreakTimes = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 9:
					if (history_max_win_streak_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleOverNotify.historyMaxWinStreakTimes cannot be set twice.');
					}
					++history_max_win_streak_times$count;
					this.historyMaxWinStreakTimes = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 10:
					this.starPlayerList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo()));
					break;
				case 11:
					if (award$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleOverNotify.award cannot be set twice.');
					}
					++award$count;
					this.award = new serverProto.battleRoyale.ProtoBattleRoyaleOverAward();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.award);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
