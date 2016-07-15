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
	public  final class ProtoWithstandAction extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SKILL_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoWithstandAction.skill_id", "skillId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var skillId:uint;

		/**
		 *  @private
		 */
		public static const ATTACK_POS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoWithstandAction.attack_pos", "attackPos", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var attackPos:uint;

		/**
		 *  @private
		 */
		public static const TARGET_POS:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoWithstandAction.target_pos", "targetPos", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var targetPos:Array = [];

		/**
		 *  @private
		 */
		public static const WITHSTAND_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoWithstandAction.withstand_id", "withstandId", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var withstandId:uint;

		/**
		 *  @private
		 */
		public static const WITHSTAND_POS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoWithstandAction.withstand_pos", "withstandPos", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		public var withstandPos:uint;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.skillId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.attackPos);
			for (var targetPos$index:uint = 0; targetPos$index < this.targetPos.length; ++targetPos$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.targetPos[targetPos$index]);
			}
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.withstandId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.withstandPos);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var skill_id$count:uint = 0;
			var attack_pos$count:uint = 0;
			var withstand_id$count:uint = 0;
			var withstand_pos$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (skill_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWithstandAction.skillId cannot be set twice.');
					}
					++skill_id$count;
					this.skillId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (attack_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWithstandAction.attackPos cannot be set twice.');
					}
					++attack_pos$count;
					this.attackPos = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.targetPos);
						break;
					}
					this.targetPos.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				case 4:
					if (withstand_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWithstandAction.withstandId cannot be set twice.');
					}
					++withstand_id$count;
					this.withstandId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (withstand_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWithstandAction.withstandPos cannot be set twice.');
					}
					++withstand_pos$count;
					this.withstandPos = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
