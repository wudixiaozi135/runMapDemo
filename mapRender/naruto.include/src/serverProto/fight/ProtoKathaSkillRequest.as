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
	public  final class ProtoKathaSkillRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ACTIVE_POS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoKathaSkillRequest.active_pos", "activePos", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var activePos:uint;

		/**
		 *  @private
		 */
		public static const PASSIVE_POS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoKathaSkillRequest.passive_pos", "passivePos", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var passive_pos$field:uint;

		private var hasField$0:uint = 0;

		public function clearPassivePos():void {
			hasField$0 &= 0xfffffffe;
			passive_pos$field = new uint();
		}

		public function get hasPassivePos():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set passivePos(value:uint):void {
			hasField$0 |= 0x1;
			passive_pos$field = value;
		}

		public function get passivePos():uint {
			return passive_pos$field;
		}

		/**
		 *  @private
		 */
		public static const SKILL_INDEX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoKathaSkillRequest.skill_index", "skillIndex", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var skill_index$field:int;

		public function clearSkillIndex():void {
			hasField$0 &= 0xfffffffd;
			skill_index$field = new int();
		}

		public function get hasSkillIndex():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set skillIndex(value:int):void {
			hasField$0 |= 0x2;
			skill_index$field = value;
		}

		public function get skillIndex():int {
			return skill_index$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.activePos);
			if (hasPassivePos) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, passive_pos$field);
			}
			if (hasSkillIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, skill_index$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var active_pos$count:uint = 0;
			var passive_pos$count:uint = 0;
			var skill_index$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (active_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKathaSkillRequest.activePos cannot be set twice.');
					}
					++active_pos$count;
					this.activePos = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (passive_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKathaSkillRequest.passivePos cannot be set twice.');
					}
					++passive_pos$count;
					this.passivePos = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (skill_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKathaSkillRequest.skillIndex cannot be set twice.');
					}
					++skill_index$count;
					this.skillIndex = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
