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
	import serverProto.fight.ProtoNinja;
	import serverProto.fight.ProtoNinjaHpChange;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoRebirthAction extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const REBIRTH_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoRebirthAction.rebirth_type", "rebirthType", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var rebirthType:uint;

		/**
		 *  @private
		 */
		public static const REBIRTH_SKILL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoRebirthAction.rebirth_skill", "rebirthSkill", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var rebirthSkill:uint;

		/**
		 *  @private
		 */
		public static const REBIRTH_NINJA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoRebirthAction.rebirth_ninja", "rebirthNinja", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoNinja);

		private var rebirth_ninja$field:serverProto.fight.ProtoNinja;

		public function clearRebirthNinja():void {
			rebirth_ninja$field = null;
		}

		public function get hasRebirthNinja():Boolean {
			return rebirth_ninja$field != null;
		}

		public function set rebirthNinja(value:serverProto.fight.ProtoNinja):void {
			rebirth_ninja$field = value;
		}

		public function get rebirthNinja():serverProto.fight.ProtoNinja {
			return rebirth_ninja$field;
		}

		/**
		 *  @private
		 */
		public static const KILL_NINJA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoRebirthAction.kill_ninja", "killNinja", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoNinja);

		private var kill_ninja$field:serverProto.fight.ProtoNinja;

		public function clearKillNinja():void {
			kill_ninja$field = null;
		}

		public function get hasKillNinja():Boolean {
			return kill_ninja$field != null;
		}

		public function set killNinja(value:serverProto.fight.ProtoNinja):void {
			kill_ninja$field = value;
		}

		public function get killNinja():serverProto.fight.ProtoNinja {
			return kill_ninja$field;
		}

		/**
		 *  @private
		 */
		public static const ACTIVE_NINJA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoRebirthAction.active_ninja", "activeNinja", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoActiveNinjaInfo);

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
		public static const NINJA_HP_CHANGE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoRebirthAction.ninja_hp_change", "ninjaHpChange", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoNinjaHpChange);

		[ArrayElementType("serverProto.fight.ProtoNinjaHpChange")]
		public var ninjaHpChange:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.rebirthType);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.rebirthSkill);
			if (hasRebirthNinja) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, rebirth_ninja$field);
			}
			if (hasKillNinja) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, kill_ninja$field);
			}
			if (hasActiveNinja) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, active_ninja$field);
			}
			for (var ninjaHpChange$index:uint = 0; ninjaHpChange$index < this.ninjaHpChange.length; ++ninjaHpChange$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaHpChange[ninjaHpChange$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var rebirth_type$count:uint = 0;
			var rebirth_skill$count:uint = 0;
			var rebirth_ninja$count:uint = 0;
			var kill_ninja$count:uint = 0;
			var active_ninja$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (rebirth_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRebirthAction.rebirthType cannot be set twice.');
					}
					++rebirth_type$count;
					this.rebirthType = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (rebirth_skill$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRebirthAction.rebirthSkill cannot be set twice.');
					}
					++rebirth_skill$count;
					this.rebirthSkill = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (rebirth_ninja$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRebirthAction.rebirthNinja cannot be set twice.');
					}
					++rebirth_ninja$count;
					this.rebirthNinja = new serverProto.fight.ProtoNinja();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.rebirthNinja);
					break;
				case 4:
					if (kill_ninja$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRebirthAction.killNinja cannot be set twice.');
					}
					++kill_ninja$count;
					this.killNinja = new serverProto.fight.ProtoNinja();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.killNinja);
					break;
				case 5:
					if (active_ninja$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRebirthAction.activeNinja cannot be set twice.');
					}
					++active_ninja$count;
					this.activeNinja = new serverProto.fight.ProtoActiveNinjaInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.activeNinja);
					break;
				case 6:
					this.ninjaHpChange.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoNinjaHpChange()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
