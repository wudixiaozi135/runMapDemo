package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoPlayerKey;
	import serverProto.fight.ProtoGoodsAward;
	import serverProto.fight.ProtoNinjaAward;
	import serverProto.fight.ProtoFightMemberBenefit;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoFightOverInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightOverInfo.player", "player", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		public var player:serverProto.inc.ProtoPlayerKey;

		/**
		 *  @private
		 */
		public static const TEAM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightOverInfo.team_id", "teamId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var teamId:uint;

		/**
		 *  @private
		 */
		public static const FIGHT_RESULT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightOverInfo.fight_result", "fightResult", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var fightResult:uint;

		/**
		 *  @private
		 */
		public static const GOOD_AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightOverInfo.good_award", "goodAward", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoGoodsAward);

		[ArrayElementType("serverProto.fight.ProtoGoodsAward")]
		public var goodAward:Array = [];

		/**
		 *  @private
		 */
		public static const NINJA_AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightOverInfo.ninja_award", "ninjaAward", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoNinjaAward);

		[ArrayElementType("serverProto.fight.ProtoNinjaAward")]
		public var ninjaAward:Array = [];

		/**
		 *  @private
		 */
		public static const MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightOverInfo.money", "money", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var money$field:uint;

		private var hasField$0:uint = 0;

		public function clearMoney():void {
			hasField$0 &= 0xfffffffe;
			money$field = new uint();
		}

		public function get hasMoney():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set money(value:uint):void {
			hasField$0 |= 0x1;
			money$field = value;
		}

		public function get money():uint {
			return money$field;
		}

		/**
		 *  @private
		 */
		public static const BENEFIT:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightOverInfo.benefit", "benefit", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoFightMemberBenefit);

		[ArrayElementType("serverProto.fight.ProtoFightMemberBenefit")]
		public var benefit:Array = [];

		/**
		 *  @private
		 */
		public static const TEAM_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightOverInfo.team_type", "teamType", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		public var teamType:uint;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.player);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.teamId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.fightResult);
			for (var goodAward$index:uint = 0; goodAward$index < this.goodAward.length; ++goodAward$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.goodAward[goodAward$index]);
			}
			for (var ninjaAward$index:uint = 0; ninjaAward$index < this.ninjaAward.length; ++ninjaAward$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaAward[ninjaAward$index]);
			}
			if (hasMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, money$field);
			}
			for (var benefit$index:uint = 0; benefit$index < this.benefit.length; ++benefit$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.benefit[benefit$index]);
			}
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.teamType);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var player$count:uint = 0;
			var team_id$count:uint = 0;
			var fight_result$count:uint = 0;
			var money$count:uint = 0;
			var team_type$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (player$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightOverInfo.player cannot be set twice.');
					}
					++player$count;
					this.player = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.player);
					break;
				case 2:
					if (team_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightOverInfo.teamId cannot be set twice.');
					}
					++team_id$count;
					this.teamId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (fight_result$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightOverInfo.fightResult cannot be set twice.');
					}
					++fight_result$count;
					this.fightResult = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					this.goodAward.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoGoodsAward()));
					break;
				case 5:
					this.ninjaAward.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoNinjaAward()));
					break;
				case 6:
					if (money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightOverInfo.money cannot be set twice.');
					}
					++money$count;
					this.money = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					this.benefit.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoFightMemberBenefit()));
					break;
				case 8:
					if (team_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightOverInfo.teamType cannot be set twice.');
					}
					++team_type$count;
					this.teamType = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
