package serverProto.rankBattle {
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
	public  final class ProtoRankBattleChallengeRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoRankBattleChallengeRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const CHALLENGE_RESULT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rankBattle.ProtoRankBattleChallengeRsp.challenge_result", "challengeResult", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var challenge_result$field:int;

		private var hasField$0:uint = 0;

		public function clearChallengeResult():void {
			hasField$0 &= 0xfffffffe;
			challenge_result$field = new int();
		}

		public function get hasChallengeResult():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set challengeResult(value:int):void {
			hasField$0 |= 0x1;
			challenge_result$field = value;
		}

		public function get challengeResult():int {
			return challenge_result$field;
		}

		/**
		 *  @private
		 */
		public static const MONEY_AWARD:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rankBattle.ProtoRankBattleChallengeRsp.money_award", "moneyAward", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var money_award$field:int;

		public function clearMoneyAward():void {
			hasField$0 &= 0xfffffffd;
			money_award$field = new int();
		}

		public function get hasMoneyAward():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set moneyAward(value:int):void {
			hasField$0 |= 0x2;
			money_award$field = value;
		}

		public function get moneyAward():int {
			return money_award$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasChallengeResult) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, challenge_result$field);
			}
			if (hasMoneyAward) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, money_award$field);
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
			var challenge_result$count:uint = 0;
			var money_award$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattleChallengeRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (challenge_result$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattleChallengeRsp.challengeResult cannot be set twice.');
					}
					++challenge_result$count;
					this.challengeResult = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (money_award$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattleChallengeRsp.moneyAward cannot be set twice.');
					}
					++money_award$count;
					this.moneyAward = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
