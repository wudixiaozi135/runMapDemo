package serverProto.chest {
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
	public  final class ProtoHotNinjaInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const WEEKLY_HOT_NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.chest.ProtoHotNinjaInfo.weekly_hot_ninja", "weeklyHotNinja", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var weeklyHotNinja:int;

		/**
		 *  @private
		 */
		public static const DAILY1_HOT_NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.chest.ProtoHotNinjaInfo.daily1_hot_ninja", "daily1HotNinja", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var daily1HotNinja:int;

		/**
		 *  @private
		 */
		public static const DAILY2_HOT_NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.chest.ProtoHotNinjaInfo.daily2_hot_ninja", "daily2HotNinja", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var daily2HotNinja:int;

		/**
		 *  @private
		 */
		public static const DAILY3_HOT_NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.chest.ProtoHotNinjaInfo.daily3_hot_ninja", "daily3HotNinja", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var daily3HotNinja:int;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.weeklyHotNinja);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.daily1HotNinja);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.daily2HotNinja);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.daily3HotNinja);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var weekly_hot_ninja$count:uint = 0;
			var daily1_hot_ninja$count:uint = 0;
			var daily2_hot_ninja$count:uint = 0;
			var daily3_hot_ninja$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (weekly_hot_ninja$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoHotNinjaInfo.weeklyHotNinja cannot be set twice.');
					}
					++weekly_hot_ninja$count;
					this.weeklyHotNinja = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (daily1_hot_ninja$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoHotNinjaInfo.daily1HotNinja cannot be set twice.');
					}
					++daily1_hot_ninja$count;
					this.daily1HotNinja = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (daily2_hot_ninja$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoHotNinjaInfo.daily2HotNinja cannot be set twice.');
					}
					++daily2_hot_ninja$count;
					this.daily2HotNinja = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (daily3_hot_ninja$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoHotNinjaInfo.daily3HotNinja cannot be set twice.');
					}
					++daily3_hot_ninja$count;
					this.daily3HotNinja = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
