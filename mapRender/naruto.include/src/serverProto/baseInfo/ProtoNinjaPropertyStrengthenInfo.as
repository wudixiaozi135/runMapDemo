package serverProto.baseInfo {
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
	public  final class ProtoNinjaPropertyStrengthenInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo.level", "level", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var level:int;

		/**
		 *  @private
		 */
		public static const MAX_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo.max_level", "maxLevel", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var maxLevel:int;

		/**
		 *  @private
		 */
		public static const NEED_ITEM_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo.need_item_num", "needItemNum", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var needItemNum:int;

		/**
		 *  @private
		 */
		public static const CURRENT_BUFF:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo.current_buff", "currentBuff", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var currentBuff:int;

		/**
		 *  @private
		 */
		public static const NEXT_BUFF:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo.next_buff", "nextBuff", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		public var nextBuff:int;

		/**
		 *  @private
		 */
		public static const NEED_NINJA_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo.need_ninja_level", "needNinjaLevel", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		public var needNinjaLevel:int;

		/**
		 *  @private
		 */
		public static const STRENGTH_MAX_NEED_ITEM_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo.strength_max_need_item_num", "strengthMaxNeedItemNum", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		public var strengthMaxNeedItemNum:int;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.level);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.maxLevel);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.needItemNum);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.currentBuff);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.nextBuff);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.needNinjaLevel);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.strengthMaxNeedItemNum);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var level$count:uint = 0;
			var max_level$count:uint = 0;
			var need_item_num$count:uint = 0;
			var current_buff$count:uint = 0;
			var next_buff$count:uint = 0;
			var need_ninja_level$count:uint = 0;
			var strength_max_need_item_num$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyStrengthenInfo.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (max_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyStrengthenInfo.maxLevel cannot be set twice.');
					}
					++max_level$count;
					this.maxLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (need_item_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyStrengthenInfo.needItemNum cannot be set twice.');
					}
					++need_item_num$count;
					this.needItemNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (current_buff$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyStrengthenInfo.currentBuff cannot be set twice.');
					}
					++current_buff$count;
					this.currentBuff = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (next_buff$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyStrengthenInfo.nextBuff cannot be set twice.');
					}
					++next_buff$count;
					this.nextBuff = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (need_ninja_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyStrengthenInfo.needNinjaLevel cannot be set twice.');
					}
					++need_ninja_level$count;
					this.needNinjaLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (strength_max_need_item_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyStrengthenInfo.strengthMaxNeedItemNum cannot be set twice.');
					}
					++strength_max_need_item_num$count;
					this.strengthMaxNeedItemNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
