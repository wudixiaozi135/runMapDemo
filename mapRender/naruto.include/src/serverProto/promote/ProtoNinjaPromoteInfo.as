package serverProto.promote {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.promote.ProtoProgressBar;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaPromoteInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_SEQ:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.promote.ProtoNinjaPromoteInfo.ninja_seq", "ninjaSeq", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaSeq:int;

		/**
		 *  @private
		 */
		public static const COMBAT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.promote.ProtoNinjaPromoteInfo.combat", "combat", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var combat$field:int;

		private var hasField$0:uint = 0;

		public function clearCombat():void {
			hasField$0 &= 0xfffffffe;
			combat$field = new int();
		}

		public function get hasCombat():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set combat(value:int):void {
			hasField$0 |= 0x1;
			combat$field = value;
		}

		public function get combat():int {
			return combat$field;
		}

		/**
		 *  @private
		 */
		public static const RECOMMEND_COMBAT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.promote.ProtoNinjaPromoteInfo.recommend_combat", "recommendCombat", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var recommend_combat$field:int;

		public function clearRecommendCombat():void {
			hasField$0 &= 0xfffffffd;
			recommend_combat$field = new int();
		}

		public function get hasRecommendCombat():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set recommendCombat(value:int):void {
			hasField$0 |= 0x2;
			recommend_combat$field = value;
		}

		public function get recommendCombat():int {
			return recommend_combat$field;
		}

		/**
		 *  @private
		 */
		public static const JADE_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoNinjaPromoteInfo.jade_progress", "jadeProgress", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.promote.ProtoProgressBar);

		private var jade_progress$field:serverProto.promote.ProtoProgressBar;

		public function clearJadeProgress():void {
			jade_progress$field = null;
		}

		public function get hasJadeProgress():Boolean {
			return jade_progress$field != null;
		}

		public function set jadeProgress(value:serverProto.promote.ProtoProgressBar):void {
			jade_progress$field = value;
		}

		public function get jadeProgress():serverProto.promote.ProtoProgressBar {
			return jade_progress$field;
		}

		/**
		 *  @private
		 */
		public static const EQUIPMENT_LEVEL_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoNinjaPromoteInfo.equipment_level_progress", "equipmentLevelProgress", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.promote.ProtoProgressBar);

		private var equipment_level_progress$field:serverProto.promote.ProtoProgressBar;

		public function clearEquipmentLevelProgress():void {
			equipment_level_progress$field = null;
		}

		public function get hasEquipmentLevelProgress():Boolean {
			return equipment_level_progress$field != null;
		}

		public function set equipmentLevelProgress(value:serverProto.promote.ProtoProgressBar):void {
			equipment_level_progress$field = value;
		}

		public function get equipmentLevelProgress():serverProto.promote.ProtoProgressBar {
			return equipment_level_progress$field;
		}

		/**
		 *  @private
		 */
		public static const EQUIPMENT_QUALITY_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoNinjaPromoteInfo.equipment_quality_progress", "equipmentQualityProgress", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.promote.ProtoProgressBar);

		private var equipment_quality_progress$field:serverProto.promote.ProtoProgressBar;

		public function clearEquipmentQualityProgress():void {
			equipment_quality_progress$field = null;
		}

		public function get hasEquipmentQualityProgress():Boolean {
			return equipment_quality_progress$field != null;
		}

		public function set equipmentQualityProgress(value:serverProto.promote.ProtoProgressBar):void {
			equipment_quality_progress$field = value;
		}

		public function get equipmentQualityProgress():serverProto.promote.ProtoProgressBar {
			return equipment_quality_progress$field;
		}

		/**
		 *  @private
		 */
		public static const EQUIPMENT_FORGE_LEVEL_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoNinjaPromoteInfo.equipment_forge_level_progress", "equipmentForgeLevelProgress", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.promote.ProtoProgressBar);

		private var equipment_forge_level_progress$field:serverProto.promote.ProtoProgressBar;

		public function clearEquipmentForgeLevelProgress():void {
			equipment_forge_level_progress$field = null;
		}

		public function get hasEquipmentForgeLevelProgress():Boolean {
			return equipment_forge_level_progress$field != null;
		}

		public function set equipmentForgeLevelProgress(value:serverProto.promote.ProtoProgressBar):void {
			equipment_forge_level_progress$field = value;
		}

		public function get equipmentForgeLevelProgress():serverProto.promote.ProtoProgressBar {
			return equipment_forge_level_progress$field;
		}

		/**
		 *  @private
		 */
		public static const EQUIPMENT_FORGE_PROB_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoNinjaPromoteInfo.equipment_forge_prob_progress", "equipmentForgeProbProgress", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.promote.ProtoProgressBar);

		private var equipment_forge_prob_progress$field:serverProto.promote.ProtoProgressBar;

		public function clearEquipmentForgeProbProgress():void {
			equipment_forge_prob_progress$field = null;
		}

		public function get hasEquipmentForgeProbProgress():Boolean {
			return equipment_forge_prob_progress$field != null;
		}

		public function set equipmentForgeProbProgress(value:serverProto.promote.ProtoProgressBar):void {
			equipment_forge_prob_progress$field = value;
		}

		public function get equipmentForgeProbProgress():serverProto.promote.ProtoProgressBar {
			return equipment_forge_prob_progress$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_AWAKEN_LEVEL_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoNinjaPromoteInfo.ninja_awaken_level_progress", "ninjaAwakenLevelProgress", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.promote.ProtoProgressBar);

		private var ninja_awaken_level_progress$field:serverProto.promote.ProtoProgressBar;

		public function clearNinjaAwakenLevelProgress():void {
			ninja_awaken_level_progress$field = null;
		}

		public function get hasNinjaAwakenLevelProgress():Boolean {
			return ninja_awaken_level_progress$field != null;
		}

		public function set ninjaAwakenLevelProgress(value:serverProto.promote.ProtoProgressBar):void {
			ninja_awaken_level_progress$field = value;
		}

		public function get ninjaAwakenLevelProgress():serverProto.promote.ProtoProgressBar {
			return ninja_awaken_level_progress$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_STAR_LEVEL_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoNinjaPromoteInfo.ninja_star_level_progress", "ninjaStarLevelProgress", (10 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.promote.ProtoProgressBar);

		private var ninja_star_level_progress$field:serverProto.promote.ProtoProgressBar;

		public function clearNinjaStarLevelProgress():void {
			ninja_star_level_progress$field = null;
		}

		public function get hasNinjaStarLevelProgress():Boolean {
			return ninja_star_level_progress$field != null;
		}

		public function set ninjaStarLevelProgress(value:serverProto.promote.ProtoProgressBar):void {
			ninja_star_level_progress$field = value;
		}

		public function get ninjaStarLevelProgress():serverProto.promote.ProtoProgressBar {
			return ninja_star_level_progress$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_LEVEL_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoNinjaPromoteInfo.ninja_level_progress", "ninjaLevelProgress", (11 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.promote.ProtoProgressBar);

		private var ninja_level_progress$field:serverProto.promote.ProtoProgressBar;

		public function clearNinjaLevelProgress():void {
			ninja_level_progress$field = null;
		}

		public function get hasNinjaLevelProgress():Boolean {
			return ninja_level_progress$field != null;
		}

		public function set ninjaLevelProgress(value:serverProto.promote.ProtoProgressBar):void {
			ninja_level_progress$field = value;
		}

		public function get ninjaLevelProgress():serverProto.promote.ProtoProgressBar {
			return ninja_level_progress$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_STRENGTH_PROPERY_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoNinjaPromoteInfo.ninja_strength_propery_progress", "ninjaStrengthProperyProgress", (12 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.promote.ProtoProgressBar);

		private var ninja_strength_propery_progress$field:serverProto.promote.ProtoProgressBar;

		public function clearNinjaStrengthProperyProgress():void {
			ninja_strength_propery_progress$field = null;
		}

		public function get hasNinjaStrengthProperyProgress():Boolean {
			return ninja_strength_propery_progress$field != null;
		}

		public function set ninjaStrengthProperyProgress(value:serverProto.promote.ProtoProgressBar):void {
			ninja_strength_propery_progress$field = value;
		}

		public function get ninjaStrengthProperyProgress():serverProto.promote.ProtoProgressBar {
			return ninja_strength_propery_progress$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.ninjaSeq);
			if (hasCombat) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, combat$field);
			}
			if (hasRecommendCombat) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, recommend_combat$field);
			}
			if (hasJadeProgress) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, jade_progress$field);
			}
			if (hasEquipmentLevelProgress) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, equipment_level_progress$field);
			}
			if (hasEquipmentQualityProgress) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, equipment_quality_progress$field);
			}
			if (hasEquipmentForgeLevelProgress) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, equipment_forge_level_progress$field);
			}
			if (hasEquipmentForgeProbProgress) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, equipment_forge_prob_progress$field);
			}
			if (hasNinjaAwakenLevelProgress) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_awaken_level_progress$field);
			}
			if (hasNinjaStarLevelProgress) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_star_level_progress$field);
			}
			if (hasNinjaLevelProgress) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_level_progress$field);
			}
			if (hasNinjaStrengthProperyProgress) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_strength_propery_progress$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ninja_seq$count:uint = 0;
			var combat$count:uint = 0;
			var recommend_combat$count:uint = 0;
			var jade_progress$count:uint = 0;
			var equipment_level_progress$count:uint = 0;
			var equipment_quality_progress$count:uint = 0;
			var equipment_forge_level_progress$count:uint = 0;
			var equipment_forge_prob_progress$count:uint = 0;
			var ninja_awaken_level_progress$count:uint = 0;
			var ninja_star_level_progress$count:uint = 0;
			var ninja_level_progress$count:uint = 0;
			var ninja_strength_propery_progress$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ninja_seq$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPromoteInfo.ninjaSeq cannot be set twice.');
					}
					++ninja_seq$count;
					this.ninjaSeq = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (combat$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPromoteInfo.combat cannot be set twice.');
					}
					++combat$count;
					this.combat = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (recommend_combat$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPromoteInfo.recommendCombat cannot be set twice.');
					}
					++recommend_combat$count;
					this.recommendCombat = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (jade_progress$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPromoteInfo.jadeProgress cannot be set twice.');
					}
					++jade_progress$count;
					this.jadeProgress = new serverProto.promote.ProtoProgressBar();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.jadeProgress);
					break;
				case 5:
					if (equipment_level_progress$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPromoteInfo.equipmentLevelProgress cannot be set twice.');
					}
					++equipment_level_progress$count;
					this.equipmentLevelProgress = new serverProto.promote.ProtoProgressBar();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.equipmentLevelProgress);
					break;
				case 6:
					if (equipment_quality_progress$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPromoteInfo.equipmentQualityProgress cannot be set twice.');
					}
					++equipment_quality_progress$count;
					this.equipmentQualityProgress = new serverProto.promote.ProtoProgressBar();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.equipmentQualityProgress);
					break;
				case 7:
					if (equipment_forge_level_progress$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPromoteInfo.equipmentForgeLevelProgress cannot be set twice.');
					}
					++equipment_forge_level_progress$count;
					this.equipmentForgeLevelProgress = new serverProto.promote.ProtoProgressBar();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.equipmentForgeLevelProgress);
					break;
				case 8:
					if (equipment_forge_prob_progress$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPromoteInfo.equipmentForgeProbProgress cannot be set twice.');
					}
					++equipment_forge_prob_progress$count;
					this.equipmentForgeProbProgress = new serverProto.promote.ProtoProgressBar();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.equipmentForgeProbProgress);
					break;
				case 9:
					if (ninja_awaken_level_progress$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPromoteInfo.ninjaAwakenLevelProgress cannot be set twice.');
					}
					++ninja_awaken_level_progress$count;
					this.ninjaAwakenLevelProgress = new serverProto.promote.ProtoProgressBar();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaAwakenLevelProgress);
					break;
				case 10:
					if (ninja_star_level_progress$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPromoteInfo.ninjaStarLevelProgress cannot be set twice.');
					}
					++ninja_star_level_progress$count;
					this.ninjaStarLevelProgress = new serverProto.promote.ProtoProgressBar();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaStarLevelProgress);
					break;
				case 11:
					if (ninja_level_progress$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPromoteInfo.ninjaLevelProgress cannot be set twice.');
					}
					++ninja_level_progress$count;
					this.ninjaLevelProgress = new serverProto.promote.ProtoProgressBar();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaLevelProgress);
					break;
				case 12:
					if (ninja_strength_propery_progress$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPromoteInfo.ninjaStrengthProperyProgress cannot be set twice.');
					}
					++ninja_strength_propery_progress$count;
					this.ninjaStrengthProperyProgress = new serverProto.promote.ProtoProgressBar();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaStrengthProperyProgress);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
