package serverProto.fight {
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
	public  final class ProtoFightMemberBenefit extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_POS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightMemberBenefit.ninja_pos", "ninjaPos", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaPos:uint;

		/**
		 *  @private
		 */
		public static const EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightMemberBenefit.exp", "exp", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var exp:uint;

		/**
		 *  @private
		 */
		public static const IS_LEVEL_UP:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.fight.ProtoFightMemberBenefit.is_level_up", "isLevelUp", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_level_up$field:Boolean;

		private var hasField$0:uint = 0;

		public function clearIsLevelUp():void {
			hasField$0 &= 0xfffffffe;
			is_level_up$field = new Boolean();
		}

		public function get hasIsLevelUp():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set isLevelUp(value:Boolean):void {
			hasField$0 |= 0x1;
			is_level_up$field = value;
		}

		public function get isLevelUp():Boolean {
			return is_level_up$field;
		}

		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightMemberBenefit.id", "id", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var id$field:uint;

		public function clearId():void {
			hasField$0 &= 0xfffffffd;
			id$field = new uint();
		}

		public function get hasId():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set id(value:uint):void {
			hasField$0 |= 0x2;
			id$field = value;
		}

		public function get id():uint {
			return id$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightMemberBenefit.level", "level", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:uint;

		public function clearLevel():void {
			hasField$0 &= 0xfffffffb;
			level$field = new uint();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set level(value:uint):void {
			hasField$0 |= 0x4;
			level$field = value;
		}

		public function get level():uint {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const SKILL_LIST:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightMemberBenefit.skill_list", "skillList", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var skill_list$field:uint;

		public function clearSkillList():void {
			hasField$0 &= 0xfffffff7;
			skill_list$field = new uint();
		}

		public function get hasSkillList():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set skillList(value:uint):void {
			hasField$0 |= 0x8;
			skill_list$field = value;
		}

		public function get skillList():uint {
			return skill_list$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ninjaPos);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.exp);
			if (hasIsLevelUp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, is_level_up$field);
			}
			if (hasId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, id$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, level$field);
			}
			if (hasSkillList) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, skill_list$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ninja_pos$count:uint = 0;
			var exp$count:uint = 0;
			var is_level_up$count:uint = 0;
			var id$count:uint = 0;
			var level$count:uint = 0;
			var skill_list$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ninja_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightMemberBenefit.ninjaPos cannot be set twice.');
					}
					++ninja_pos$count;
					this.ninjaPos = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightMemberBenefit.exp cannot be set twice.');
					}
					++exp$count;
					this.exp = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (is_level_up$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightMemberBenefit.isLevelUp cannot be set twice.');
					}
					++is_level_up$count;
					this.isLevelUp = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 4:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightMemberBenefit.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightMemberBenefit.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (skill_list$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightMemberBenefit.skillList cannot be set twice.');
					}
					++skill_list$count;
					this.skillList = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
