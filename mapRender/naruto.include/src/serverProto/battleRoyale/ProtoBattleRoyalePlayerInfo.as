package serverProto.battleRoyale {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoDiamondInfo;
	import serverProto.inc.ProtoPlayerKey;
	import serverProto.inc.ProtoPlayerVipLevel;
	import serverProto.battleRoyale.ProtoBattleRoyaleFieldCampType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBattleRoyalePlayerInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.player_id", "playerId", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		public var playerId:serverProto.inc.ProtoPlayerKey;

		/**
		 *  @private
		 */
		public static const CAMP:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.camp", "camp", (2 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.battleRoyale.ProtoBattleRoyaleFieldCampType);

		public var camp:int;

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.name", "name", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var name$field:String;

		public function clearName():void {
			name$field = null;
		}

		public function get hasName():Boolean {
			return name$field != null;
		}

		public function set name(value:String):void {
			name$field = value;
		}

		public function get name():String {
			return name$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.level", "level", (4 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const SCORE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.score", "score", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var score$field:int;

		public function clearScore():void {
			hasField$0 &= 0xfffffffd;
			score$field = new int();
		}

		public function get hasScore():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set score(value:int):void {
			hasField$0 |= 0x2;
			score$field = value;
		}

		public function get score():int {
			return score$field;
		}

		/**
		 *  @private
		 */
		public static const WIN_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.win_times", "winTimes", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var win_times$field:int;

		public function clearWinTimes():void {
			hasField$0 &= 0xfffffffb;
			win_times$field = new int();
		}

		public function get hasWinTimes():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set winTimes(value:int):void {
			hasField$0 |= 0x4;
			win_times$field = value;
		}

		public function get winTimes():int {
			return win_times$field;
		}

		/**
		 *  @private
		 */
		public static const WIN_STREAK_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.win_streak_times", "winStreakTimes", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var win_streak_times$field:int;

		public function clearWinStreakTimes():void {
			hasField$0 &= 0xfffffff7;
			win_streak_times$field = new int();
		}

		public function get hasWinStreakTimes():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set winStreakTimes(value:int):void {
			hasField$0 |= 0x8;
			win_streak_times$field = value;
		}

		public function get winStreakTimes():int {
			return win_streak_times$field;
		}

		/**
		 *  @private
		 */
		public static const HISTORY_MAX_WIN_STREAK_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.history_max_win_streak_times", "historyMaxWinStreakTimes", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		private var history_max_win_streak_times$field:int;

		public function clearHistoryMaxWinStreakTimes():void {
			hasField$0 &= 0xffffffef;
			history_max_win_streak_times$field = new int();
		}

		public function get hasHistoryMaxWinStreakTimes():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set historyMaxWinStreakTimes(value:int):void {
			hasField$0 |= 0x10;
			history_max_win_streak_times$field = value;
		}

		public function get historyMaxWinStreakTimes():int {
			return history_max_win_streak_times$field;
		}

		/**
		 *  @private
		 */
		public static const LIVE_POINT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.live_point", "livePoint", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var live_point$field:int;

		public function clearLivePoint():void {
			hasField$0 &= 0xffffffdf;
			live_point$field = new int();
		}

		public function get hasLivePoint():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set livePoint(value:int):void {
			hasField$0 |= 0x20;
			live_point$field = value;
		}

		public function get livePoint():int {
			return live_point$field;
		}

		/**
		 *  @private
		 */
		public static const REBIRTH_CD_TIME:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.rebirth_cd_time", "rebirthCdTime", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rebirth_cd_time$field:int;

		public function clearRebirthCdTime():void {
			hasField$0 &= 0xffffffbf;
			rebirth_cd_time$field = new int();
		}

		public function get hasRebirthCdTime():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set rebirthCdTime(value:int):void {
			hasField$0 |= 0x40;
			rebirth_cd_time$field = value;
		}

		public function get rebirthCdTime():int {
			return rebirth_cd_time$field;
		}

		/**
		 *  @private
		 */
		public static const ENTER_FLAG:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.enter_flag", "enterFlag", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var enter_flag$field:int;

		public function clearEnterFlag():void {
			hasField$0 &= 0xffffff7f;
			enter_flag$field = new int();
		}

		public function get hasEnterFlag():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set enterFlag(value:int):void {
			hasField$0 |= 0x80;
			enter_flag$field = value;
		}

		public function get enterFlag():int {
			return enter_flag$field;
		}

		/**
		 *  @private
		 */
		public static const QUIT_FLAG:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.quit_flag", "quitFlag", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var quit_flag$field:int;

		public function clearQuitFlag():void {
			hasField$0 &= 0xfffffeff;
			quit_flag$field = new int();
		}

		public function get hasQuitFlag():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set quitFlag(value:int):void {
			hasField$0 |= 0x100;
			quit_flag$field = value;
		}

		public function get quitFlag():int {
			return quit_flag$field;
		}

		/**
		 *  @private
		 */
		public static const OUT_FLAG:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.out_flag", "outFlag", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var out_flag$field:int;

		public function clearOutFlag():void {
			hasField$0 &= 0xfffffdff;
			out_flag$field = new int();
		}

		public function get hasOutFlag():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set outFlag(value:int):void {
			hasField$0 |= 0x200;
			out_flag$field = value;
		}

		public function get outFlag():int {
			return out_flag$field;
		}

		/**
		 *  @private
		 */
		public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.vip_level", "vipLevel", (13 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.ProtoPlayerVipLevel);

		private var vip_level$field:int;

		public function clearVipLevel():void {
			hasField$0 &= 0xfffffbff;
			vip_level$field = new int();
		}

		public function get hasVipLevel():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set vipLevel(value:int):void {
			hasField$0 |= 0x400;
			vip_level$field = value;
		}

		public function get vipLevel():int {
			return vip_level$field;
		}

		/**
		 *  @private
		 */
		public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.diamond_info", "diamondInfo", (15 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoDiamondInfo);

		private var diamond_info$field:serverProto.inc.ProtoDiamondInfo;

		public function clearDiamondInfo():void {
			diamond_info$field = null;
		}

		public function get hasDiamondInfo():Boolean {
			return diamond_info$field != null;
		}

		public function set diamondInfo(value:serverProto.inc.ProtoDiamondInfo):void {
			diamond_info$field = value;
		}

		public function get diamondInfo():serverProto.inc.ProtoDiamondInfo {
			return diamond_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.playerId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.camp);
			if (hasName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, name$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, level$field);
			}
			if (hasScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, score$field);
			}
			if (hasWinTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, win_times$field);
			}
			if (hasWinStreakTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, win_streak_times$field);
			}
			if (hasHistoryMaxWinStreakTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, history_max_win_streak_times$field);
			}
			if (hasLivePoint) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, live_point$field);
			}
			if (hasRebirthCdTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, rebirth_cd_time$field);
			}
			if (hasEnterFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, enter_flag$field);
			}
			if (hasQuitFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, quit_flag$field);
			}
			if (hasOutFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, out_flag$field);
			}
			if (hasVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, vip_level$field);
			}
			if (hasDiamondInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 15);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, diamond_info$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var player_id$count:uint = 0;
			var camp$count:uint = 0;
			var name$count:uint = 0;
			var level$count:uint = 0;
			var score$count:uint = 0;
			var win_times$count:uint = 0;
			var win_streak_times$count:uint = 0;
			var history_max_win_streak_times$count:uint = 0;
			var live_point$count:uint = 0;
			var rebirth_cd_time$count:uint = 0;
			var enter_flag$count:uint = 0;
			var quit_flag$count:uint = 0;
			var out_flag$count:uint = 0;
			var vip_level$count:uint = 0;
			var diamond_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (player_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyalePlayerInfo.playerId cannot be set twice.');
					}
					++player_id$count;
					this.playerId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerId);
					break;
				case 2:
					if (camp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyalePlayerInfo.camp cannot be set twice.');
					}
					++camp$count;
					this.camp = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 3:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyalePlayerInfo.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 4:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyalePlayerInfo.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 5:
					if (score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyalePlayerInfo.score cannot be set twice.');
					}
					++score$count;
					this.score = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 6:
					if (win_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyalePlayerInfo.winTimes cannot be set twice.');
					}
					++win_times$count;
					this.winTimes = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 7:
					if (win_streak_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyalePlayerInfo.winStreakTimes cannot be set twice.');
					}
					++win_streak_times$count;
					this.winStreakTimes = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 14:
					if (history_max_win_streak_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyalePlayerInfo.historyMaxWinStreakTimes cannot be set twice.');
					}
					++history_max_win_streak_times$count;
					this.historyMaxWinStreakTimes = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 8:
					if (live_point$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyalePlayerInfo.livePoint cannot be set twice.');
					}
					++live_point$count;
					this.livePoint = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 9:
					if (rebirth_cd_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyalePlayerInfo.rebirthCdTime cannot be set twice.');
					}
					++rebirth_cd_time$count;
					this.rebirthCdTime = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 10:
					if (enter_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyalePlayerInfo.enterFlag cannot be set twice.');
					}
					++enter_flag$count;
					this.enterFlag = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 11:
					if (quit_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyalePlayerInfo.quitFlag cannot be set twice.');
					}
					++quit_flag$count;
					this.quitFlag = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 12:
					if (out_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyalePlayerInfo.outFlag cannot be set twice.');
					}
					++out_flag$count;
					this.outFlag = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 13:
					if (vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyalePlayerInfo.vipLevel cannot be set twice.');
					}
					++vip_level$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 15:
					if (diamond_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyalePlayerInfo.diamondInfo cannot be set twice.');
					}
					++diamond_info$count;
					this.diamondInfo = new serverProto.inc.ProtoDiamondInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.diamondInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
