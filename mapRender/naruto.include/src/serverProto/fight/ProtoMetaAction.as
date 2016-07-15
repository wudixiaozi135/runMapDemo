package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.ProtoWithstandAction;
	import serverProto.fight.ProtoAbortNinjaAwakenSkill;
	import serverProto.fight.ProtoStageAction;
	import serverProto.fight.ProtoNormalAction;
	import serverProto.fight.ProtoRebirthAction;
	import serverProto.fight.ProtoTransformAction;
	import serverProto.fight.MetaActionType;
	import serverProto.fight.ProtoBuffAction;
	import serverProto.fight.ProtoScriptAction;
	import serverProto.fight.ProtoBubbleDialogueAction;
	import serverProto.fight.ProtoTeamInfo;
	import serverProto.fight.ProtoEnchantmentAction;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoMetaAction extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoMetaAction.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.fight.MetaActionType);

		public var type:int;

		/**
		 *  @private
		 */
		public static const NORMAL_ACTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoMetaAction.normal_action", "normalAction", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoNormalAction);

		private var normal_action$field:serverProto.fight.ProtoNormalAction;

		public function clearNormalAction():void {
			normal_action$field = null;
		}

		public function get hasNormalAction():Boolean {
			return normal_action$field != null;
		}

		public function set normalAction(value:serverProto.fight.ProtoNormalAction):void {
			normal_action$field = value;
		}

		public function get normalAction():serverProto.fight.ProtoNormalAction {
			return normal_action$field;
		}

		/**
		 *  @private
		 */
		public static const WITHSTAND_ACTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoMetaAction.withstand_action", "withstandAction", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoWithstandAction);

		private var withstand_action$field:serverProto.fight.ProtoWithstandAction;

		public function clearWithstandAction():void {
			withstand_action$field = null;
		}

		public function get hasWithstandAction():Boolean {
			return withstand_action$field != null;
		}

		public function set withstandAction(value:serverProto.fight.ProtoWithstandAction):void {
			withstand_action$field = value;
		}

		public function get withstandAction():serverProto.fight.ProtoWithstandAction {
			return withstand_action$field;
		}

		/**
		 *  @private
		 */
		public static const STAGE_ACTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoMetaAction.stage_action", "stageAction", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoStageAction);

		private var stage_action$field:serverProto.fight.ProtoStageAction;

		public function clearStageAction():void {
			stage_action$field = null;
		}

		public function get hasStageAction():Boolean {
			return stage_action$field != null;
		}

		public function set stageAction(value:serverProto.fight.ProtoStageAction):void {
			stage_action$field = value;
		}

		public function get stageAction():serverProto.fight.ProtoStageAction {
			return stage_action$field;
		}

		/**
		 *  @private
		 */
		public static const BUFF_ACTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoMetaAction.buff_action", "buffAction", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoBuffAction);

		private var buff_action$field:serverProto.fight.ProtoBuffAction;

		public function clearBuffAction():void {
			buff_action$field = null;
		}

		public function get hasBuffAction():Boolean {
			return buff_action$field != null;
		}

		public function set buffAction(value:serverProto.fight.ProtoBuffAction):void {
			buff_action$field = value;
		}

		public function get buffAction():serverProto.fight.ProtoBuffAction {
			return buff_action$field;
		}

		/**
		 *  @private
		 */
		public static const ENCHANTMENT_ACTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoMetaAction.enchantment_action", "enchantmentAction", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoEnchantmentAction);

		private var enchantment_action$field:serverProto.fight.ProtoEnchantmentAction;

		public function clearEnchantmentAction():void {
			enchantment_action$field = null;
		}

		public function get hasEnchantmentAction():Boolean {
			return enchantment_action$field != null;
		}

		public function set enchantmentAction(value:serverProto.fight.ProtoEnchantmentAction):void {
			enchantment_action$field = value;
		}

		public function get enchantmentAction():serverProto.fight.ProtoEnchantmentAction {
			return enchantment_action$field;
		}

		/**
		 *  @private
		 */
		public static const SCRIPT_ACTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoMetaAction.script_action", "scriptAction", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoScriptAction);

		private var script_action$field:serverProto.fight.ProtoScriptAction;

		public function clearScriptAction():void {
			script_action$field = null;
		}

		public function get hasScriptAction():Boolean {
			return script_action$field != null;
		}

		public function set scriptAction(value:serverProto.fight.ProtoScriptAction):void {
			script_action$field = value;
		}

		public function get scriptAction():serverProto.fight.ProtoScriptAction {
			return script_action$field;
		}

		/**
		 *  @private
		 */
		public static const CHANGE_FORMATION:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoMetaAction.change_formation", "changeFormation", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var change_formation$field:uint;

		private var hasField$0:uint = 0;

		public function clearChangeFormation():void {
			hasField$0 &= 0xfffffffe;
			change_formation$field = new uint();
		}

		public function get hasChangeFormation():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set changeFormation(value:uint):void {
			hasField$0 |= 0x1;
			change_formation$field = value;
		}

		public function get changeFormation():uint {
			return change_formation$field;
		}

		/**
		 *  @private
		 */
		public static const DIALOGUE_ACTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoMetaAction.dialogue_action", "dialogueAction", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoBubbleDialogueAction);

		private var dialogue_action$field:serverProto.fight.ProtoBubbleDialogueAction;

		public function clearDialogueAction():void {
			dialogue_action$field = null;
		}

		public function get hasDialogueAction():Boolean {
			return dialogue_action$field != null;
		}

		public function set dialogueAction(value:serverProto.fight.ProtoBubbleDialogueAction):void {
			dialogue_action$field = value;
		}

		public function get dialogueAction():serverProto.fight.ProtoBubbleDialogueAction {
			return dialogue_action$field;
		}

		/**
		 *  @private
		 */
		public static const TEAM_SKILL_STATE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoMetaAction.team_skill_state", "teamSkillState", (10 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoTeamInfo);

		[ArrayElementType("serverProto.fight.ProtoTeamInfo")]
		public var teamSkillState:Array = [];

		/**
		 *  @private
		 */
		public static const ABORT_NINJA_AWAKEN_SKILL:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoMetaAction.abort_ninja_awaken_skill", "abortNinjaAwakenSkill", (11 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoAbortNinjaAwakenSkill);

		[ArrayElementType("serverProto.fight.ProtoAbortNinjaAwakenSkill")]
		public var abortNinjaAwakenSkill:Array = [];

		/**
		 *  @private
		 */
		public static const REBIRTH_ACTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoMetaAction.rebirth_action", "rebirthAction", (12 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoRebirthAction);

		private var rebirth_action$field:serverProto.fight.ProtoRebirthAction;

		public function clearRebirthAction():void {
			rebirth_action$field = null;
		}

		public function get hasRebirthAction():Boolean {
			return rebirth_action$field != null;
		}

		public function set rebirthAction(value:serverProto.fight.ProtoRebirthAction):void {
			rebirth_action$field = value;
		}

		public function get rebirthAction():serverProto.fight.ProtoRebirthAction {
			return rebirth_action$field;
		}

		/**
		 *  @private
		 */
		public static const TRANSFORM_ACTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoMetaAction.transform_action", "transformAction", (13 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoTransformAction);

		private var transform_action$field:serverProto.fight.ProtoTransformAction;

		public function clearTransformAction():void {
			transform_action$field = null;
		}

		public function get hasTransformAction():Boolean {
			return transform_action$field != null;
		}

		public function set transformAction(value:serverProto.fight.ProtoTransformAction):void {
			transform_action$field = value;
		}

		public function get transformAction():serverProto.fight.ProtoTransformAction {
			return transform_action$field;
		}

		/**
		 *  @private
		 */
		public static const IS_OVER:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.fight.ProtoMetaAction.is_over", "isOver", (100 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_over$field:Boolean;

		public function clearIsOver():void {
			hasField$0 &= 0xfffffffd;
			is_over$field = new Boolean();
		}

		public function get hasIsOver():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set isOver(value:Boolean):void {
			hasField$0 |= 0x2;
			is_over$field = value;
		}

		public function get isOver():Boolean {
			return is_over$field;
		}

		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoMetaAction.id", "id", (101 << 3) | com.netease.protobuf.WireType.VARINT);

		private var id$field:int;

		public function clearId():void {
			hasField$0 &= 0xfffffffb;
			id$field = new int();
		}

		public function get hasId():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set id(value:int):void {
			hasField$0 |= 0x4;
			id$field = value;
		}

		public function get id():int {
			return id$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.type);
			if (hasNormalAction) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, normal_action$field);
			}
			if (hasWithstandAction) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, withstand_action$field);
			}
			if (hasStageAction) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, stage_action$field);
			}
			if (hasBuffAction) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, buff_action$field);
			}
			if (hasEnchantmentAction) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, enchantment_action$field);
			}
			if (hasScriptAction) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, script_action$field);
			}
			if (hasChangeFormation) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, change_formation$field);
			}
			if (hasDialogueAction) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, dialogue_action$field);
			}
			for (var teamSkillState$index:uint = 0; teamSkillState$index < this.teamSkillState.length; ++teamSkillState$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.teamSkillState[teamSkillState$index]);
			}
			for (var abortNinjaAwakenSkill$index:uint = 0; abortNinjaAwakenSkill$index < this.abortNinjaAwakenSkill.length; ++abortNinjaAwakenSkill$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.abortNinjaAwakenSkill[abortNinjaAwakenSkill$index]);
			}
			if (hasRebirthAction) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, rebirth_action$field);
			}
			if (hasTransformAction) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, transform_action$field);
			}
			if (hasIsOver) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 100);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, is_over$field);
			}
			if (hasId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 101);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, id$field);
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
			var normal_action$count:uint = 0;
			var withstand_action$count:uint = 0;
			var stage_action$count:uint = 0;
			var buff_action$count:uint = 0;
			var enchantment_action$count:uint = 0;
			var script_action$count:uint = 0;
			var change_formation$count:uint = 0;
			var dialogue_action$count:uint = 0;
			var rebirth_action$count:uint = 0;
			var transform_action$count:uint = 0;
			var is_over$count:uint = 0;
			var id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMetaAction.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (normal_action$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMetaAction.normalAction cannot be set twice.');
					}
					++normal_action$count;
					this.normalAction = new serverProto.fight.ProtoNormalAction();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.normalAction);
					break;
				case 3:
					if (withstand_action$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMetaAction.withstandAction cannot be set twice.');
					}
					++withstand_action$count;
					this.withstandAction = new serverProto.fight.ProtoWithstandAction();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.withstandAction);
					break;
				case 4:
					if (stage_action$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMetaAction.stageAction cannot be set twice.');
					}
					++stage_action$count;
					this.stageAction = new serverProto.fight.ProtoStageAction();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.stageAction);
					break;
				case 5:
					if (buff_action$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMetaAction.buffAction cannot be set twice.');
					}
					++buff_action$count;
					this.buffAction = new serverProto.fight.ProtoBuffAction();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.buffAction);
					break;
				case 6:
					if (enchantment_action$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMetaAction.enchantmentAction cannot be set twice.');
					}
					++enchantment_action$count;
					this.enchantmentAction = new serverProto.fight.ProtoEnchantmentAction();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.enchantmentAction);
					break;
				case 7:
					if (script_action$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMetaAction.scriptAction cannot be set twice.');
					}
					++script_action$count;
					this.scriptAction = new serverProto.fight.ProtoScriptAction();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.scriptAction);
					break;
				case 8:
					if (change_formation$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMetaAction.changeFormation cannot be set twice.');
					}
					++change_formation$count;
					this.changeFormation = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (dialogue_action$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMetaAction.dialogueAction cannot be set twice.');
					}
					++dialogue_action$count;
					this.dialogueAction = new serverProto.fight.ProtoBubbleDialogueAction();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.dialogueAction);
					break;
				case 10:
					this.teamSkillState.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoTeamInfo()));
					break;
				case 11:
					this.abortNinjaAwakenSkill.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoAbortNinjaAwakenSkill()));
					break;
				case 12:
					if (rebirth_action$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMetaAction.rebirthAction cannot be set twice.');
					}
					++rebirth_action$count;
					this.rebirthAction = new serverProto.fight.ProtoRebirthAction();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.rebirthAction);
					break;
				case 13:
					if (transform_action$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMetaAction.transformAction cannot be set twice.');
					}
					++transform_action$count;
					this.transformAction = new serverProto.fight.ProtoTransformAction();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.transformAction);
					break;
				case 100:
					if (is_over$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMetaAction.isOver cannot be set twice.');
					}
					++is_over$count;
					this.isOver = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 101:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMetaAction.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
