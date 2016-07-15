package serverProto.talent {
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
	public  final class ProtoTalentSkillInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SKILL_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.talent.ProtoTalentSkillInfo.skill_id", "skillId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var skillId:uint;

		/**
		 *  @private
		 */
		public static const IS_LIGHT:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.talent.ProtoTalentSkillInfo.is_light", "isLight", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_light$field:Boolean;

		private var hasField$0:uint = 0;

		public function clearIsLight():void {
			hasField$0 &= 0xfffffffe;
			is_light$field = new Boolean();
		}

		public function get hasIsLight():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set isLight(value:Boolean):void {
			hasField$0 |= 0x1;
			is_light$field = value;
		}

		public function get isLight():Boolean {
			return is_light$field;
		}

		/**
		 *  @private
		 */
		public static const UNLOCK_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.talent.ProtoTalentSkillInfo.unlock_level", "unlockLevel", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var unlock_level$field:uint;

		public function clearUnlockLevel():void {
			hasField$0 &= 0xfffffffd;
			unlock_level$field = new uint();
		}

		public function get hasUnlockLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set unlockLevel(value:uint):void {
			hasField$0 |= 0x2;
			unlock_level$field = value;
		}

		public function get unlockLevel():uint {
			return unlock_level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.skillId);
			if (hasIsLight) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, is_light$field);
			}
			if (hasUnlockLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, unlock_level$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var skill_id$count:uint = 0;
			var is_light$count:uint = 0;
			var unlock_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (skill_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTalentSkillInfo.skillId cannot be set twice.');
					}
					++skill_id$count;
					this.skillId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (is_light$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTalentSkillInfo.isLight cannot be set twice.');
					}
					++is_light$count;
					this.isLight = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 3:
					if (unlock_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTalentSkillInfo.unlockLevel cannot be set twice.');
					}
					++unlock_level$count;
					this.unlockLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
