package serverProto.dungeon {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.dungeon.ProtoDungeonCardInfo;
	import serverProto.dungeon.ProtoCollectionEventInfo;
	import serverProto.dungeon.ProtoBoxDetail;
	import serverProto.dungeon.ProtoDungeonFinishNinjaExpInfo;
	import serverProto.inc.ProtoItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBaseIncome extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoBaseIncome.money", "money", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var money$field:int;

		private var hasField$0:uint = 0;

		public function clearMoney():void {
			hasField$0 &= 0xfffffffe;
			money$field = new int();
		}

		public function get hasMoney():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set money(value:int):void {
			hasField$0 |= 0x1;
			money$field = value;
		}

		public function get money():int {
			return money$field;
		}

		/**
		 *  @private
		 */
		public static const COMMON_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoBaseIncome.common_exp", "commonExp", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var common_exp$field:int;

		public function clearCommonExp():void {
			hasField$0 &= 0xfffffffd;
			common_exp$field = new int();
		}

		public function get hasCommonExp():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set commonExp(value:int):void {
			hasField$0 |= 0x2;
			common_exp$field = value;
		}

		public function get commonExp():int {
			return common_exp$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoBaseIncome.role_exp", "roleExp", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_exp$field:int;

		public function clearRoleExp():void {
			hasField$0 &= 0xfffffffb;
			role_exp$field = new int();
		}

		public function get hasRoleExp():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set roleExp(value:int):void {
			hasField$0 |= 0x4;
			role_exp$field = value;
		}

		public function get roleExp():int {
			return role_exp$field;
		}

		/**
		 *  @private
		 */
		public static const GOLD_BOX_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoBaseIncome.gold_box_num", "goldBoxNum", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var gold_box_num$field:int;

		public function clearGoldBoxNum():void {
			hasField$0 &= 0xfffffff7;
			gold_box_num$field = new int();
		}

		public function get hasGoldBoxNum():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set goldBoxNum(value:int):void {
			hasField$0 |= 0x8;
			gold_box_num$field = value;
		}

		public function get goldBoxNum():int {
			return gold_box_num$field;
		}

		/**
		 *  @private
		 */
		public static const SILVER_BOX_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoBaseIncome.silver_box_num", "silverBoxNum", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var silver_box_num$field:int;

		public function clearSilverBoxNum():void {
			hasField$0 &= 0xffffffef;
			silver_box_num$field = new int();
		}

		public function get hasSilverBoxNum():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set silverBoxNum(value:int):void {
			hasField$0 |= 0x10;
			silver_box_num$field = value;
		}

		public function get silverBoxNum():int {
			return silver_box_num$field;
		}

		/**
		 *  @private
		 */
		public static const COLLECION_EVENT:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoBaseIncome.collecion_event", "collecionEvent", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.dungeon.ProtoCollectionEventInfo);

		[ArrayElementType("serverProto.dungeon.ProtoCollectionEventInfo")]
		public var collecionEvent:Array = [];

		/**
		 *  @private
		 */
		public static const NINJA_EXP:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoBaseIncome.ninja_exp", "ninjaExp", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.dungeon.ProtoDungeonFinishNinjaExpInfo);

		[ArrayElementType("serverProto.dungeon.ProtoDungeonFinishNinjaExpInfo")]
		public var ninjaExp:Array = [];

		/**
		 *  @private
		 */
		public static const BOX_DETAIL_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoBaseIncome.box_detail_list", "boxDetailList", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.dungeon.ProtoBoxDetail);

		[ArrayElementType("serverProto.dungeon.ProtoBoxDetail")]
		public var boxDetailList:Array = [];

		/**
		 *  @private
		 */
		public static const TEAM_DUNGEON_CARD_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoBaseIncome.team_dungeon_card_list", "teamDungeonCardList", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.dungeon.ProtoDungeonCardInfo);

		[ArrayElementType("serverProto.dungeon.ProtoDungeonCardInfo")]
		public var teamDungeonCardList:Array = [];

		/**
		 *  @private
		 */
		public static const DEATH_NINJA_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoBaseIncome.death_ninja_count", "deathNinjaCount", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var death_ninja_count$field:int;

		public function clearDeathNinjaCount():void {
			hasField$0 &= 0xffffffdf;
			death_ninja_count$field = new int();
		}

		public function get hasDeathNinjaCount():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set deathNinjaCount(value:int):void {
			hasField$0 |= 0x20;
			death_ninja_count$field = value;
		}

		public function get deathNinjaCount():int {
			return death_ninja_count$field;
		}

		/**
		 *  @private
		 */
		public static const SPECIAL_DUNGEON_REWARD_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoBaseIncome.special_dungeon_reward_list", "specialDungeonRewardList", (11 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var specialDungeonRewardList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, money$field);
			}
			if (hasCommonExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, common_exp$field);
			}
			if (hasRoleExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, role_exp$field);
			}
			if (hasGoldBoxNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, gold_box_num$field);
			}
			if (hasSilverBoxNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, silver_box_num$field);
			}
			for (var collecionEvent$index:uint = 0; collecionEvent$index < this.collecionEvent.length; ++collecionEvent$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.collecionEvent[collecionEvent$index]);
			}
			for (var ninjaExp$index:uint = 0; ninjaExp$index < this.ninjaExp.length; ++ninjaExp$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaExp[ninjaExp$index]);
			}
			for (var boxDetailList$index:uint = 0; boxDetailList$index < this.boxDetailList.length; ++boxDetailList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.boxDetailList[boxDetailList$index]);
			}
			for (var teamDungeonCardList$index:uint = 0; teamDungeonCardList$index < this.teamDungeonCardList.length; ++teamDungeonCardList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.teamDungeonCardList[teamDungeonCardList$index]);
			}
			if (hasDeathNinjaCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, death_ninja_count$field);
			}
			for (var specialDungeonRewardList$index:uint = 0; specialDungeonRewardList$index < this.specialDungeonRewardList.length; ++specialDungeonRewardList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.specialDungeonRewardList[specialDungeonRewardList$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var money$count:uint = 0;
			var common_exp$count:uint = 0;
			var role_exp$count:uint = 0;
			var gold_box_num$count:uint = 0;
			var silver_box_num$count:uint = 0;
			var death_ninja_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseIncome.money cannot be set twice.');
					}
					++money$count;
					this.money = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (common_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseIncome.commonExp cannot be set twice.');
					}
					++common_exp$count;
					this.commonExp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (role_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseIncome.roleExp cannot be set twice.');
					}
					++role_exp$count;
					this.roleExp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (gold_box_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseIncome.goldBoxNum cannot be set twice.');
					}
					++gold_box_num$count;
					this.goldBoxNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (silver_box_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseIncome.silverBoxNum cannot be set twice.');
					}
					++silver_box_num$count;
					this.silverBoxNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					this.collecionEvent.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.dungeon.ProtoCollectionEventInfo()));
					break;
				case 7:
					this.ninjaExp.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.dungeon.ProtoDungeonFinishNinjaExpInfo()));
					break;
				case 8:
					this.boxDetailList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.dungeon.ProtoBoxDetail()));
					break;
				case 9:
					this.teamDungeonCardList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.dungeon.ProtoDungeonCardInfo()));
					break;
				case 10:
					if (death_ninja_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseIncome.deathNinjaCount cannot be set twice.');
					}
					++death_ninja_count$count;
					this.deathNinjaCount = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 11:
					this.specialDungeonRewardList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
