package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.ProtoActiveNinjaInfo;
	import serverProto.fight.ProtoTeamKathaChange;
	import serverProto.fight.EnchantmentActionType;
	import serverProto.fight.ProtoNinjaHpChange;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoEnchantmentAction extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ACTION_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoEnchantmentAction.action_type", "actionType", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.fight.EnchantmentActionType);

		public var actionType:int;

		/**
		 *  @private
		 */
		public static const ENCHANTMENT_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoEnchantmentAction.enchantment_id", "enchantmentId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var enchantmentId:uint;

		/**
		 *  @private
		 */
		public static const ACTIVE_NINJA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoEnchantmentAction.active_ninja", "activeNinja", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoActiveNinjaInfo);

		private var active_ninja$field:serverProto.fight.ProtoActiveNinjaInfo;

		public function clearActiveNinja():void {
			active_ninja$field = null;
		}

		public function get hasActiveNinja():Boolean {
			return active_ninja$field != null;
		}

		public function set activeNinja(value:serverProto.fight.ProtoActiveNinjaInfo):void {
			active_ninja$field = value;
		}

		public function get activeNinja():serverProto.fight.ProtoActiveNinjaInfo {
			return active_ninja$field;
		}

		/**
		 *  @private
		 */
		public static const HAS_ADDITIONAL_SKILL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoEnchantmentAction.has_additional_skill", "hasAdditionalSkill", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var has_additional_skill$field:uint;

		private var hasField$0:uint = 0;

		public function clearHasAdditionalSkill():void {
			hasField$0 &= 0xfffffffe;
			has_additional_skill$field = new uint();
		}

		public function get hasHasAdditionalSkill():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set hasAdditionalSkill(value:uint):void {
			hasField$0 |= 0x1;
			has_additional_skill$field = value;
		}

		public function get hasAdditionalSkill():uint {
			return has_additional_skill$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_HP_CHANGE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoEnchantmentAction.ninja_hp_change", "ninjaHpChange", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoNinjaHpChange);

		[ArrayElementType("serverProto.fight.ProtoNinjaHpChange")]
		public var ninjaHpChange:Array = [];

		/**
		 *  @private
		 */
		public static const TEAM_KATHA_CHANGE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoEnchantmentAction.team_katha_change", "teamKathaChange", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoTeamKathaChange);

		[ArrayElementType("serverProto.fight.ProtoTeamKathaChange")]
		public var teamKathaChange:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.actionType);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.enchantmentId);
			if (hasActiveNinja) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, active_ninja$field);
			}
			if (hasHasAdditionalSkill) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, has_additional_skill$field);
			}
			for (var ninjaHpChange$index:uint = 0; ninjaHpChange$index < this.ninjaHpChange.length; ++ninjaHpChange$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaHpChange[ninjaHpChange$index]);
			}
			for (var teamKathaChange$index:uint = 0; teamKathaChange$index < this.teamKathaChange.length; ++teamKathaChange$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.teamKathaChange[teamKathaChange$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var action_type$count:uint = 0;
			var enchantment_id$count:uint = 0;
			var active_ninja$count:uint = 0;
			var has_additional_skill$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (action_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEnchantmentAction.actionType cannot be set twice.');
					}
					++action_type$count;
					this.actionType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (enchantment_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEnchantmentAction.enchantmentId cannot be set twice.');
					}
					++enchantment_id$count;
					this.enchantmentId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (active_ninja$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEnchantmentAction.activeNinja cannot be set twice.');
					}
					++active_ninja$count;
					this.activeNinja = new serverProto.fight.ProtoActiveNinjaInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.activeNinja);
					break;
				case 4:
					if (has_additional_skill$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEnchantmentAction.hasAdditionalSkill cannot be set twice.');
					}
					++has_additional_skill$count;
					this.hasAdditionalSkill = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					this.ninjaHpChange.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoNinjaHpChange()));
					break;
				case 6:
					this.teamKathaChange.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoTeamKathaChange()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
