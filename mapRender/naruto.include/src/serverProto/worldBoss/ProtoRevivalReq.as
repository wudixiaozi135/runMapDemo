package serverProto.worldBoss {
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
	public  final class ProtoRevivalReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const WORLD_BOSS_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.worldBoss.ProtoRevivalReq.world_boss_id", "worldBossId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var worldBossId:int;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.worldBossId);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var world_boss_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (world_boss_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRevivalReq.worldBossId cannot be set twice.');
					}
					++world_boss_id$count;
					this.worldBossId = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
