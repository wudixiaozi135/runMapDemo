package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.ProtoActiveSkillInfo;
	import serverProto.fight.ProtoNinja;
	import serverProto.fight.StageActionType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoStageInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoStageInfo.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.fight.StageActionType);

		public var type:int;

		/**
		 *  @private
		 */
		public static const SUMMON_SKILL_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoStageInfo.summon_skill_info", "summonSkillInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoActiveSkillInfo);

		private var summon_skill_info$field:serverProto.fight.ProtoActiveSkillInfo;

		public function clearSummonSkillInfo():void {
			summon_skill_info$field = null;
		}

		public function get hasSummonSkillInfo():Boolean {
			return summon_skill_info$field != null;
		}

		public function set summonSkillInfo(value:serverProto.fight.ProtoActiveSkillInfo):void {
			summon_skill_info$field = value;
		}

		public function get summonSkillInfo():serverProto.fight.ProtoActiveSkillInfo {
			return summon_skill_info$field;
		}

		/**
		 *  @private
		 */
		public static const SUMMON_POS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoStageInfo.summon_pos", "summonPos", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var summon_pos$field:uint;

		private var hasField$0:uint = 0;

		public function clearSummonPos():void {
			hasField$0 &= 0xfffffffe;
			summon_pos$field = new uint();
		}

		public function get hasSummonPos():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set summonPos(value:uint):void {
			hasField$0 |= 0x1;
			summon_pos$field = value;
		}

		public function get summonPos():uint {
			return summon_pos$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoStageInfo.ninja", "ninja", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoNinja);

		[ArrayElementType("serverProto.fight.ProtoNinja")]
		public var ninja:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.type);
			if (hasSummonSkillInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, summon_skill_info$field);
			}
			if (hasSummonPos) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, summon_pos$field);
			}
			for (var ninja$index:uint = 0; ninja$index < this.ninja.length; ++ninja$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninja[ninja$index]);
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
			var summon_skill_info$count:uint = 0;
			var summon_pos$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStageInfo.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (summon_skill_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStageInfo.summonSkillInfo cannot be set twice.');
					}
					++summon_skill_info$count;
					this.summonSkillInfo = new serverProto.fight.ProtoActiveSkillInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.summonSkillInfo);
					break;
				case 3:
					if (summon_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStageInfo.summonPos cannot be set twice.');
					}
					++summon_pos$count;
					this.summonPos = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					this.ninja.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoNinja()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
