package serverProto.rolePromote {
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
	public  final class ProtoPromoteAttrInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const OLD_ROLE_PROMOTE_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.old_role_promote_level", "oldRolePromoteLevel", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var old_role_promote_level$field:int;

		private var hasField$0:uint = 0;

		public function clearOldRolePromoteLevel():void {
			hasField$0 &= 0xfffffffe;
			old_role_promote_level$field = new int();
		}

		public function get hasOldRolePromoteLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set oldRolePromoteLevel(value:int):void {
			hasField$0 |= 0x1;
			old_role_promote_level$field = value;
		}

		public function get oldRolePromoteLevel():int {
			return old_role_promote_level$field;
		}

		/**
		 *  @private
		 */
		public static const OLD_ROLE_HP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.old_role_hp", "oldRoleHp", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var old_role_hp$field:int;

		public function clearOldRoleHp():void {
			hasField$0 &= 0xfffffffd;
			old_role_hp$field = new int();
		}

		public function get hasOldRoleHp():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set oldRoleHp(value:int):void {
			hasField$0 |= 0x2;
			old_role_hp$field = value;
		}

		public function get oldRoleHp():int {
			return old_role_hp$field;
		}

		/**
		 *  @private
		 */
		public static const OLD_ROLE_BODY_ATTACK:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.old_role_body_attack", "oldRoleBodyAttack", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var old_role_body_attack$field:int;

		public function clearOldRoleBodyAttack():void {
			hasField$0 &= 0xfffffffb;
			old_role_body_attack$field = new int();
		}

		public function get hasOldRoleBodyAttack():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set oldRoleBodyAttack(value:int):void {
			hasField$0 |= 0x4;
			old_role_body_attack$field = value;
		}

		public function get oldRoleBodyAttack():int {
			return old_role_body_attack$field;
		}

		/**
		 *  @private
		 */
		public static const OLD_ROLE_BODY_DEFENSE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.old_role_body_defense", "oldRoleBodyDefense", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var old_role_body_defense$field:int;

		public function clearOldRoleBodyDefense():void {
			hasField$0 &= 0xfffffff7;
			old_role_body_defense$field = new int();
		}

		public function get hasOldRoleBodyDefense():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set oldRoleBodyDefense(value:int):void {
			hasField$0 |= 0x8;
			old_role_body_defense$field = value;
		}

		public function get oldRoleBodyDefense():int {
			return old_role_body_defense$field;
		}

		/**
		 *  @private
		 */
		public static const OLD_ROLE_NINJA_ATTACK:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.old_role_ninja_attack", "oldRoleNinjaAttack", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var old_role_ninja_attack$field:int;

		public function clearOldRoleNinjaAttack():void {
			hasField$0 &= 0xffffffef;
			old_role_ninja_attack$field = new int();
		}

		public function get hasOldRoleNinjaAttack():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set oldRoleNinjaAttack(value:int):void {
			hasField$0 |= 0x10;
			old_role_ninja_attack$field = value;
		}

		public function get oldRoleNinjaAttack():int {
			return old_role_ninja_attack$field;
		}

		/**
		 *  @private
		 */
		public static const OLD_ROLE_NINJA_DEFENSE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.old_role_ninja_defense", "oldRoleNinjaDefense", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var old_role_ninja_defense$field:int;

		public function clearOldRoleNinjaDefense():void {
			hasField$0 &= 0xffffffdf;
			old_role_ninja_defense$field = new int();
		}

		public function get hasOldRoleNinjaDefense():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set oldRoleNinjaDefense(value:int):void {
			hasField$0 |= 0x20;
			old_role_ninja_defense$field = value;
		}

		public function get oldRoleNinjaDefense():int {
			return old_role_ninja_defense$field;
		}

		/**
		 *  @private
		 */
		public static const OLD_ROLE_NINJA_ALL_ATTR:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.old_role_ninja_all_attr", "oldRoleNinjaAllAttr", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var old_role_ninja_all_attr$field:int;

		public function clearOldRoleNinjaAllAttr():void {
			hasField$0 &= 0xffffffbf;
			old_role_ninja_all_attr$field = new int();
		}

		public function get hasOldRoleNinjaAllAttr():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set oldRoleNinjaAllAttr(value:int):void {
			hasField$0 |= 0x40;
			old_role_ninja_all_attr$field = value;
		}

		public function get oldRoleNinjaAllAttr():int {
			return old_role_ninja_all_attr$field;
		}

		/**
		 *  @private
		 */
		public static const NEW_ROLE_PROMOTE_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.new_role_promote_level", "newRolePromoteLevel", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var new_role_promote_level$field:int;

		public function clearNewRolePromoteLevel():void {
			hasField$0 &= 0xffffff7f;
			new_role_promote_level$field = new int();
		}

		public function get hasNewRolePromoteLevel():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set newRolePromoteLevel(value:int):void {
			hasField$0 |= 0x80;
			new_role_promote_level$field = value;
		}

		public function get newRolePromoteLevel():int {
			return new_role_promote_level$field;
		}

		/**
		 *  @private
		 */
		public static const NEW_ROLE_HP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.new_role_hp", "newRoleHp", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var new_role_hp$field:int;

		public function clearNewRoleHp():void {
			hasField$0 &= 0xfffffeff;
			new_role_hp$field = new int();
		}

		public function get hasNewRoleHp():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set newRoleHp(value:int):void {
			hasField$0 |= 0x100;
			new_role_hp$field = value;
		}

		public function get newRoleHp():int {
			return new_role_hp$field;
		}

		/**
		 *  @private
		 */
		public static const NEW_ROLE_BODY_ATTACK:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.new_role_body_attack", "newRoleBodyAttack", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var new_role_body_attack$field:int;

		public function clearNewRoleBodyAttack():void {
			hasField$0 &= 0xfffffdff;
			new_role_body_attack$field = new int();
		}

		public function get hasNewRoleBodyAttack():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set newRoleBodyAttack(value:int):void {
			hasField$0 |= 0x200;
			new_role_body_attack$field = value;
		}

		public function get newRoleBodyAttack():int {
			return new_role_body_attack$field;
		}

		/**
		 *  @private
		 */
		public static const NEW_ROLE_BODY_DEFENSE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.new_role_body_defense", "newRoleBodyDefense", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		private var new_role_body_defense$field:int;

		public function clearNewRoleBodyDefense():void {
			hasField$0 &= 0xfffffbff;
			new_role_body_defense$field = new int();
		}

		public function get hasNewRoleBodyDefense():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set newRoleBodyDefense(value:int):void {
			hasField$0 |= 0x400;
			new_role_body_defense$field = value;
		}

		public function get newRoleBodyDefense():int {
			return new_role_body_defense$field;
		}

		/**
		 *  @private
		 */
		public static const NEW_ROLE_NINJA_ATTACK:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.new_role_ninja_attack", "newRoleNinjaAttack", (15 << 3) | com.netease.protobuf.WireType.VARINT);

		private var new_role_ninja_attack$field:int;

		public function clearNewRoleNinjaAttack():void {
			hasField$0 &= 0xfffff7ff;
			new_role_ninja_attack$field = new int();
		}

		public function get hasNewRoleNinjaAttack():Boolean {
			return (hasField$0 & 0x800) != 0;
		}

		public function set newRoleNinjaAttack(value:int):void {
			hasField$0 |= 0x800;
			new_role_ninja_attack$field = value;
		}

		public function get newRoleNinjaAttack():int {
			return new_role_ninja_attack$field;
		}

		/**
		 *  @private
		 */
		public static const NEW_ROLE_NINJA_DEFENSE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.new_role_ninja_defense", "newRoleNinjaDefense", (16 << 3) | com.netease.protobuf.WireType.VARINT);

		private var new_role_ninja_defense$field:int;

		public function clearNewRoleNinjaDefense():void {
			hasField$0 &= 0xffffefff;
			new_role_ninja_defense$field = new int();
		}

		public function get hasNewRoleNinjaDefense():Boolean {
			return (hasField$0 & 0x1000) != 0;
		}

		public function set newRoleNinjaDefense(value:int):void {
			hasField$0 |= 0x1000;
			new_role_ninja_defense$field = value;
		}

		public function get newRoleNinjaDefense():int {
			return new_role_ninja_defense$field;
		}

		/**
		 *  @private
		 */
		public static const NEW_ROLE_NINJA_ALL_ATTR:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.new_role_ninja_all_attr", "newRoleNinjaAllAttr", (20 << 3) | com.netease.protobuf.WireType.VARINT);

		private var new_role_ninja_all_attr$field:int;

		public function clearNewRoleNinjaAllAttr():void {
			hasField$0 &= 0xffffdfff;
			new_role_ninja_all_attr$field = new int();
		}

		public function get hasNewRoleNinjaAllAttr():Boolean {
			return (hasField$0 & 0x2000) != 0;
		}

		public function set newRoleNinjaAllAttr(value:int):void {
			hasField$0 |= 0x2000;
			new_role_ninja_all_attr$field = value;
		}

		public function get newRoleNinjaAllAttr():int {
			return new_role_ninja_all_attr$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasOldRolePromoteLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, old_role_promote_level$field);
			}
			if (hasOldRoleHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, old_role_hp$field);
			}
			if (hasOldRoleBodyAttack) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, old_role_body_attack$field);
			}
			if (hasOldRoleBodyDefense) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, old_role_body_defense$field);
			}
			if (hasOldRoleNinjaAttack) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, old_role_ninja_attack$field);
			}
			if (hasOldRoleNinjaDefense) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, old_role_ninja_defense$field);
			}
			if (hasOldRoleNinjaAllAttr) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, old_role_ninja_all_attr$field);
			}
			if (hasNewRolePromoteLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, new_role_promote_level$field);
			}
			if (hasNewRoleHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, new_role_hp$field);
			}
			if (hasNewRoleBodyAttack) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, new_role_body_attack$field);
			}
			if (hasNewRoleBodyDefense) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, new_role_body_defense$field);
			}
			if (hasNewRoleNinjaAttack) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 15);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, new_role_ninja_attack$field);
			}
			if (hasNewRoleNinjaDefense) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 16);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, new_role_ninja_defense$field);
			}
			if (hasNewRoleNinjaAllAttr) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 20);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, new_role_ninja_all_attr$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var old_role_promote_level$count:uint = 0;
			var old_role_hp$count:uint = 0;
			var old_role_body_attack$count:uint = 0;
			var old_role_body_defense$count:uint = 0;
			var old_role_ninja_attack$count:uint = 0;
			var old_role_ninja_defense$count:uint = 0;
			var old_role_ninja_all_attr$count:uint = 0;
			var new_role_promote_level$count:uint = 0;
			var new_role_hp$count:uint = 0;
			var new_role_body_attack$count:uint = 0;
			var new_role_body_defense$count:uint = 0;
			var new_role_ninja_attack$count:uint = 0;
			var new_role_ninja_defense$count:uint = 0;
			var new_role_ninja_all_attr$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 4:
					if (old_role_promote_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPromoteAttrInfo.oldRolePromoteLevel cannot be set twice.');
					}
					++old_role_promote_level$count;
					this.oldRolePromoteLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 5:
					if (old_role_hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPromoteAttrInfo.oldRoleHp cannot be set twice.');
					}
					++old_role_hp$count;
					this.oldRoleHp = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 6:
					if (old_role_body_attack$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPromoteAttrInfo.oldRoleBodyAttack cannot be set twice.');
					}
					++old_role_body_attack$count;
					this.oldRoleBodyAttack = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 7:
					if (old_role_body_defense$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPromoteAttrInfo.oldRoleBodyDefense cannot be set twice.');
					}
					++old_role_body_defense$count;
					this.oldRoleBodyDefense = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 8:
					if (old_role_ninja_attack$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPromoteAttrInfo.oldRoleNinjaAttack cannot be set twice.');
					}
					++old_role_ninja_attack$count;
					this.oldRoleNinjaAttack = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 9:
					if (old_role_ninja_defense$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPromoteAttrInfo.oldRoleNinjaDefense cannot be set twice.');
					}
					++old_role_ninja_defense$count;
					this.oldRoleNinjaDefense = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 10:
					if (old_role_ninja_all_attr$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPromoteAttrInfo.oldRoleNinjaAllAttr cannot be set twice.');
					}
					++old_role_ninja_all_attr$count;
					this.oldRoleNinjaAllAttr = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 11:
					if (new_role_promote_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPromoteAttrInfo.newRolePromoteLevel cannot be set twice.');
					}
					++new_role_promote_level$count;
					this.newRolePromoteLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 12:
					if (new_role_hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPromoteAttrInfo.newRoleHp cannot be set twice.');
					}
					++new_role_hp$count;
					this.newRoleHp = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 13:
					if (new_role_body_attack$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPromoteAttrInfo.newRoleBodyAttack cannot be set twice.');
					}
					++new_role_body_attack$count;
					this.newRoleBodyAttack = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 14:
					if (new_role_body_defense$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPromoteAttrInfo.newRoleBodyDefense cannot be set twice.');
					}
					++new_role_body_defense$count;
					this.newRoleBodyDefense = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 15:
					if (new_role_ninja_attack$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPromoteAttrInfo.newRoleNinjaAttack cannot be set twice.');
					}
					++new_role_ninja_attack$count;
					this.newRoleNinjaAttack = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 16:
					if (new_role_ninja_defense$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPromoteAttrInfo.newRoleNinjaDefense cannot be set twice.');
					}
					++new_role_ninja_defense$count;
					this.newRoleNinjaDefense = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 20:
					if (new_role_ninja_all_attr$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPromoteAttrInfo.newRoleNinjaAllAttr cannot be set twice.');
					}
					++new_role_ninja_all_attr$count;
					this.newRoleNinjaAllAttr = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
