package serverProto.player {
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
	public  final class ProtoBefallDungeonScoreInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const HP_SCORE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.player.ProtoBefallDungeonScoreInfo.hp_score", "hpScore", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hp_score$field:int;

		private var hasField$0:uint = 0;

		public function clearHpScore():void {
			hasField$0 &= 0xfffffffe;
			hp_score$field = new int();
		}

		public function get hasHpScore():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set hpScore(value:int):void {
			hasField$0 |= 0x1;
			hp_score$field = value;
		}

		public function get hpScore():int {
			return hp_score$field;
		}

		/**
		 *  @private
		 */
		public static const ROUND_SCORE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.player.ProtoBefallDungeonScoreInfo.round_score", "roundScore", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var round_score$field:int;

		public function clearRoundScore():void {
			hasField$0 &= 0xfffffffd;
			round_score$field = new int();
		}

		public function get hasRoundScore():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set roundScore(value:int):void {
			hasField$0 |= 0x2;
			round_score$field = value;
		}

		public function get roundScore():int {
			return round_score$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_DEATH_SCORE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.player.ProtoBefallDungeonScoreInfo.ninja_death_score", "ninjaDeathScore", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_death_score$field:int;

		public function clearNinjaDeathScore():void {
			hasField$0 &= 0xfffffffb;
			ninja_death_score$field = new int();
		}

		public function get hasNinjaDeathScore():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set ninjaDeathScore(value:int):void {
			hasField$0 |= 0x4;
			ninja_death_score$field = value;
		}

		public function get ninjaDeathScore():int {
			return ninja_death_score$field;
		}

		/**
		 *  @private
		 */
		public static const DAMAGE_SCORE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.player.ProtoBefallDungeonScoreInfo.damage_score", "damageScore", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var damage_score$field:int;

		public function clearDamageScore():void {
			hasField$0 &= 0xfffffff7;
			damage_score$field = new int();
		}

		public function get hasDamageScore():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set damageScore(value:int):void {
			hasField$0 |= 0x8;
			damage_score$field = value;
		}

		public function get damageScore():int {
			return damage_score$field;
		}

		/**
		 *  @private
		 */
		public static const TOTAL_SCORE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.player.ProtoBefallDungeonScoreInfo.total_score", "totalScore", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_score$field:int;

		public function clearTotalScore():void {
			hasField$0 &= 0xffffffef;
			total_score$field = new int();
		}

		public function get hasTotalScore():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set totalScore(value:int):void {
			hasField$0 |= 0x10;
			total_score$field = value;
		}

		public function get totalScore():int {
			return total_score$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasHpScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, hp_score$field);
			}
			if (hasRoundScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, round_score$field);
			}
			if (hasNinjaDeathScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, ninja_death_score$field);
			}
			if (hasDamageScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, damage_score$field);
			}
			if (hasTotalScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, total_score$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var hp_score$count:uint = 0;
			var round_score$count:uint = 0;
			var ninja_death_score$count:uint = 0;
			var damage_score$count:uint = 0;
			var total_score$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (hp_score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBefallDungeonScoreInfo.hpScore cannot be set twice.');
					}
					++hp_score$count;
					this.hpScore = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (round_score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBefallDungeonScoreInfo.roundScore cannot be set twice.');
					}
					++round_score$count;
					this.roundScore = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (ninja_death_score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBefallDungeonScoreInfo.ninjaDeathScore cannot be set twice.');
					}
					++ninja_death_score$count;
					this.ninjaDeathScore = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (damage_score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBefallDungeonScoreInfo.damageScore cannot be set twice.');
					}
					++damage_score$count;
					this.damageScore = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (total_score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBefallDungeonScoreInfo.totalScore cannot be set twice.');
					}
					++total_score$count;
					this.totalScore = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
