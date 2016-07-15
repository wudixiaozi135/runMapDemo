package serverProto.battleRoyale {
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
	public  final class ProtoBattleRoyaleGetFieldInitInfoResp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoBattleRoyaleGetFieldInitInfoResp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const NOW:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoBattleRoyaleGetFieldInitInfoResp.now", "now", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var now$field:UInt64;

		public function clearNow():void {
			now$field = null;
		}

		public function get hasNow():Boolean {
			return now$field != null;
		}

		public function set now(value:UInt64):void {
			now$field = value;
		}

		public function get now():UInt64 {
			return now$field;
		}

		/**
		 *  @private
		 */
		public static const BATTLE_ROYALE_OPEN_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoBattleRoyaleGetFieldInitInfoResp.battle_royale_open_time", "battleRoyaleOpenTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var battle_royale_open_time$field:UInt64;

		public function clearBattleRoyaleOpenTime():void {
			battle_royale_open_time$field = null;
		}

		public function get hasBattleRoyaleOpenTime():Boolean {
			return battle_royale_open_time$field != null;
		}

		public function set battleRoyaleOpenTime(value:UInt64):void {
			battle_royale_open_time$field = value;
		}

		public function get battleRoyaleOpenTime():UInt64 {
			return battle_royale_open_time$field;
		}

		/**
		 *  @private
		 */
		public static const FREE_FIGHT_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoBattleRoyaleGetFieldInitInfoResp.free_fight_time", "freeFightTime", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var free_fight_time$field:UInt64;

		public function clearFreeFightTime():void {
			free_fight_time$field = null;
		}

		public function get hasFreeFightTime():Boolean {
			return free_fight_time$field != null;
		}

		public function set freeFightTime(value:UInt64):void {
			free_fight_time$field = value;
		}

		public function get freeFightTime():UInt64 {
			return free_fight_time$field;
		}

		/**
		 *  @private
		 */
		public static const BATTLE_ROYALE_OVER_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoBattleRoyaleGetFieldInitInfoResp.battle_royale_over_time", "battleRoyaleOverTime", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var battle_royale_over_time$field:UInt64;

		public function clearBattleRoyaleOverTime():void {
			battle_royale_over_time$field = null;
		}

		public function get hasBattleRoyaleOverTime():Boolean {
			return battle_royale_over_time$field != null;
		}

		public function set battleRoyaleOverTime(value:UInt64):void {
			battle_royale_over_time$field = value;
		}

		public function get battleRoyaleOverTime():UInt64 {
			return battle_royale_over_time$field;
		}

		/**
		 *  @private
		 */
		public static const REVIVE_COST:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleGetFieldInitInfoResp.revive_cost", "reviveCost", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var revive_cost$field:int;

		private var hasField$0:uint = 0;

		public function clearReviveCost():void {
			hasField$0 &= 0xfffffffe;
			revive_cost$field = new int();
		}

		public function get hasReviveCost():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set reviveCost(value:int):void {
			hasField$0 |= 0x1;
			revive_cost$field = value;
		}

		public function get reviveCost():int {
			return revive_cost$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasNow) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, now$field);
			}
			if (hasBattleRoyaleOpenTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, battle_royale_open_time$field);
			}
			if (hasFreeFightTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, free_fight_time$field);
			}
			if (hasBattleRoyaleOverTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, battle_royale_over_time$field);
			}
			if (hasReviveCost) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, revive_cost$field);
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
			var now$count:uint = 0;
			var battle_royale_open_time$count:uint = 0;
			var free_fight_time$count:uint = 0;
			var battle_royale_over_time$count:uint = 0;
			var revive_cost$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleGetFieldInitInfoResp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (now$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleGetFieldInitInfoResp.now cannot be set twice.');
					}
					++now$count;
					this.now = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 3:
					if (battle_royale_open_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleGetFieldInitInfoResp.battleRoyaleOpenTime cannot be set twice.');
					}
					++battle_royale_open_time$count;
					this.battleRoyaleOpenTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 4:
					if (free_fight_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleGetFieldInitInfoResp.freeFightTime cannot be set twice.');
					}
					++free_fight_time$count;
					this.freeFightTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 5:
					if (battle_royale_over_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleGetFieldInitInfoResp.battleRoyaleOverTime cannot be set twice.');
					}
					++battle_royale_over_time$count;
					this.battleRoyaleOverTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 6:
					if (revive_cost$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleGetFieldInitInfoResp.reviveCost cannot be set twice.');
					}
					++revive_cost$count;
					this.reviveCost = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
