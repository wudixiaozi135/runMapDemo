package serverProto.user {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.user.ProtoNinjaImportantOperate;
	import serverProto.user.ProtoEquipEvolveImportantOperate;
	import serverProto.user.ProtoRankOnboardOperate;
	import serverProto.user.ProtoNewRankTitle;
	import serverProto.user.ImportantOperateType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoImportantOperateNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.user.ProtoImportantOperateNotify.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.user.ImportantOperateType);

		public var type:int;

		/**
		 *  @private
		 */
		public static const NINJA_OPERATE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoImportantOperateNotify.ninja_operate", "ninjaOperate", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.user.ProtoNinjaImportantOperate);

		private var ninja_operate$field:serverProto.user.ProtoNinjaImportantOperate;

		public function clearNinjaOperate():void {
			ninja_operate$field = null;
		}

		public function get hasNinjaOperate():Boolean {
			return ninja_operate$field != null;
		}

		public function set ninjaOperate(value:serverProto.user.ProtoNinjaImportantOperate):void {
			ninja_operate$field = value;
		}

		public function get ninjaOperate():serverProto.user.ProtoNinjaImportantOperate {
			return ninja_operate$field;
		}

		/**
		 *  @private
		 */
		public static const TALENT_SKILL_ID:RepeatedFieldDescriptor$TYPE_SINT32 = new RepeatedFieldDescriptor$TYPE_SINT32("serverProto.user.ProtoImportantOperateNotify.talent_skill_id", "talentSkillId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("int")]
		public var talentSkillId:Array = [];

		/**
		 *  @private
		 */
		public static const NEW_EQUIP:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.user.ProtoImportantOperateNotify.new_equip", "newEquip", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("int")]
		public var newEquip:Array = [];

		/**
		 *  @private
		 */
		public static const EVOLVE_EQUIP:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoImportantOperateNotify.evolve_equip", "evolveEquip", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.user.ProtoEquipEvolveImportantOperate);

		private var evolve_equip$field:serverProto.user.ProtoEquipEvolveImportantOperate;

		public function clearEvolveEquip():void {
			evolve_equip$field = null;
		}

		public function get hasEvolveEquip():Boolean {
			return evolve_equip$field != null;
		}

		public function set evolveEquip(value:serverProto.user.ProtoEquipEvolveImportantOperate):void {
			evolve_equip$field = value;
		}

		public function get evolveEquip():serverProto.user.ProtoEquipEvolveImportantOperate {
			return evolve_equip$field;
		}

		/**
		 *  @private
		 */
		public static const RANK_OPERATE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoImportantOperateNotify.rank_operate", "rankOperate", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.user.ProtoRankOnboardOperate);

		[ArrayElementType("serverProto.user.ProtoRankOnboardOperate")]
		public var rankOperate:Array = [];

		/**
		 *  @private
		 */
		public static const PRACTICE_POS_OPEN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoImportantOperateNotify.practice_pos_open_level", "practicePosOpenLevel", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var practice_pos_open_level$field:int;

		private var hasField$0:uint = 0;

		public function clearPracticePosOpenLevel():void {
			hasField$0 &= 0xfffffffe;
			practice_pos_open_level$field = new int();
		}

		public function get hasPracticePosOpenLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set practicePosOpenLevel(value:int):void {
			hasField$0 |= 0x1;
			practice_pos_open_level$field = value;
		}

		public function get practicePosOpenLevel():int {
			return practice_pos_open_level$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_PROPS_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoImportantOperateNotify.ninja_props_id", "ninjaPropsId", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_props_id$field:int;

		public function clearNinjaPropsId():void {
			hasField$0 &= 0xfffffffd;
			ninja_props_id$field = new int();
		}

		public function get hasNinjaPropsId():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set ninjaPropsId(value:int):void {
			hasField$0 |= 0x2;
			ninja_props_id$field = value;
		}

		public function get ninjaPropsId():int {
			return ninja_props_id$field;
		}

		/**
		 *  @private
		 */
		public static const TITLE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoImportantOperateNotify.title", "title", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.user.ProtoNewRankTitle);

		private var title$field:serverProto.user.ProtoNewRankTitle;

		public function clearTitle():void {
			title$field = null;
		}

		public function get hasTitle():Boolean {
			return title$field != null;
		}

		public function set title(value:serverProto.user.ProtoNewRankTitle):void {
			title$field = value;
		}

		public function get title():serverProto.user.ProtoNewRankTitle {
			return title$field;
		}

		/**
		 *  @private
		 */
		public static const SWITCH_STATE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoImportantOperateNotify.switch_state", "switchState", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var switch_state$field:int;

		public function clearSwitchState():void {
			hasField$0 &= 0xfffffffb;
			switch_state$field = new int();
		}

		public function get hasSwitchState():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set switchState(value:int):void {
			hasField$0 |= 0x4;
			switch_state$field = value;
		}

		public function get switchState():int {
			return switch_state$field;
		}

		/**
		 *  @private
		 */
		public static const FASHION_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoImportantOperateNotify.fashion_id", "fashionId", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var fashion_id$field:int;

		public function clearFashionId():void {
			hasField$0 &= 0xfffffff7;
			fashion_id$field = new int();
		}

		public function get hasFashionId():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set fashionId(value:int):void {
			hasField$0 |= 0x8;
			fashion_id$field = value;
		}

		public function get fashionId():int {
			return fashion_id$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.type);
			if (hasNinjaOperate) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_operate$field);
			}
			for (var talentSkillId$index:uint = 0; talentSkillId$index < this.talentSkillId.length; ++talentSkillId$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.talentSkillId[talentSkillId$index]);
			}
			for (var newEquip$index:uint = 0; newEquip$index < this.newEquip.length; ++newEquip$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.newEquip[newEquip$index]);
			}
			if (hasEvolveEquip) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, evolve_equip$field);
			}
			for (var rankOperate$index:uint = 0; rankOperate$index < this.rankOperate.length; ++rankOperate$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.rankOperate[rankOperate$index]);
			}
			if (hasPracticePosOpenLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, practice_pos_open_level$field);
			}
			if (hasNinjaPropsId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, ninja_props_id$field);
			}
			if (hasTitle) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, title$field);
			}
			if (hasSwitchState) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, switch_state$field);
			}
			if (hasFashionId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, fashion_id$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var type$count:uint = 0;
			var ninja_operate$count:uint = 0;
			var evolve_equip$count:uint = 0;
			var practice_pos_open_level$count:uint = 0;
			var ninja_props_id$count:uint = 0;
			var title$count:uint = 0;
			var switch_state$count:uint = 0;
			var fashion_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoImportantOperateNotify.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (ninja_operate$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoImportantOperateNotify.ninjaOperate cannot be set twice.');
					}
					++ninja_operate$count;
					this.ninjaOperate = new serverProto.user.ProtoNinjaImportantOperate();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaOperate);
					break;
				case 3:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_SINT32, this.talentSkillId);
						break;
					}
					this.talentSkillId.push(com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input));
					break;
				case 4:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_INT32, this.newEquip);
						break;
					}
					this.newEquip.push(com.netease.protobuf.ReadUtils.read$TYPE_INT32(input));
					break;
				case 5:
					if (evolve_equip$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoImportantOperateNotify.evolveEquip cannot be set twice.');
					}
					++evolve_equip$count;
					this.evolveEquip = new serverProto.user.ProtoEquipEvolveImportantOperate();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.evolveEquip);
					break;
				case 6:
					this.rankOperate.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.user.ProtoRankOnboardOperate()));
					break;
				case 7:
					if (practice_pos_open_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoImportantOperateNotify.practicePosOpenLevel cannot be set twice.');
					}
					++practice_pos_open_level$count;
					this.practicePosOpenLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (ninja_props_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoImportantOperateNotify.ninjaPropsId cannot be set twice.');
					}
					++ninja_props_id$count;
					this.ninjaPropsId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 9:
					if (title$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoImportantOperateNotify.title cannot be set twice.');
					}
					++title$count;
					this.title = new serverProto.user.ProtoNewRankTitle();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.title);
					break;
				case 10:
					if (switch_state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoImportantOperateNotify.switchState cannot be set twice.');
					}
					++switch_state$count;
					this.switchState = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 11:
					if (fashion_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoImportantOperateNotify.fashionId cannot be set twice.');
					}
					++fashion_id$count;
					this.fashionId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
