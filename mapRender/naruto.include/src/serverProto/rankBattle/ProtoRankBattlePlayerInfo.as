package serverProto.rankBattle {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.rankBattle.ProtoBattleRivalNinjaInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoRankBattlePlayerInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const LEFT_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rankBattle.ProtoRankBattlePlayerInfo.left_times", "leftTimes", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var left_times$field:int;

		private var hasField$0:uint = 0;

		public function clearLeftTimes():void {
			hasField$0 &= 0xfffffffe;
			left_times$field = new int();
		}

		public function get hasLeftTimes():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set leftTimes(value:int):void {
			hasField$0 |= 0x1;
			left_times$field = value;
		}

		public function get leftTimes():int {
			return left_times$field;
		}

		/**
		 *  @private
		 */
		public static const LEFT_PAY_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rankBattle.ProtoRankBattlePlayerInfo.left_pay_times", "leftPayTimes", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var left_pay_times$field:int;

		public function clearLeftPayTimes():void {
			hasField$0 &= 0xfffffffd;
			left_pay_times$field = new int();
		}

		public function get hasLeftPayTimes():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set leftPayTimes(value:int):void {
			hasField$0 |= 0x2;
			left_pay_times$field = value;
		}

		public function get leftPayTimes():int {
			return left_pay_times$field;
		}

		/**
		 *  @private
		 */
		public static const CD_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rankBattle.ProtoRankBattlePlayerInfo.cd_time", "cdTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var cd_time$field:int;

		public function clearCdTime():void {
			hasField$0 &= 0xfffffffb;
			cd_time$field = new int();
		}

		public function get hasCdTime():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set cdTime(value:int):void {
			hasField$0 |= 0x4;
			cd_time$field = value;
		}

		public function get cdTime():int {
			return cd_time$field;
		}

		/**
		 *  @private
		 */
		public static const MY_RANK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rankBattle.ProtoRankBattlePlayerInfo.my_rank", "myRank", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var my_rank$field:int;

		public function clearMyRank():void {
			hasField$0 &= 0xfffffff7;
			my_rank$field = new int();
		}

		public function get hasMyRank():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set myRank(value:int):void {
			hasField$0 |= 0x8;
			my_rank$field = value;
		}

		public function get myRank():int {
			return my_rank$field;
		}

		/**
		 *  @private
		 */
		public static const COMBAT_POWER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rankBattle.ProtoRankBattlePlayerInfo.combat_power", "combatPower", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var combat_power$field:int;

		public function clearCombatPower():void {
			hasField$0 &= 0xffffffef;
			combat_power$field = new int();
		}

		public function get hasCombatPower():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set combatPower(value:int):void {
			hasField$0 |= 0x10;
			combat_power$field = value;
		}

		public function get combatPower():int {
			return combat_power$field;
		}

		/**
		 *  @private
		 */
		public static const CONTINUOUS_WIN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rankBattle.ProtoRankBattlePlayerInfo.continuous_win", "continuousWin", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var continuous_win$field:int;

		public function clearContinuousWin():void {
			hasField$0 &= 0xffffffdf;
			continuous_win$field = new int();
		}

		public function get hasContinuousWin():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set continuousWin(value:int):void {
			hasField$0 |= 0x20;
			continuous_win$field = value;
		}

		public function get continuousWin():int {
			return continuous_win$field;
		}

		/**
		 *  @private
		 */
		public static const RANK_AWARD_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rankBattle.ProtoRankBattlePlayerInfo.rank_award_money", "rankAwardMoney", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rank_award_money$field:int;

		public function clearRankAwardMoney():void {
			hasField$0 &= 0xffffffbf;
			rank_award_money$field = new int();
		}

		public function get hasRankAwardMoney():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set rankAwardMoney(value:int):void {
			hasField$0 |= 0x40;
			rank_award_money$field = value;
		}

		public function get rankAwardMoney():int {
			return rank_award_money$field;
		}

		/**
		 *  @private
		 */
		public static const RANK_AWARD_BATTLE_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rankBattle.ProtoRankBattlePlayerInfo.rank_award_battle_money", "rankAwardBattleMoney", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rank_award_battle_money$field:int;

		public function clearRankAwardBattleMoney():void {
			hasField$0 &= 0xffffff7f;
			rank_award_battle_money$field = new int();
		}

		public function get hasRankAwardBattleMoney():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set rankAwardBattleMoney(value:int):void {
			hasField$0 |= 0x80;
			rank_award_battle_money$field = value;
		}

		public function get rankAwardBattleMoney():int {
			return rank_award_battle_money$field;
		}

		/**
		 *  @private
		 */
		public static const BUY_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rankBattle.ProtoRankBattlePlayerInfo.buy_times", "buyTimes", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var buy_times$field:int;

		public function clearBuyTimes():void {
			hasField$0 &= 0xfffffeff;
			buy_times$field = new int();
		}

		public function get hasBuyTimes():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set buyTimes(value:int):void {
			hasField$0 |= 0x100;
			buy_times$field = value;
		}

		public function get buyTimes():int {
			return buy_times$field;
		}

		/**
		 *  @private
		 */
		public static const BUY_TIMES_MONEY_INGOT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rankBattle.ProtoRankBattlePlayerInfo.buy_times_money_ingot", "buyTimesMoneyIngot", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var buy_times_money_ingot$field:int;

		public function clearBuyTimesMoneyIngot():void {
			hasField$0 &= 0xfffffdff;
			buy_times_money_ingot$field = new int();
		}

		public function get hasBuyTimesMoneyIngot():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set buyTimesMoneyIngot(value:int):void {
			hasField$0 |= 0x200;
			buy_times_money_ingot$field = value;
		}

		public function get buyTimesMoneyIngot():int {
			return buy_times_money_ingot$field;
		}

		/**
		 *  @private
		 */
		public static const CD_TIME_MONEY_INGOT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rankBattle.ProtoRankBattlePlayerInfo.cd_time_money_ingot", "cdTimeMoneyIngot", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var cd_time_money_ingot$field:int;

		public function clearCdTimeMoneyIngot():void {
			hasField$0 &= 0xfffffbff;
			cd_time_money_ingot$field = new int();
		}

		public function get hasCdTimeMoneyIngot():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set cdTimeMoneyIngot(value:int):void {
			hasField$0 |= 0x400;
			cd_time_money_ingot$field = value;
		}

		public function get cdTimeMoneyIngot():int {
			return cd_time_money_ingot$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_TIPS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoRankBattlePlayerInfo.ninja_tips", "ninjaTips", (12 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.rankBattle.ProtoBattleRivalNinjaInfo);

		private var ninja_tips$field:serverProto.rankBattle.ProtoBattleRivalNinjaInfo;

		public function clearNinjaTips():void {
			ninja_tips$field = null;
		}

		public function get hasNinjaTips():Boolean {
			return ninja_tips$field != null;
		}

		public function set ninjaTips(value:serverProto.rankBattle.ProtoBattleRivalNinjaInfo):void {
			ninja_tips$field = value;
		}

		public function get ninjaTips():serverProto.rankBattle.ProtoBattleRivalNinjaInfo {
			return ninja_tips$field;
		}

		/**
		 *  @private
		 */
		public static const GLOBAL_MY_RANK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rankBattle.ProtoRankBattlePlayerInfo.global_my_rank", "globalMyRank", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var global_my_rank$field:int;

		public function clearGlobalMyRank():void {
			hasField$0 &= 0xfffff7ff;
			global_my_rank$field = new int();
		}

		public function get hasGlobalMyRank():Boolean {
			return (hasField$0 & 0x800) != 0;
		}

		public function set globalMyRank(value:int):void {
			hasField$0 |= 0x800;
			global_my_rank$field = value;
		}

		public function get globalMyRank():int {
			return global_my_rank$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasLeftTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, left_times$field);
			}
			if (hasLeftPayTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, left_pay_times$field);
			}
			if (hasCdTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, cd_time$field);
			}
			if (hasMyRank) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, my_rank$field);
			}
			if (hasCombatPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, combat_power$field);
			}
			if (hasContinuousWin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, continuous_win$field);
			}
			if (hasRankAwardMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, rank_award_money$field);
			}
			if (hasRankAwardBattleMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, rank_award_battle_money$field);
			}
			if (hasBuyTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, buy_times$field);
			}
			if (hasBuyTimesMoneyIngot) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, buy_times_money_ingot$field);
			}
			if (hasCdTimeMoneyIngot) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, cd_time_money_ingot$field);
			}
			if (hasNinjaTips) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_tips$field);
			}
			if (hasGlobalMyRank) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, global_my_rank$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var left_times$count:uint = 0;
			var left_pay_times$count:uint = 0;
			var cd_time$count:uint = 0;
			var my_rank$count:uint = 0;
			var combat_power$count:uint = 0;
			var continuous_win$count:uint = 0;
			var rank_award_money$count:uint = 0;
			var rank_award_battle_money$count:uint = 0;
			var buy_times$count:uint = 0;
			var buy_times_money_ingot$count:uint = 0;
			var cd_time_money_ingot$count:uint = 0;
			var ninja_tips$count:uint = 0;
			var global_my_rank$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (left_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattlePlayerInfo.leftTimes cannot be set twice.');
					}
					++left_times$count;
					this.leftTimes = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (left_pay_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattlePlayerInfo.leftPayTimes cannot be set twice.');
					}
					++left_pay_times$count;
					this.leftPayTimes = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (cd_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattlePlayerInfo.cdTime cannot be set twice.');
					}
					++cd_time$count;
					this.cdTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (my_rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattlePlayerInfo.myRank cannot be set twice.');
					}
					++my_rank$count;
					this.myRank = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (combat_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattlePlayerInfo.combatPower cannot be set twice.');
					}
					++combat_power$count;
					this.combatPower = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (continuous_win$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattlePlayerInfo.continuousWin cannot be set twice.');
					}
					++continuous_win$count;
					this.continuousWin = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (rank_award_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattlePlayerInfo.rankAwardMoney cannot be set twice.');
					}
					++rank_award_money$count;
					this.rankAwardMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (rank_award_battle_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattlePlayerInfo.rankAwardBattleMoney cannot be set twice.');
					}
					++rank_award_battle_money$count;
					this.rankAwardBattleMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 9:
					if (buy_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattlePlayerInfo.buyTimes cannot be set twice.');
					}
					++buy_times$count;
					this.buyTimes = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 10:
					if (buy_times_money_ingot$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattlePlayerInfo.buyTimesMoneyIngot cannot be set twice.');
					}
					++buy_times_money_ingot$count;
					this.buyTimesMoneyIngot = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 11:
					if (cd_time_money_ingot$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattlePlayerInfo.cdTimeMoneyIngot cannot be set twice.');
					}
					++cd_time_money_ingot$count;
					this.cdTimeMoneyIngot = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 12:
					if (ninja_tips$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattlePlayerInfo.ninjaTips cannot be set twice.');
					}
					++ninja_tips$count;
					this.ninjaTips = new serverProto.rankBattle.ProtoBattleRivalNinjaInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaTips);
					break;
				case 13:
					if (global_my_rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattlePlayerInfo.globalMyRank cannot be set twice.');
					}
					++global_my_rank$count;
					this.globalMyRank = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
