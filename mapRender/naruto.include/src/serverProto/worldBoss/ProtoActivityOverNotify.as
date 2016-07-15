package serverProto.worldBoss {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.worldBoss.ProtoItemReward;
	import serverProto.worldBoss.ProtoRankPlayerList;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoActivityOverNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const WORLD_BOSS_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.worldBoss.ProtoActivityOverNotify.world_boss_id", "worldBossId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var worldBossId:int;

		/**
		 *  @private
		 */
		public static const BE_KILLED:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.worldBoss.ProtoActivityOverNotify.be_killed", "beKilled", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var beKilled:int;

		/**
		 *  @private
		 */
		public static const SELF_RANK:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoActivityOverNotify.self_rank", "selfRank", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.worldBoss.ProtoRankPlayerList);

		public var selfRank:serverProto.worldBoss.ProtoRankPlayerList;

		/**
		 *  @private
		 */
		public static const COPPER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.worldBoss.ProtoActivityOverNotify.copper", "copper", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var copper$field:int;

		private var hasField$0:uint = 0;

		public function clearCopper():void {
			hasField$0 &= 0xfffffffe;
			copper$field = new int();
		}

		public function get hasCopper():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set copper(value:int):void {
			hasField$0 |= 0x1;
			copper$field = value;
		}

		public function get copper():int {
			return copper$field;
		}

		/**
		 *  @private
		 */
		public static const EXP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.worldBoss.ProtoActivityOverNotify.exp", "exp", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var exp$field:int;

		public function clearExp():void {
			hasField$0 &= 0xfffffffd;
			exp$field = new int();
		}

		public function get hasExp():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set exp(value:int):void {
			hasField$0 |= 0x2;
			exp$field = value;
		}

		public function get exp():int {
			return exp$field;
		}

		/**
		 *  @private
		 */
		public static const COUPON:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.worldBoss.ProtoActivityOverNotify.coupon", "coupon", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var coupon$field:int;

		public function clearCoupon():void {
			hasField$0 &= 0xfffffffb;
			coupon$field = new int();
		}

		public function get hasCoupon():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set coupon(value:int):void {
			hasField$0 |= 0x4;
			coupon$field = value;
		}

		public function get coupon():int {
			return coupon$field;
		}

		/**
		 *  @private
		 */
		public static const JADE_REWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoActivityOverNotify.jade_reward", "jadeReward", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.worldBoss.ProtoItemReward);

		[ArrayElementType("serverProto.worldBoss.ProtoItemReward")]
		public var jadeReward:Array = [];

		/**
		 *  @private
		 */
		public static const PLAYER_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoActivityOverNotify.player_list", "playerList", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.worldBoss.ProtoRankPlayerList);

		[ArrayElementType("serverProto.worldBoss.ProtoRankPlayerList")]
		public var playerList:Array = [];

		/**
		 *  @private
		 */
		public static const KILLER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoActivityOverNotify.killer", "killer", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.worldBoss.ProtoRankPlayerList);

		private var killer$field:serverProto.worldBoss.ProtoRankPlayerList;

		public function clearKiller():void {
			killer$field = null;
		}

		public function get hasKiller():Boolean {
			return killer$field != null;
		}

		public function set killer(value:serverProto.worldBoss.ProtoRankPlayerList):void {
			killer$field = value;
		}

		public function get killer():serverProto.worldBoss.ProtoRankPlayerList {
			return killer$field;
		}

		/**
		 *  @private
		 */
		public static const FAINTER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoActivityOverNotify.fainter", "fainter", (10 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.worldBoss.ProtoRankPlayerList);

		private var fainter$field:serverProto.worldBoss.ProtoRankPlayerList;

		public function clearFainter():void {
			fainter$field = null;
		}

		public function get hasFainter():Boolean {
			return fainter$field != null;
		}

		public function set fainter(value:serverProto.worldBoss.ProtoRankPlayerList):void {
			fainter$field = value;
		}

		public function get fainter():serverProto.worldBoss.ProtoRankPlayerList {
			return fainter$field;
		}

		/**
		 *  @private
		 */
		public static const COPPER_RATE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.worldBoss.ProtoActivityOverNotify.copper_rate", "copperRate", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var copper_rate$field:int;

		public function clearCopperRate():void {
			hasField$0 &= 0xfffffff7;
			copper_rate$field = new int();
		}

		public function get hasCopperRate():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set copperRate(value:int):void {
			hasField$0 |= 0x8;
			copper_rate$field = value;
		}

		public function get copperRate():int {
			return copper_rate$field;
		}

		/**
		 *  @private
		 */
		public static const EXP_RATE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.worldBoss.ProtoActivityOverNotify.exp_rate", "expRate", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var exp_rate$field:int;

		public function clearExpRate():void {
			hasField$0 &= 0xffffffef;
			exp_rate$field = new int();
		}

		public function get hasExpRate():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set expRate(value:int):void {
			hasField$0 |= 0x10;
			exp_rate$field = value;
		}

		public function get expRate():int {
			return exp_rate$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.worldBossId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.beKilled);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.selfRank);
			if (hasCopper) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, copper$field);
			}
			if (hasExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, exp$field);
			}
			if (hasCoupon) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, coupon$field);
			}
			for (var jadeReward$index:uint = 0; jadeReward$index < this.jadeReward.length; ++jadeReward$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.jadeReward[jadeReward$index]);
			}
			for (var playerList$index:uint = 0; playerList$index < this.playerList.length; ++playerList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.playerList[playerList$index]);
			}
			if (hasKiller) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, killer$field);
			}
			if (hasFainter) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, fainter$field);
			}
			if (hasCopperRate) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, copper_rate$field);
			}
			if (hasExpRate) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, exp_rate$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var world_boss_id$count:uint = 0;
			var be_killed$count:uint = 0;
			var self_rank$count:uint = 0;
			var copper$count:uint = 0;
			var exp$count:uint = 0;
			var coupon$count:uint = 0;
			var killer$count:uint = 0;
			var fainter$count:uint = 0;
			var copper_rate$count:uint = 0;
			var exp_rate$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (world_boss_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActivityOverNotify.worldBossId cannot be set twice.');
					}
					++world_boss_id$count;
					this.worldBossId = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (be_killed$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActivityOverNotify.beKilled cannot be set twice.');
					}
					++be_killed$count;
					this.beKilled = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (self_rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActivityOverNotify.selfRank cannot be set twice.');
					}
					++self_rank$count;
					this.selfRank = new serverProto.worldBoss.ProtoRankPlayerList();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.selfRank);
					break;
				case 4:
					if (copper$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActivityOverNotify.copper cannot be set twice.');
					}
					++copper$count;
					this.copper = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 5:
					if (exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActivityOverNotify.exp cannot be set twice.');
					}
					++exp$count;
					this.exp = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 6:
					if (coupon$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActivityOverNotify.coupon cannot be set twice.');
					}
					++coupon$count;
					this.coupon = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 7:
					this.jadeReward.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.worldBoss.ProtoItemReward()));
					break;
				case 8:
					this.playerList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.worldBoss.ProtoRankPlayerList()));
					break;
				case 9:
					if (killer$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActivityOverNotify.killer cannot be set twice.');
					}
					++killer$count;
					this.killer = new serverProto.worldBoss.ProtoRankPlayerList();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.killer);
					break;
				case 10:
					if (fainter$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActivityOverNotify.fainter cannot be set twice.');
					}
					++fainter$count;
					this.fainter = new serverProto.worldBoss.ProtoRankPlayerList();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.fainter);
					break;
				case 11:
					if (copper_rate$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActivityOverNotify.copperRate cannot be set twice.');
					}
					++copper_rate$count;
					this.copperRate = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 12:
					if (exp_rate$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActivityOverNotify.expRate cannot be set twice.');
					}
					++exp_rate$count;
					this.expRate = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
