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
	public  final class ProtoCarrySummonMonsterRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CONTRACT_POS:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoCarrySummonMonsterRequest.contract_pos", "contractPos", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var contractPos:int;

		/**
		 *  @private
		 */
		public static const SUMMON_MONSTER_INDEX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoCarrySummonMonsterRequest.summon_monster_index", "summonMonsterIndex", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var summon_monster_index$field:int;

		private var hasField$0:uint = 0;

		public function clearSummonMonsterIndex():void {
			hasField$0 &= 0xfffffffe;
			summon_monster_index$field = new int();
		}

		public function get hasSummonMonsterIndex():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set summonMonsterIndex(value:int):void {
			hasField$0 |= 0x1;
			summon_monster_index$field = value;
		}

		public function get summonMonsterIndex():int {
			return summon_monster_index$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.contractPos);
			if (hasSummonMonsterIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, summon_monster_index$field);
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
			var summon_monster_index$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (contract_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCarrySummonMonsterRequest.contractPos cannot be set twice.');
					}
					++contract_pos$count;
					this.contractPos = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (summon_monster_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCarrySummonMonsterRequest.summonMonsterIndex cannot be set twice.');
					}
					++summon_monster_index$count;
					this.summonMonsterIndex = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
