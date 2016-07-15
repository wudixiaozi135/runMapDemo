package serverProto.baseInfo {
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
	public  final class ProtoNinjaAwake extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const HP_PROFIT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaAwake.hp_profit", "hpProfit", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hp_profit$field:int;

		private var hasField$0:uint = 0;

		public function clearHpProfit():void {
			hasField$0 &= 0xfffffffe;
			hp_profit$field = new int();
		}

		public function get hasHpProfit():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set hpProfit(value:int):void {
			hasField$0 |= 0x1;
			hp_profit$field = value;
		}

		public function get hpProfit():int {
			return hp_profit$field;
		}

		/**
		 *  @private
		 */
		public static const BODY_ATTACK_PROFIT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaAwake.body_attack_profit", "bodyAttackProfit", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var body_attack_profit$field:int;

		public function clearBodyAttackProfit():void {
			hasField$0 &= 0xfffffffd;
			body_attack_profit$field = new int();
		}

		public function get hasBodyAttackProfit():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set bodyAttackProfit(value:int):void {
			hasField$0 |= 0x2;
			body_attack_profit$field = value;
		}

		public function get bodyAttackProfit():int {
			return body_attack_profit$field;
		}

		/**
		 *  @private
		 */
		public static const BODY_DEFENSE_PROFIT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaAwake.body_defense_profit", "bodyDefenseProfit", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var body_defense_profit$field:int;

		public function clearBodyDefenseProfit():void {
			hasField$0 &= 0xfffffffb;
			body_defense_profit$field = new int();
		}

		public function get hasBodyDefenseProfit():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set bodyDefenseProfit(value:int):void {
			hasField$0 |= 0x4;
			body_defense_profit$field = value;
		}

		public function get bodyDefenseProfit():int {
			return body_defense_profit$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_ATTACK_PROFIT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaAwake.ninja_attack_profit", "ninjaAttackProfit", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_attack_profit$field:int;

		public function clearNinjaAttackProfit():void {
			hasField$0 &= 0xfffffff7;
			ninja_attack_profit$field = new int();
		}

		public function get hasNinjaAttackProfit():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set ninjaAttackProfit(value:int):void {
			hasField$0 |= 0x8;
			ninja_attack_profit$field = value;
		}

		public function get ninjaAttackProfit():int {
			return ninja_attack_profit$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_DEFENSE_PROFIT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaAwake.ninja_defense_profit", "ninjaDefenseProfit", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_defense_profit$field:int;

		public function clearNinjaDefenseProfit():void {
			hasField$0 &= 0xffffffef;
			ninja_defense_profit$field = new int();
		}

		public function get hasNinjaDefenseProfit():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set ninjaDefenseProfit(value:int):void {
			hasField$0 |= 0x10;
			ninja_defense_profit$field = value;
		}

		public function get ninjaDefenseProfit():int {
			return ninja_defense_profit$field;
		}

		/**
		 *  @private
		 */
		public static const GROWTH_HP_PROFIT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaAwake.growth_hp_profit", "growthHpProfit", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var growth_hp_profit$field:int;

		public function clearGrowthHpProfit():void {
			hasField$0 &= 0xffffffdf;
			growth_hp_profit$field = new int();
		}

		public function get hasGrowthHpProfit():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set growthHpProfit(value:int):void {
			hasField$0 |= 0x20;
			growth_hp_profit$field = value;
		}

		public function get growthHpProfit():int {
			return growth_hp_profit$field;
		}

		/**
		 *  @private
		 */
		public static const GROWTH_BODY_ATTACK_PROFIT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaAwake.growth_body_attack_profit", "growthBodyAttackProfit", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var growth_body_attack_profit$field:int;

		public function clearGrowthBodyAttackProfit():void {
			hasField$0 &= 0xffffffbf;
			growth_body_attack_profit$field = new int();
		}

		public function get hasGrowthBodyAttackProfit():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set growthBodyAttackProfit(value:int):void {
			hasField$0 |= 0x40;
			growth_body_attack_profit$field = value;
		}

		public function get growthBodyAttackProfit():int {
			return growth_body_attack_profit$field;
		}

		/**
		 *  @private
		 */
		public static const GROWTH_BODY_DEFENSE_PROFIT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaAwake.growth_body_defense_profit", "growthBodyDefenseProfit", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var growth_body_defense_profit$field:int;

		public function clearGrowthBodyDefenseProfit():void {
			hasField$0 &= 0xffffff7f;
			growth_body_defense_profit$field = new int();
		}

		public function get hasGrowthBodyDefenseProfit():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set growthBodyDefenseProfit(value:int):void {
			hasField$0 |= 0x80;
			growth_body_defense_profit$field = value;
		}

		public function get growthBodyDefenseProfit():int {
			return growth_body_defense_profit$field;
		}

		/**
		 *  @private
		 */
		public static const GROWTH_NINJA_ATTACK_PROFIT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaAwake.growth_ninja_attack_profit", "growthNinjaAttackProfit", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var growth_ninja_attack_profit$field:int;

		public function clearGrowthNinjaAttackProfit():void {
			hasField$0 &= 0xfffffeff;
			growth_ninja_attack_profit$field = new int();
		}

		public function get hasGrowthNinjaAttackProfit():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set growthNinjaAttackProfit(value:int):void {
			hasField$0 |= 0x100;
			growth_ninja_attack_profit$field = value;
		}

		public function get growthNinjaAttackProfit():int {
			return growth_ninja_attack_profit$field;
		}

		/**
		 *  @private
		 */
		public static const GROWTH_NINJA_DEFENSE_PROFIT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaAwake.growth_ninja_defense_profit", "growthNinjaDefenseProfit", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var growth_ninja_defense_profit$field:int;

		public function clearGrowthNinjaDefenseProfit():void {
			hasField$0 &= 0xfffffdff;
			growth_ninja_defense_profit$field = new int();
		}

		public function get hasGrowthNinjaDefenseProfit():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set growthNinjaDefenseProfit(value:int):void {
			hasField$0 |= 0x200;
			growth_ninja_defense_profit$field = value;
		}

		public function get growthNinjaDefenseProfit():int {
			return growth_ninja_defense_profit$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasHpProfit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, hp_profit$field);
			}
			if (hasBodyAttackProfit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, body_attack_profit$field);
			}
			if (hasBodyDefenseProfit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, body_defense_profit$field);
			}
			if (hasNinjaAttackProfit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, ninja_attack_profit$field);
			}
			if (hasNinjaDefenseProfit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, ninja_defense_profit$field);
			}
			if (hasGrowthHpProfit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, growth_hp_profit$field);
			}
			if (hasGrowthBodyAttackProfit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, growth_body_attack_profit$field);
			}
			if (hasGrowthBodyDefenseProfit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, growth_body_defense_profit$field);
			}
			if (hasGrowthNinjaAttackProfit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, growth_ninja_attack_profit$field);
			}
			if (hasGrowthNinjaDefenseProfit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, growth_ninja_defense_profit$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var hp_profit$count:uint = 0;
			var body_attack_profit$count:uint = 0;
			var body_defense_profit$count:uint = 0;
			var ninja_attack_profit$count:uint = 0;
			var ninja_defense_profit$count:uint = 0;
			var growth_hp_profit$count:uint = 0;
			var growth_body_attack_profit$count:uint = 0;
			var growth_body_defense_profit$count:uint = 0;
			var growth_ninja_attack_profit$count:uint = 0;
			var growth_ninja_defense_profit$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (hp_profit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaAwake.hpProfit cannot be set twice.');
					}
					++hp_profit$count;
					this.hpProfit = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (body_attack_profit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaAwake.bodyAttackProfit cannot be set twice.');
					}
					++body_attack_profit$count;
					this.bodyAttackProfit = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (body_defense_profit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaAwake.bodyDefenseProfit cannot be set twice.');
					}
					++body_defense_profit$count;
					this.bodyDefenseProfit = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (ninja_attack_profit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaAwake.ninjaAttackProfit cannot be set twice.');
					}
					++ninja_attack_profit$count;
					this.ninjaAttackProfit = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 5:
					if (ninja_defense_profit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaAwake.ninjaDefenseProfit cannot be set twice.');
					}
					++ninja_defense_profit$count;
					this.ninjaDefenseProfit = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 6:
					if (growth_hp_profit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaAwake.growthHpProfit cannot be set twice.');
					}
					++growth_hp_profit$count;
					this.growthHpProfit = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 7:
					if (growth_body_attack_profit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaAwake.growthBodyAttackProfit cannot be set twice.');
					}
					++growth_body_attack_profit$count;
					this.growthBodyAttackProfit = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 8:
					if (growth_body_defense_profit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaAwake.growthBodyDefenseProfit cannot be set twice.');
					}
					++growth_body_defense_profit$count;
					this.growthBodyDefenseProfit = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 9:
					if (growth_ninja_attack_profit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaAwake.growthNinjaAttackProfit cannot be set twice.');
					}
					++growth_ninja_attack_profit$count;
					this.growthNinjaAttackProfit = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 10:
					if (growth_ninja_defense_profit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaAwake.growthNinjaDefenseProfit cannot be set twice.');
					}
					++growth_ninja_defense_profit$count;
					this.growthNinjaDefenseProfit = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
