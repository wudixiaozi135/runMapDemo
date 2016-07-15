package serverProto.skill {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.skill.ProtoSkillInPosition;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaSkillInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_SEQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.skill.ProtoNinjaSkillInfo.ninja_seq", "ninjaSeq", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaSeq:uint;

		/**
		 *  @private
		 */
		public static const NINJA_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.skill.ProtoNinjaSkillInfo.ninja_id", "ninjaId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaId:uint;

		/**
		 *  @private
		 */
		public static const CURRENT_LOCATION:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.skill.ProtoNinjaSkillInfo.current_location", "currentLocation", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_location$field:int;

		private var hasField$0:uint = 0;

		public function clearCurrentLocation():void {
			hasField$0 &= 0xfffffffe;
			current_location$field = new int();
		}

		public function get hasCurrentLocation():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set currentLocation(value:int):void {
			hasField$0 |= 0x1;
			current_location$field = value;
		}

		public function get currentLocation():int {
			return current_location$field;
		}

		/**
		 *  @private
		 */
		public static const SKILL_IN_POSITION:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.skill.ProtoNinjaSkillInfo.skill_in_position", "skillInPosition", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.skill.ProtoSkillInPosition);

		[ArrayElementType("serverProto.skill.ProtoSkillInPosition")]
		public var skillInPosition:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ninjaSeq);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ninjaId);
			if (hasCurrentLocation) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, current_location$field);
			}
			for (var skillInPosition$index:uint = 0; skillInPosition$index < this.skillInPosition.length; ++skillInPosition$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.skillInPosition[skillInPosition$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ninja_seq$count:uint = 0;
			var ninja_id$count:uint = 0;
			var current_location$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ninja_seq$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaSkillInfo.ninjaSeq cannot be set twice.');
					}
					++ninja_seq$count;
					this.ninjaSeq = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (ninja_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaSkillInfo.ninjaId cannot be set twice.');
					}
					++ninja_id$count;
					this.ninjaId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (current_location$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaSkillInfo.currentLocation cannot be set twice.');
					}
					++current_location$count;
					this.currentLocation = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					this.skillInPosition.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.skill.ProtoSkillInPosition()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
