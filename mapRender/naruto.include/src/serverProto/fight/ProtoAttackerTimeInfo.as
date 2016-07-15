package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.ProtoEffectTimeInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoAttackerTimeInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ATTACKER_POS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoAttackerTimeInfo.attacker_pos", "attackerPos", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var attacker_pos$field:int;

		private var hasField$0:uint = 0;

		public function clearAttackerPos():void {
			hasField$0 &= 0xfffffffe;
			attacker_pos$field = new int();
		}

		public function get hasAttackerPos():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set attackerPos(value:int):void {
			hasField$0 |= 0x1;
			attacker_pos$field = value;
		}

		public function get attackerPos():int {
			return attacker_pos$field;
		}

		/**
		 *  @private
		 */
		public static const ATTACKER_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoAttackerTimeInfo.attacker_id", "attackerId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var attacker_id$field:int;

		public function clearAttackerId():void {
			hasField$0 &= 0xfffffffd;
			attacker_id$field = new int();
		}

		public function get hasAttackerId():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set attackerId(value:int):void {
			hasField$0 |= 0x2;
			attacker_id$field = value;
		}

		public function get attackerId():int {
			return attacker_id$field;
		}

		/**
		 *  @private
		 */
		public static const SKILL_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoAttackerTimeInfo.skill_id", "skillId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var skill_id$field:int;

		public function clearSkillId():void {
			hasField$0 &= 0xfffffffb;
			skill_id$field = new int();
		}

		public function get hasSkillId():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set skillId(value:int):void {
			hasField$0 |= 0x4;
			skill_id$field = value;
		}

		public function get skillId():int {
			return skill_id$field;
		}

		/**
		 *  @private
		 */
		public static const SQUAT_FRAME_COUNT:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.fight.ProtoAttackerTimeInfo.squat_frame_count", "squatFrameCount", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("int")]
		public var squatFrameCount:Array = [];

		/**
		 *  @private
		 */
		public static const STAND_FRAME_COUNT:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.fight.ProtoAttackerTimeInfo.stand_frame_count", "standFrameCount", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("int")]
		public var standFrameCount:Array = [];

		/**
		 *  @private
		 */
		public static const ATTACK_FRAME_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoAttackerTimeInfo.attack_frame_count", "attackFrameCount", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var attack_frame_count$field:int;

		public function clearAttackFrameCount():void {
			hasField$0 &= 0xfffffff7;
			attack_frame_count$field = new int();
		}

		public function get hasAttackFrameCount():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set attackFrameCount(value:int):void {
			hasField$0 |= 0x8;
			attack_frame_count$field = value;
		}

		public function get attackFrameCount():int {
			return attack_frame_count$field;
		}

		/**
		 *  @private
		 */
		public static const BEATEN_POS:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.fight.ProtoAttackerTimeInfo.beaten_pos", "beatenPos", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("int")]
		public var beatenPos:Array = [];

		/**
		 *  @private
		 */
		public static const SKILL_EFFECT:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoAttackerTimeInfo.skill_effect", "skillEffect", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoEffectTimeInfo);

		[ArrayElementType("serverProto.fight.ProtoEffectTimeInfo")]
		public var skillEffect:Array = [];

		/**
		 *  @private
		 */
		public static const FULL_SCREEN_EFFECT:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoAttackerTimeInfo.full_screen_effect", "fullScreenEffect", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoEffectTimeInfo);

		[ArrayElementType("serverProto.fight.ProtoEffectTimeInfo")]
		public var fullScreenEffect:Array = [];

		/**
		 *  @private
		 */
		public static const ENTER_STAGE_EFFECT_FRAME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoAttackerTimeInfo.enter_stage_effect_frame", "enterStageEffectFrame", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var enter_stage_effect_frame$field:int;

		public function clearEnterStageEffectFrame():void {
			hasField$0 &= 0xffffffef;
			enter_stage_effect_frame$field = new int();
		}

		public function get hasEnterStageEffectFrame():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set enterStageEffectFrame(value:int):void {
			hasField$0 |= 0x10;
			enter_stage_effect_frame$field = value;
		}

		public function get enterStageEffectFrame():int {
			return enter_stage_effect_frame$field;
		}

		/**
		 *  @private
		 */
		public static const HIT_POINT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoAttackerTimeInfo.hit_point", "hitPoint", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hit_point$field:int;

		public function clearHitPoint():void {
			hasField$0 &= 0xffffffdf;
			hit_point$field = new int();
		}

		public function get hasHitPoint():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set hitPoint(value:int):void {
			hasField$0 |= 0x20;
			hit_point$field = value;
		}

		public function get hitPoint():int {
			return hit_point$field;
		}

		/**
		 *  @private
		 */
		public static const DEAD_ACTION_FRAME_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoAttackerTimeInfo.dead_action_frame_count", "deadActionFrameCount", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dead_action_frame_count$field:int;

		public function clearDeadActionFrameCount():void {
			hasField$0 &= 0xffffffbf;
			dead_action_frame_count$field = new int();
		}

		public function get hasDeadActionFrameCount():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set deadActionFrameCount(value:int):void {
			hasField$0 |= 0x40;
			dead_action_frame_count$field = value;
		}

		public function get deadActionFrameCount():int {
			return dead_action_frame_count$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasAttackerPos) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, attacker_pos$field);
			}
			if (hasAttackerId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, attacker_id$field);
			}
			if (hasSkillId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, skill_id$field);
			}
			for (var squatFrameCount$index:uint = 0; squatFrameCount$index < this.squatFrameCount.length; ++squatFrameCount$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.squatFrameCount[squatFrameCount$index]);
			}
			for (var standFrameCount$index:uint = 0; standFrameCount$index < this.standFrameCount.length; ++standFrameCount$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.standFrameCount[standFrameCount$index]);
			}
			if (hasAttackFrameCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, attack_frame_count$field);
			}
			for (var beatenPos$index:uint = 0; beatenPos$index < this.beatenPos.length; ++beatenPos$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.beatenPos[beatenPos$index]);
			}
			for (var skillEffect$index:uint = 0; skillEffect$index < this.skillEffect.length; ++skillEffect$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.skillEffect[skillEffect$index]);
			}
			for (var fullScreenEffect$index:uint = 0; fullScreenEffect$index < this.fullScreenEffect.length; ++fullScreenEffect$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.fullScreenEffect[fullScreenEffect$index]);
			}
			if (hasEnterStageEffectFrame) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, enter_stage_effect_frame$field);
			}
			if (hasHitPoint) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, hit_point$field);
			}
			if (hasDeadActionFrameCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
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
			var attacker_pos$count:uint = 0;
			var attacker_id$count:uint = 0;
			var skill_id$count:uint = 0;
			var attack_frame_count$count:uint = 0;
			var enter_stage_effect_frame$count:uint = 0;
			var hit_point$count:uint = 0;
			var dead_action_frame_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (attacker_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAttackerTimeInfo.attackerPos cannot be set twice.');
					}
					++attacker_pos$count;
					this.attackerPos = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (attacker_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAttackerTimeInfo.attackerId cannot be set twice.');
					}
					++attacker_id$count;
					this.attackerId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (skill_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAttackerTimeInfo.skillId cannot be set twice.');
					}
					++skill_id$count;
					this.skillId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_INT32, this.squatFrameCount);
						break;
					}
					this.squatFrameCount.push(com.netease.protobuf.ReadUtils.read$TYPE_INT32(input));
					break;
				case 5:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_INT32, this.standFrameCount);
						break;
					}
					this.standFrameCount.push(com.netease.protobuf.ReadUtils.read$TYPE_INT32(input));
					break;
				case 6:
					if (attack_frame_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAttackerTimeInfo.attackFrameCount cannot be set twice.');
					}
					++attack_frame_count$count;
					this.attackFrameCount = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_INT32, this.beatenPos);
						break;
					}
					this.beatenPos.push(com.netease.protobuf.ReadUtils.read$TYPE_INT32(input));
					break;
				case 8:
					this.skillEffect.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoEffectTimeInfo()));
					break;
				case 9:
					this.fullScreenEffect.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoEffectTimeInfo()));
					break;
				case 10:
					if (enter_stage_effect_frame$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAttackerTimeInfo.enterStageEffectFrame cannot be set twice.');
					}
					++enter_stage_effect_frame$count;
					this.enterStageEffectFrame = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 11:
					if (hit_point$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAttackerTimeInfo.hitPoint cannot be set twice.');
					}
					++hit_point$count;
					this.hitPoint = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 12:
					if (dead_action_frame_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAttackerTimeInfo.deadActionFrameCount cannot be set twice.');
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
