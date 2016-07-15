package serverProto.talent {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.talent.ProtoGetTalentSkill;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetTalentGroup extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SKILLS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.talent.ProtoGetTalentGroup.skills", "skills", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.talent.ProtoGetTalentSkill);

		[ArrayElementType("serverProto.talent.ProtoGetTalentSkill")]
		public var skills:Array = [];

		/**
		 *  @private
		 */
		public static const UNLOCK_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.talent.ProtoGetTalentGroup.unlock_level", "unlockLevel", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var unlock_level$field:uint;

		private var hasField$0:uint = 0;

		public function clearUnlockLevel():void {
			hasField$0 &= 0xfffffffe;
			unlock_level$field = new uint();
		}

		public function get hasUnlockLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set unlockLevel(value:uint):void {
			hasField$0 |= 0x1;
			unlock_level$field = value;
		}

		public function get unlockLevel():uint {
			return unlock_level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var skills$index:uint = 0; skills$index < this.skills.length; ++skills$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.skills[skills$index]);
			}
			if (hasUnlockLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
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
			var unlock_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.skills.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.talent.ProtoGetTalentSkill()));
					break;
				case 2:
					if (unlock_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetTalentGroup.unlockLevel cannot be set twice.');
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
