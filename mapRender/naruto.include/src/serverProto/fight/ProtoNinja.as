package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.StageNinjaActionType;
	import serverProto.fight.ProtoSkillState;
	import serverProto.fight.ProtoBuffInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinja extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const POS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoNinja.pos", "pos", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var pos:uint;

		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoNinja.id", "id", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var id$field:uint;

		private var hasField$0:uint = 0;

		public function clearId():void {
			hasField$0 &= 0xfffffffe;
			id$field = new uint();
		}

		public function get hasId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set id(value:uint):void {
			hasField$0 |= 0x1;
			id$field = value;
		}

		public function get id():uint {
			return id$field;
		}

		/**
		 *  @private
		 */
		public static const HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoNinja.hp", "hp", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hp$field:int;

		public function clearHp():void {
			hasField$0 &= 0xfffffffd;
			hp$field = new int();
		}

		public function get hasHp():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set hp(value:int):void {
			hasField$0 |= 0x2;
			hp$field = value;
		}

		public function get hp():int {
			return hp$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_HP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoNinja.max_hp", "maxHp", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_hp$field:uint;

		public function clearMaxHp():void {
			hasField$0 &= 0xfffffffb;
			max_hp$field = new uint();
		}

		public function get hasMaxHp():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set maxHp(value:uint):void {
			hasField$0 |= 0x4;
			max_hp$field = value;
		}

		public function get maxHp():uint {
			return max_hp$field;
		}

		/**
		 *  @private
		 */
		public static const SKILL_LIST:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoNinja.skill_list", "skillList", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var skillList:Array = [];

		/**
		 *  @private
		 */
		public static const IS_CALL:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.fight.ProtoNinja.is_call", "isCall", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_call$field:Boolean;

		public function clearIsCall():void {
			hasField$0 &= 0xfffffff7;
			is_call$field = new Boolean();
		}

		public function get hasIsCall():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set isCall(value:Boolean):void {
			hasField$0 |= 0x8;
			is_call$field = value;
		}

		public function get isCall():Boolean {
			return is_call$field;
		}

		/**
		 *  @private
		 */
		public static const BUFFS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoNinja.buffs", "buffs", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoBuffInfo);

		[ArrayElementType("serverProto.fight.ProtoBuffInfo")]
		public var buffs:Array = [];

		/**
		 *  @private
		 */
		public static const STAGE_NINJA_ACTION_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoNinja.stage_ninja_action_type", "stageNinjaActionType", (8 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.fight.StageNinjaActionType);

		private var stage_ninja_action_type$field:int;

		public function clearStageNinjaActionType():void {
			hasField$0 &= 0xffffffef;
			stage_ninja_action_type$field = new int();
		}

		public function get hasStageNinjaActionType():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set stageNinjaActionType(value:int):void {
			hasField$0 |= 0x10;
			stage_ninja_action_type$field = value;
		}

		public function get stageNinjaActionType():int {
			return stage_ninja_action_type$field;
		}

		/**
		 *  @private
		 */
		public static const SKILL_STATE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoNinja.skill_state", "skillState", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoSkillState);

		[ArrayElementType("serverProto.fight.ProtoSkillState")]
		public var skillState:Array = [];

		/**
		 *  @private
		 */
		public static const IS_DISPLAY_NAME:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.fight.ProtoNinja.is_display_name", "isDisplayName", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_display_name$field:Boolean;

		public function clearIsDisplayName():void {
			hasField$0 &= 0xffffffdf;
			is_display_name$field = new Boolean();
		}

		public function get hasIsDisplayName():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set isDisplayName(value:Boolean):void {
			hasField$0 |= 0x20;
			is_display_name$field = value;
		}

		public function get isDisplayName():Boolean {
			return is_display_name$field;
		}

		/**
		 *  @private
		 */
		public static const SHORT_KEY_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoNinja.short_key_index", "shortKeyIndex", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var short_key_index$field:uint;

		public function clearShortKeyIndex():void {
			hasField$0 &= 0xffffffbf;
			short_key_index$field = new uint();
		}

		public function get hasShortKeyIndex():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set shortKeyIndex(value:uint):void {
			hasField$0 |= 0x40;
			short_key_index$field = value;
		}

		public function get shortKeyIndex():uint {
			return short_key_index$field;
		}

		/**
		 *  @private
		 */
		public static const POS_QUEUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoNinja.pos_queue", "posQueue", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var pos_queue$field:int;

		public function clearPosQueue():void {
			hasField$0 &= 0xffffff7f;
			pos_queue$field = new int();
		}

		public function get hasPosQueue():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set posQueue(value:int):void {
			hasField$0 |= 0x80;
			pos_queue$field = value;
		}

		public function get posQueue():int {
			return pos_queue$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoNinja.level", "level", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:int;

		public function clearLevel():void {
			hasField$0 &= 0xfffffeff;
			level$field = new int();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set level(value:int):void {
			hasField$0 |= 0x100;
			level$field = value;
		}

		public function get level():int {
			return level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.pos);
			if (hasId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, id$field);
			}
			if (hasHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, hp$field);
			}
			if (hasMaxHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, max_hp$field);
			}
			for (var skillList$index:uint = 0; skillList$index < this.skillList.length; ++skillList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.skillList[skillList$index]);
			}
			if (hasIsCall) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, is_call$field);
			}
			for (var buffs$index:uint = 0; buffs$index < this.buffs.length; ++buffs$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.buffs[buffs$index]);
			}
			if (hasStageNinjaActionType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, stage_ninja_action_type$field);
			}
			for (var skillState$index:uint = 0; skillState$index < this.skillState.length; ++skillState$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.skillState[skillState$index]);
			}
			if (hasIsDisplayName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, is_display_name$field);
			}
			if (hasShortKeyIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, short_key_index$field);
			}
			if (hasPosQueue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, pos_queue$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, level$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var pos$count:uint = 0;
			var id$count:uint = 0;
			var hp$count:uint = 0;
			var max_hp$count:uint = 0;
			var is_call$count:uint = 0;
			var stage_ninja_action_type$count:uint = 0;
			var is_display_name$count:uint = 0;
			var short_key_index$count:uint = 0;
			var pos_queue$count:uint = 0;
			var level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinja.pos cannot be set twice.');
					}
					++pos$count;
					this.pos = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinja.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinja.hp cannot be set twice.');
					}
					++hp$count;
					this.hp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (max_hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinja.maxHp cannot be set twice.');
					}
					++max_hp$count;
					this.maxHp = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.skillList);
						break;
					}
					this.skillList.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				case 6:
					if (is_call$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinja.isCall cannot be set twice.');
					}
					++is_call$count;
					this.isCall = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 7:
					this.buffs.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoBuffInfo()));
					break;
				case 8:
					if (stage_ninja_action_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinja.stageNinjaActionType cannot be set twice.');
					}
					++stage_ninja_action_type$count;
					this.stageNinjaActionType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 9:
					this.skillState.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoSkillState()));
					break;
				case 10:
					if (is_display_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinja.isDisplayName cannot be set twice.');
					}
					++is_display_name$count;
					this.isDisplayName = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 11:
					if (short_key_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinja.shortKeyIndex cannot be set twice.');
					}
					++short_key_index$count;
					this.shortKeyIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 12:
					if (pos_queue$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinja.posQueue cannot be set twice.');
					}
					++pos_queue$count;
					this.posQueue = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 13:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinja.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
