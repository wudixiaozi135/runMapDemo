package serverProto.summonMonster {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.bag.ProtoItemIndex;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoSummonMonsterComposeRuneRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CONTRACT_POS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoSummonMonsterComposeRuneRequest.contract_pos", "contractPos", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var contractPos:int;

		/**
		 *  @private
		 */
		public static const RUNE_INDEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoSummonMonsterComposeRuneRequest.rune_index", "runeIndex", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var runeIndex:int;

		/**
		 *  @private
		 */
		public static const BAG_RUNE_INDEX_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoSummonMonsterComposeRuneRequest.bag_rune_index_list", "bagRuneIndexList", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.ProtoItemIndex);

		[ArrayElementType("serverProto.bag.ProtoItemIndex")]
		public var bagRuneIndexList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.contractPos);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.runeIndex);
			for (var bagRuneIndexList$index:uint = 0; bagRuneIndexList$index < this.bagRuneIndexList.length; ++bagRuneIndexList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.bagRuneIndexList[bagRuneIndexList$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var contract_pos$count:uint = 0;
			var rune_index$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (contract_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSummonMonsterComposeRuneRequest.contractPos cannot be set twice.');
					}
					++contract_pos$count;
					this.contractPos = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (rune_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSummonMonsterComposeRuneRequest.runeIndex cannot be set twice.');
					}
					++rune_index$count;
					this.runeIndex = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					this.bagRuneIndexList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.bag.ProtoItemIndex()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
