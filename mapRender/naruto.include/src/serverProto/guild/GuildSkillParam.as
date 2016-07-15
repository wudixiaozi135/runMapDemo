package serverProto.guild {
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
	public  final class GuildSkillParam extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CAN_LEARN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.GuildSkillParam.can_learn", "canLearn", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var can_learn$field:uint;

		private var hasField$0:uint = 0;

		public function clearCanLearn():void {
			hasField$0 &= 0xfffffffe;
			can_learn$field = new uint();
		}

		public function get hasCanLearn():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set canLearn(value:uint):void {
			hasField$0 |= 0x1;
			can_learn$field = value;
		}

		public function get canLearn():uint {
			return can_learn$field;
		}

		/**
		 *  @private
		 */
		public static const NEXT_LVL_CD:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.GuildSkillParam.next_lvl_cd", "nextLvlCd", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var next_lvl_cd$field:uint;

		public function clearNextLvlCd():void {
			hasField$0 &= 0xfffffffd;
			next_lvl_cd$field = new uint();
		}

		public function get hasNextLvlCd():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set nextLvlCd(value:uint):void {
			hasField$0 |= 0x2;
			next_lvl_cd$field = value;
		}

		public function get nextLvlCd():uint {
			return next_lvl_cd$field;
		}

		/**
		 *  @private
		 */
		public static const NEXT_LVL_COST:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.GuildSkillParam.next_lvl_cost", "nextLvlCost", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var next_lvl_cost$field:uint;

		public function clearNextLvlCost():void {
			hasField$0 &= 0xfffffffb;
			next_lvl_cost$field = new uint();
		}

		public function get hasNextLvlCost():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set nextLvlCost(value:uint):void {
			hasField$0 |= 0x4;
			next_lvl_cost$field = value;
		}

		public function get nextLvlCost():uint {
			return next_lvl_cost$field;
		}

		/**
		 *  @private
		 */
		public static const NEXT_EFFECT_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.GuildSkillParam.next_effect_value", "nextEffectValue", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var next_effect_value$field:uint;

		public function clearNextEffectValue():void {
			hasField$0 &= 0xfffffff7;
			next_effect_value$field = new uint();
		}

		public function get hasNextEffectValue():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set nextEffectValue(value:uint):void {
			hasField$0 |= 0x8;
			next_effect_value$field = value;
		}

		public function get nextEffectValue():uint {
			return next_effect_value$field;
		}

		/**
		 *  @private
		 */
		public static const EFFECT_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.GuildSkillParam.effect_value", "effectValue", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var effect_value$field:uint;

		public function clearEffectValue():void {
			hasField$0 &= 0xffffffef;
			effect_value$field = new uint();
		}

		public function get hasEffectValue():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set effectValue(value:uint):void {
			hasField$0 |= 0x10;
			effect_value$field = value;
		}

		public function get effectValue():uint {
			return effect_value$field;
		}

		/**
		 *  @private
		 */
		public static const CURRENT_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.GuildSkillParam.current_lvl", "currentLvl", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_lvl$field:uint;

		public function clearCurrentLvl():void {
			hasField$0 &= 0xffffffdf;
			current_lvl$field = new uint();
		}

		public function get hasCurrentLvl():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set currentLvl(value:uint):void {
			hasField$0 |= 0x20;
			current_lvl$field = value;
		}

		public function get currentLvl():uint {
			return current_lvl$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasCanLearn) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, can_learn$field);
			}
			if (hasNextLvlCd) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, next_lvl_cd$field);
			}
			if (hasNextLvlCost) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, next_lvl_cost$field);
			}
			if (hasNextEffectValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, next_effect_value$field);
			}
			if (hasEffectValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, effect_value$field);
			}
			if (hasCurrentLvl) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, current_lvl$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var can_learn$count:uint = 0;
			var next_lvl_cd$count:uint = 0;
			var next_lvl_cost$count:uint = 0;
			var next_effect_value$count:uint = 0;
			var effect_value$count:uint = 0;
			var current_lvl$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (can_learn$count != 0) {
						throw new flash.errors.IOError('Bad data format: GuildSkillParam.canLearn cannot be set twice.');
					}
					++can_learn$count;
					this.canLearn = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (next_lvl_cd$count != 0) {
						throw new flash.errors.IOError('Bad data format: GuildSkillParam.nextLvlCd cannot be set twice.');
					}
					++next_lvl_cd$count;
					this.nextLvlCd = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (next_lvl_cost$count != 0) {
						throw new flash.errors.IOError('Bad data format: GuildSkillParam.nextLvlCost cannot be set twice.');
					}
					++next_lvl_cost$count;
					this.nextLvlCost = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (next_effect_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: GuildSkillParam.nextEffectValue cannot be set twice.');
					}
					++next_effect_value$count;
					this.nextEffectValue = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (effect_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: GuildSkillParam.effectValue cannot be set twice.');
					}
					++effect_value$count;
					this.effectValue = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (current_lvl$count != 0) {
						throw new flash.errors.IOError('Bad data format: GuildSkillParam.currentLvl cannot be set twice.');
					}
					++current_lvl$count;
					this.currentLvl = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
