package serverProto.summonMonster {
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
	public  final class ProtoGetSummonMonsterByIdRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SUMMON_MONSTER_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoGetSummonMonsterByIdRequest.summon_monster_id", "summonMonsterId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var summonMonsterId:int;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.summonMonsterId);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var summon_monster_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (summon_monster_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetSummonMonsterByIdRequest.summonMonsterId cannot be set twice.');
					}
					++summon_monster_id$count;
					this.summonMonsterId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
