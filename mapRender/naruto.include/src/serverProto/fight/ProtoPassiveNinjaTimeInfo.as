package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.ProtoAttackerTimeInfo;
	import serverProto.fight.ProtoEffectTimeInfo;
	import serverProto.fight.ProtoBeatenAttribute;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoPassiveNinjaTimeInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BEATEN_TYPE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoPassiveNinjaTimeInfo.beaten_type", "beatenType", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var beaten_type$field:int;

		private var hasField$0:uint = 0;

		public function clearBeatenType():void {
			hasField$0 &= 0xfffffffe;
			beaten_type$field = new int();
		}

		public function get hasBeatenType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set beatenType(value:int):void {
			hasField$0 |= 0x1;
			beaten_type$field = value;
		}

		public function get beatenType():int {
			return beaten_type$field;
		}

		/**
		 *  @private
		 */
		public static const POS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoPassiveNinjaTimeInfo.pos", "pos", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var pos$field:int;

		public function clearPos():void {
			hasField$0 &= 0xfffffffd;
			pos$field = new int();
		}

		public function get hasPos():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set pos(value:int):void {
			hasField$0 |= 0x2;
			pos$field = value;
		}

		public function get pos():int {
			return pos$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoPassiveNinjaTimeInfo.ninja_id", "ninjaId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_id$field:int;

		public function clearNinjaId():void {
			hasField$0 &= 0xfffffffb;
			ninja_id$field = new int();
		}

		public function get hasNinjaId():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set ninjaId(value:int):void {
			hasField$0 |= 0x4;
			ninja_id$field = value;
		}

		public function get ninjaId():int {
			return ninja_id$field;
		}

		/**
		 *  @private
		 */
		public static const DODGE_SKILL_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoPassiveNinjaTimeInfo.dodge_skill_id", "dodgeSkillId", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dodge_skill_id$field:int;

		public function clearDodgeSkillId():void {
			hasField$0 &= 0xfffffff7;
			dodge_skill_id$field = new int();
		}

		public function get hasDodgeSkillId():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set dodgeSkillId(value:int):void {
			hasField$0 |= 0x8;
			dodge_skill_id$field = value;
		}

		public function get dodgeSkillId():int {
			return dodge_skill_id$field;
		}

		/**
		 *  @private
		 */
		public static const DODGE_EFFECT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoPassiveNinjaTimeInfo.dodge_effect", "dodgeEffect", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoEffectTimeInfo);

		private var dodge_effect$field:serverProto.fight.ProtoEffectTimeInfo;

		public function clearDodgeEffect():void {
			dodge_effect$field = null;
		}

		public function get hasDodgeEffect():Boolean {
			return dodge_effect$field != null;
		}

		public function set dodgeEffect(value:serverProto.fight.ProtoEffectTimeInfo):void {
			dodge_effect$field = value;
		}

		public function get dodgeEffect():serverProto.fight.ProtoEffectTimeInfo {
			return dodge_effect$field;
		}

		/**
		 *  @private
		 */
		public static const DODGE_ACTION_FRAME_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoPassiveNinjaTimeInfo.dodge_action_frame_count", "dodgeActionFrameCount", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dodge_action_frame_count$field:int;

		public function clearDodgeActionFrameCount():void {
			hasField$0 &= 0xffffffef;
			dodge_action_frame_count$field = new int();
		}

		public function get hasDodgeActionFrameCount():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set dodgeActionFrameCount(value:int):void {
			hasField$0 |= 0x10;
			dodge_action_frame_count$field = value;
		}

		public function get dodgeActionFrameCount():int {
			return dodge_action_frame_count$field;
		}

		/**
		 *  @private
		 */
		public static const REBOUND_ATTACK_TIME_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoPassiveNinjaTimeInfo.rebound_attack_time_info", "reboundAttackTimeInfo", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoAttackerTimeInfo);

		private var rebound_attack_time_info$field:serverProto.fight.ProtoAttackerTimeInfo;

		public function clearReboundAttackTimeInfo():void {
			rebound_attack_time_info$field = null;
		}

		public function get hasReboundAttackTimeInfo():Boolean {
			return rebound_attack_time_info$field != null;
		}

		public function set reboundAttackTimeInfo(value:serverProto.fight.ProtoAttackerTimeInfo):void {
			rebound_attack_time_info$field = value;
		}

		public function get reboundAttackTimeInfo():serverProto.fight.ProtoAttackerTimeInfo {
			return rebound_attack_time_info$field;
		}

		/**
		 *  @private
		 */
		public static const REBOUND_BEATEN_FRAME_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoPassiveNinjaTimeInfo.rebound_beaten_frame_count", "reboundBeatenFrameCount", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rebound_beaten_frame_count$field:int;

		public function clearReboundBeatenFrameCount():void {
			hasField$0 &= 0xffffffdf;
			rebound_beaten_frame_count$field = new int();
		}

		public function get hasReboundBeatenFrameCount():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set reboundBeatenFrameCount(value:int):void {
			hasField$0 |= 0x20;
			rebound_beaten_frame_count$field = value;
		}

		public function get reboundBeatenFrameCount():int {
			return rebound_beaten_frame_count$field;
		}

		/**
		 *  @private
		 */
		public static const IS_BEATEN_BACK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoPassiveNinjaTimeInfo.is_beaten_back", "isBeatenBack", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_beaten_back$field:int;

		public function clearIsBeatenBack():void {
			hasField$0 &= 0xffffffbf;
			is_beaten_back$field = new int();
		}

		public function get hasIsBeatenBack():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set isBeatenBack(value:int):void {
			hasField$0 |= 0x40;
			is_beaten_back$field = value;
		}

		public function get isBeatenBack():int {
			return is_beaten_back$field;
		}

		/**
		 *  @private
		 */
		public static const BEATEN_BACK_FRAMES:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.fight.ProtoPassiveNinjaTimeInfo.beaten_back_frames", "beatenBackFrames", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("int")]
		public var beatenBackFrames:Array = [];

		/**
		 *  @private
		 */
		public static const BEATEN_ATTRIBUTE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoPassiveNinjaTimeInfo.beaten_attribute", "beatenAttribute", (11 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoBeatenAttribute);

		[ArrayElementType("serverProto.fight.ProtoBeatenAttribute")]
		public var beatenAttribute:Array = [];

		/**
		 *  @private
		 */
		public static const NEGATIVE_NINJA_STAT_IMMUNE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoPassiveNinjaTimeInfo.negative_ninja_stat_immune", "negativeNinjaStatImmune", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var negative_ninja_stat_immune$field:int;

		public function clearNegativeNinjaStatImmune():void {
			hasField$0 &= 0xffffff7f;
			negative_ninja_stat_immune$field = new int();
		}

		public function get hasNegativeNinjaStatImmune():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set negativeNinjaStatImmune(value:int):void {
			hasField$0 |= 0x80;
			negative_ninja_stat_immune$field = value;
		}

		public function get negativeNinjaStatImmune():int {
			return negative_ninja_stat_immune$field;
		}

		/**
		 *  @private
		 */
		public static const FIX_ACTION_FRAME_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoPassiveNinjaTimeInfo.fix_action_frame_count", "fixActionFrameCount", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var fix_action_frame_count$field:int;

		public function clearFixActionFrameCount():void {
			hasField$0 &= 0xfffffeff;
			fix_action_frame_count$field = new int();
		}

		public function get hasFixActionFrameCount():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set fixActionFrameCount(value:int):void {
			hasField$0 |= 0x100;
			fix_action_frame_count$field = value;
		}

		public function get fixActionFrameCount():int {
			return fix_action_frame_count$field;
		}

		/**
		 *  @private
		 */
		public static const DEAD_ACTION_FRAME_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoPassiveNinjaTimeInfo.dead_action_frame_count", "deadActionFrameCount", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dead_action_frame_count$field:int;

		public function clearDeadActionFrameCount():void {
			hasField$0 &= 0xfffffdff;
			dead_action_frame_count$field = new int();
		}

		public function get hasDeadActionFrameCount():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set deadActionFrameCount(value:int):void {
			hasField$0 |= 0x200;
			dead_action_frame_count$field = value;
		}

		public function get deadActionFrameCount():int {
			return dead_action_frame_count$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasBeatenType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, beaten_type$field);
			}
			if (hasPos) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, pos$field);
			}
			if (hasNinjaId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, ninja_id$field);
			}
			if (hasDodgeSkillId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, dodge_skill_id$field);
			}
			if (hasDodgeEffect) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, dodge_effect$field);
			}
			if (hasDodgeActionFrameCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, dodge_action_frame_count$field);
			}
			if (hasReboundAttackTimeInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, rebound_attack_time_info$field);
			}
			if (hasReboundBeatenFrameCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, rebound_beaten_frame_count$field);
			}
			if (hasIsBeatenBack) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, is_beaten_back$field);
			}
			for (var beatenBackFrames$index:uint = 0; beatenBackFrames$index < this.beatenBackFrames.length; ++beatenBackFrames$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.beatenBackFrames[beatenBackFrames$index]);
			}
			for (var beatenAttribute$index:uint = 0; beatenAttribute$index < this.beatenAttribute.length; ++beatenAttribute$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.beatenAttribute[beatenAttribute$index]);
			}
			if (hasNegativeNinjaStatImmune) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, negative_ninja_stat_immune$field);
			}
			if (hasFixActionFrameCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, fix_action_frame_count$field);
			}
			if (hasDeadActionFrameCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, dead_action_frame_count$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var beaten_type$count:uint = 0;
			var pos$count:uint = 0;
			var ninja_id$count:uint = 0;
			var dodge_skill_id$count:uint = 0;
			var dodge_effect$count:uint = 0;
			var dodge_action_frame_count$count:uint = 0;
			var rebound_attack_time_info$count:uint = 0;
			var rebound_beaten_frame_count$count:uint = 0;
			var is_beaten_back$count:uint = 0;
			var negative_ninja_stat_immune$count:uint = 0;
			var fix_action_frame_count$count:uint = 0;
			var dead_action_frame_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (beaten_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPassiveNinjaTimeInfo.beatenType cannot be set twice.');
					}
					++beaten_type$count;
					this.beatenType = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPassiveNinjaTimeInfo.pos cannot be set twice.');
					}
					++pos$count;
					this.pos = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (ninja_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPassiveNinjaTimeInfo.ninjaId cannot be set twice.');
					}
					++ninja_id$count;
					this.ninjaId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (dodge_skill_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPassiveNinjaTimeInfo.dodgeSkillId cannot be set twice.');
					}
					++dodge_skill_id$count;
					this.dodgeSkillId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (dodge_effect$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPassiveNinjaTimeInfo.dodgeEffect cannot be set twice.');
					}
					++dodge_effect$count;
					this.dodgeEffect = new serverProto.fight.ProtoEffectTimeInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.dodgeEffect);
					break;
				case 6:
					if (dodge_action_frame_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPassiveNinjaTimeInfo.dodgeActionFrameCount cannot be set twice.');
					}
					++dodge_action_frame_count$count;
					this.dodgeActionFrameCount = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (rebound_attack_time_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPassiveNinjaTimeInfo.reboundAttackTimeInfo cannot be set twice.');
					}
					++rebound_attack_time_info$count;
					this.reboundAttackTimeInfo = new serverProto.fight.ProtoAttackerTimeInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.reboundAttackTimeInfo);
					break;
				case 8:
					if (rebound_beaten_frame_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPassiveNinjaTimeInfo.reboundBeatenFrameCount cannot be set twice.');
					}
					++rebound_beaten_frame_count$count;
					this.reboundBeatenFrameCount = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 9:
					if (is_beaten_back$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPassiveNinjaTimeInfo.isBeatenBack cannot be set twice.');
					}
					++is_beaten_back$count;
					this.isBeatenBack = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 10:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_INT32, this.beatenBackFrames);
						break;
					}
					this.beatenBackFrames.push(com.netease.protobuf.ReadUtils.read$TYPE_INT32(input));
					break;
				case 11:
					this.beatenAttribute.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoBeatenAttribute()));
					break;
				case 12:
					if (negative_ninja_stat_immune$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPassiveNinjaTimeInfo.negativeNinjaStatImmune cannot be set twice.');
					}
					++negative_ninja_stat_immune$count;
					this.negativeNinjaStatImmune = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 13:
					if (fix_action_frame_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPassiveNinjaTimeInfo.fixActionFrameCount cannot be set twice.');
					}
					++fix_action_frame_count$count;
					this.fixActionFrameCount = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 14:
					if (dead_action_frame_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPassiveNinjaTimeInfo.deadActionFrameCount cannot be set twice.');
					}
					++dead_action_frame_count$count;
					this.deadActionFrameCount = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
