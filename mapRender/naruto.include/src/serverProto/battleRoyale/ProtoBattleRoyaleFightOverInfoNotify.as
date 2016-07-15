package serverProto.battleRoyale {
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
	public  final class ProtoBattleRoyaleFightOverInfoNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const WIN_STREAK_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleFightOverInfoNotify.win_streak_times", "winStreakTimes", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var win_streak_times$field:int;

		private var hasField$0:uint = 0;

		public function clearWinStreakTimes():void {
			hasField$0 &= 0xfffffffe;
			win_streak_times$field = new int();
		}

		public function get hasWinStreakTimes():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set winStreakTimes(value:int):void {
			hasField$0 |= 0x1;
			win_streak_times$field = value;
		}

		public function get winStreakTimes():int {
			return win_streak_times$field;
		}

		/**
		 *  @private
		 */
		public static const TERMINATE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleFightOverInfoNotify.terminate", "terminate", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var terminate$field:int;

		public function clearTerminate():void {
			hasField$0 &= 0xfffffffd;
			terminate$field = new int();
		}

		public function get hasTerminate():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set terminate(value:int):void {
			hasField$0 |= 0x2;
			terminate$field = value;
		}

		public function get terminate():int {
			return terminate$field;
		}

		/**
		 *  @private
		 */
		public static const LOSER_KILL_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleFightOverInfoNotify.loser_kill_count", "loserKillCount", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var loser_kill_count$field:int;

		public function clearLoserKillCount():void {
			hasField$0 &= 0xfffffffb;
			loser_kill_count$field = new int();
		}

		public function get hasLoserKillCount():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set loserKillCount(value:int):void {
			hasField$0 |= 0x4;
			loser_kill_count$field = value;
		}

		public function get loserKillCount():int {
			return loser_kill_count$field;
		}

		/**
		 *  @private
		 */
		public static const SCORE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleFightOverInfoNotify.score", "score", (4 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const MORALE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleFightOverInfoNotify.morale", "morale", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var morale$field:int;

		public function clearMorale():void {
			hasField$0 &= 0xffffffef;
			morale$field = new int();
		}

		public function get hasMorale():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set morale(value:int):void {
			hasField$0 |= 0x10;
			morale$field = value;
		}

		public function get morale():int {
			return morale$field;
		}

		/**
		 *  @private
		 */
		public static const RES_TIMEOUT:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.battleRoyale.ProtoBattleRoyaleFightOverInfoNotify.res_timeout", "resTimeout", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var res_timeout$field:Boolean;

		public function clearResTimeout():void {
			hasField$0 &= 0xffffffdf;
			res_timeout$field = new Boolean();
		}

		public function get hasResTimeout():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set resTimeout(value:Boolean):void {
			hasField$0 |= 0x20;
			res_timeout$field = value;
		}

		public function get resTimeout():Boolean {
			return res_timeout$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasWinStreakTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, win_streak_times$field);
			}
			if (hasTerminate) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, terminate$field);
			}
			if (hasLoserKillCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, loser_kill_count$field);
			}
			if (hasScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, score$field);
			}
			if (hasMorale) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, morale$field);
			}
			if (hasResTimeout) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, res_timeout$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var win_streak_times$count:uint = 0;
			var terminate$count:uint = 0;
			var loser_kill_count$count:uint = 0;
			var score$count:uint = 0;
			var morale$count:uint = 0;
			var res_timeout$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (win_streak_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleFightOverInfoNotify.winStreakTimes cannot be set twice.');
					}
					++win_streak_times$count;
					this.winStreakTimes = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (terminate$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleFightOverInfoNotify.terminate cannot be set twice.');
					}
					++terminate$count;
					this.terminate = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (loser_kill_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleFightOverInfoNotify.loserKillCount cannot be set twice.');
					}
					++loser_kill_count$count;
					this.loserKillCount = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleFightOverInfoNotify.score cannot be set twice.');
					}
					++score$count;
					this.score = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 5:
					if (morale$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleFightOverInfoNotify.morale cannot be set twice.');
					}
					++morale$count;
					this.morale = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 6:
					if (res_timeout$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleFightOverInfoNotify.resTimeout cannot be set twice.');
					}
					++res_timeout$count;
					this.resTimeout = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
