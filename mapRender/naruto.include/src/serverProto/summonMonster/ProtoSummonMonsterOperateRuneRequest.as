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
	import serverProto.summonMonster.ProtoSummonMonsterOperateRuneType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoSummonMonsterOperateRuneRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.summonMonster.ProtoSummonMonsterOperateRuneRequest.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.summonMonster.ProtoSummonMonsterOperateRuneType);

		public var type:int;

		/**
		 *  @private
		 */
		public static const CONTRACT_POS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoSummonMonsterOperateRuneRequest.contract_pos", "contractPos", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var contractPos:int;

		/**
		 *  @private
		 */
		public static const BAG_RUNE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoSummonMonsterOperateRuneRequest.bag_rune", "bagRune", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.ProtoItemIndex);

		private var bag_rune$field:serverProto.bag.ProtoItemIndex;

		public function clearBagRune():void {
			bag_rune$field = null;
		}

		public function get hasBagRune():Boolean {
			return bag_rune$field != null;
		}

		public function set bagRune(value:serverProto.bag.ProtoItemIndex):void {
			bag_rune$field = value;
		}

		public function get bagRune():serverProto.bag.ProtoItemIndex {
			return bag_rune$field;
		}

		/**
		 *  @private
		 */
		public static const CONTRACT_RUNE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoSummonMonsterOperateRuneRequest.contract_rune", "contractRune", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.ProtoItemIndex);

		private var contract_rune$field:serverProto.bag.ProtoItemIndex;

		public function clearContractRune():void {
			contract_rune$field = null;
		}

		public function get hasContractRune():Boolean {
			return contract_rune$field != null;
		}

		public function set contractRune(value:serverProto.bag.ProtoItemIndex):void {
			contract_rune$field = value;
		}

		public function get contractRune():serverProto.bag.ProtoItemIndex {
			return contract_rune$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.type);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.contractPos);
			if (hasBagRune) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, bag_rune$field);
			}
			if (hasContractRune) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, contract_rune$field);
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
			var contract_pos$count:uint = 0;
			var bag_rune$count:uint = 0;
			var contract_rune$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSummonMonsterOperateRuneRequest.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (contract_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSummonMonsterOperateRuneRequest.contractPos cannot be set twice.');
					}
					++contract_pos$count;
					this.contractPos = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (bag_rune$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSummonMonsterOperateRuneRequest.bagRune cannot be set twice.');
					}
					++bag_rune$count;
					this.bagRune = new serverProto.bag.ProtoItemIndex();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.bagRune);
					break;
				case 4:
					if (contract_rune$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSummonMonsterOperateRuneRequest.contractRune cannot be set twice.');
					}
					++contract_rune$count;
					this.contractRune = new serverProto.bag.ProtoItemIndex();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.contractRune);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
