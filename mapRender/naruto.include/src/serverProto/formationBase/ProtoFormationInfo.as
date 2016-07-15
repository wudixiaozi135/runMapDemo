package serverProto.formationBase {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.formationBase.ProtoNinjaArrange;
	import serverProto.formationBase.ProtoNinjaShortKey;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoFormationInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formationBase.ProtoFormationInfo.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var id:uint;

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formationBase.ProtoFormationInfo.level", "level", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var level:uint;

		/**
		 *  @private
		 */
		public static const CURRENT_FLAG:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.formationBase.ProtoFormationInfo.current_flag", "currentFlag", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_flag$field:Boolean;

		private var hasField$0:uint = 0;

		public function clearCurrentFlag():void {
			hasField$0 &= 0xfffffffe;
			current_flag$field = new Boolean();
		}

		public function get hasCurrentFlag():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set currentFlag(value:Boolean):void {
			hasField$0 |= 0x1;
			current_flag$field = value;
		}

		public function get currentFlag():Boolean {
			return current_flag$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.formationBase.ProtoFormationInfo.ninja", "ninja", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.formationBase.ProtoNinjaArrange);

		[ArrayElementType("serverProto.formationBase.ProtoNinjaArrange")]
		public var ninja:Array = [];

		/**
		 *  @private
		 */
		public static const NINJA_SHORT_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formationBase.ProtoFormationInfo.ninja_short_key", "ninjaShortKey", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.formationBase.ProtoNinjaShortKey);

		private var ninja_short_key$field:serverProto.formationBase.ProtoNinjaShortKey;

		public function clearNinjaShortKey():void {
			ninja_short_key$field = null;
		}

		public function get hasNinjaShortKey():Boolean {
			return ninja_short_key$field != null;
		}

		public function set ninjaShortKey(value:serverProto.formationBase.ProtoNinjaShortKey):void {
			ninja_short_key$field = value;
		}

		public function get ninjaShortKey():serverProto.formationBase.ProtoNinjaShortKey {
			return ninja_short_key$field;
		}

		/**
		 *  @private
		 */
		public static const LEADERSHIP_CONSUMED:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.formationBase.ProtoFormationInfo.leadership_consumed", "leadershipConsumed", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var leadership_consumed$field:int;

		public function clearLeadershipConsumed():void {
			hasField$0 &= 0xfffffffd;
			leadership_consumed$field = new int();
		}

		public function get hasLeadershipConsumed():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set leadershipConsumed(value:int):void {
			hasField$0 |= 0x2;
			leadership_consumed$field = value;
		}

		public function get leadershipConsumed():int {
			return leadership_consumed$field;
		}

		/**
		 *  @private
		 */
		public static const LEADERSHIP_ULIMIT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.formationBase.ProtoFormationInfo.leadership_ulimit", "leadershipUlimit", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var leadership_ulimit$field:int;

		public function clearLeadershipUlimit():void {
			hasField$0 &= 0xfffffffb;
			leadership_ulimit$field = new int();
		}

		public function get hasLeadershipUlimit():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set leadershipUlimit(value:int):void {
			hasField$0 |= 0x4;
			leadership_ulimit$field = value;
		}

		public function get leadershipUlimit():int {
			return leadership_ulimit$field;
		}

		/**
		 *  @private
		 */
		public static const FORMATION_NINJA_ULIMIT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.formationBase.ProtoFormationInfo.formation_ninja_ulimit", "formationNinjaUlimit", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var formation_ninja_ulimit$field:int;

		public function clearFormationNinjaUlimit():void {
			hasField$0 &= 0xfffffff7;
			formation_ninja_ulimit$field = new int();
		}

		public function get hasFormationNinjaUlimit():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set formationNinjaUlimit(value:int):void {
			hasField$0 |= 0x8;
			formation_ninja_ulimit$field = value;
		}

		public function get formationNinjaUlimit():int {
			return formation_ninja_ulimit$field;
		}

		/**
		 *  @private
		 */
		public static const COMBAT_POWER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formationBase.ProtoFormationInfo.combat_power", "combatPower", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var combat_power$field:int;

		public function clearCombatPower():void {
			hasField$0 &= 0xffffffef;
			combat_power$field = new int();
		}

		public function get hasCombatPower():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set combatPower(value:int):void {
			hasField$0 |= 0x10;
			combat_power$field = value;
		}

		public function get combatPower():int {
			return combat_power$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.id);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.level);
			if (hasCurrentFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, current_flag$field);
			}
			for (var ninja$index:uint = 0; ninja$index < this.ninja.length; ++ninja$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninja[ninja$index]);
			}
			if (hasNinjaShortKey) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_short_key$field);
			}
			if (hasLeadershipConsumed) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, leadership_consumed$field);
			}
			if (hasLeadershipUlimit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, leadership_ulimit$field);
			}
			if (hasFormationNinjaUlimit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, formation_ninja_ulimit$field);
			}
			if (hasCombatPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, combat_power$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var id$count:uint = 0;
			var level$count:uint = 0;
			var current_flag$count:uint = 0;
			var ninja_short_key$count:uint = 0;
			var leadership_consumed$count:uint = 0;
			var leadership_ulimit$count:uint = 0;
			var formation_ninja_ulimit$count:uint = 0;
			var combat_power$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFormationInfo.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFormationInfo.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (current_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFormationInfo.currentFlag cannot be set twice.');
					}
					++current_flag$count;
					this.currentFlag = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 4:
					this.ninja.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.formationBase.ProtoNinjaArrange()));
					break;
				case 5:
					if (ninja_short_key$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFormationInfo.ninjaShortKey cannot be set twice.');
					}
					++ninja_short_key$count;
					this.ninjaShortKey = new serverProto.formationBase.ProtoNinjaShortKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaShortKey);
					break;
				case 6:
					if (leadership_consumed$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFormationInfo.leadershipConsumed cannot be set twice.');
					}
					++leadership_consumed$count;
					this.leadershipConsumed = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (leadership_ulimit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFormationInfo.leadershipUlimit cannot be set twice.');
					}
					++leadership_ulimit$count;
					this.leadershipUlimit = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (formation_ninja_ulimit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFormationInfo.formationNinjaUlimit cannot be set twice.');
					}
					++formation_ninja_ulimit$count;
					this.formationNinjaUlimit = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 9:
					if (combat_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFormationInfo.combatPower cannot be set twice.');
					}
					++combat_power$count;
					this.combatPower = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
