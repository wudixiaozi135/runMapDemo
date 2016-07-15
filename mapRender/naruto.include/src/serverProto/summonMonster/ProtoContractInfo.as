package serverProto.summonMonster {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.summonMonster.ProtoSummonMonsterInfo;
	import serverProto.bag.ProtoBagRuneInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoContractInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CONTRACT_POS:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoContractInfo.contract_pos", "contractPos", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var contractPos:int;

		/**
		 *  @private
		 */
		public static const RUNE_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoContractInfo.rune_list", "runeList", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.ProtoBagRuneInfo);

		[ArrayElementType("serverProto.bag.ProtoBagRuneInfo")]
		public var runeList:Array = [];

		/**
		 *  @private
		 */
		public static const SUMMON_MONSTER_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoContractInfo.summon_monster_info", "summonMonsterInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.summonMonster.ProtoSummonMonsterInfo);

		private var summon_monster_info$field:serverProto.summonMonster.ProtoSummonMonsterInfo;

		public function clearSummonMonsterInfo():void {
			summon_monster_info$field = null;
		}

		public function get hasSummonMonsterInfo():Boolean {
			return summon_monster_info$field != null;
		}

		public function set summonMonsterInfo(value:serverProto.summonMonster.ProtoSummonMonsterInfo):void {
			summon_monster_info$field = value;
		}

		public function get summonMonsterInfo():serverProto.summonMonster.ProtoSummonMonsterInfo {
			return summon_monster_info$field;
		}

		/**
		 *  @private
		 */
		public static const OPEN:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoContractInfo.open", "open", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var open$field:int;

		private var hasField$0:uint = 0;

		public function clearOpen():void {
			hasField$0 &= 0xfffffffe;
			open$field = new int();
		}

		public function get hasOpen():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set open(value:int):void {
			hasField$0 |= 0x1;
			open$field = value;
		}

		public function get open():int {
			return open$field;
		}

		/**
		 *  @private
		 */
		public static const OPEN_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoContractInfo.open_level", "openLevel", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var open_level$field:int;

		public function clearOpenLevel():void {
			hasField$0 &= 0xfffffffd;
			open_level$field = new int();
		}

		public function get hasOpenLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set openLevel(value:int):void {
			hasField$0 |= 0x2;
			open_level$field = value;
		}

		public function get openLevel():int {
			return open_level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.contractPos);
			for (var runeList$index:uint = 0; runeList$index < this.runeList.length; ++runeList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.runeList[runeList$index]);
			}
			if (hasSummonMonsterInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, summon_monster_info$field);
			}
			if (hasOpen) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, open$field);
			}
			if (hasOpenLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, open_level$field);
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
			var summon_monster_info$count:uint = 0;
			var open$count:uint = 0;
			var open_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (contract_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoContractInfo.contractPos cannot be set twice.');
					}
					++contract_pos$count;
					this.contractPos = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					this.runeList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.bag.ProtoBagRuneInfo()));
					break;
				case 3:
					if (summon_monster_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoContractInfo.summonMonsterInfo cannot be set twice.');
					}
					++summon_monster_info$count;
					this.summonMonsterInfo = new serverProto.summonMonster.ProtoSummonMonsterInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.summonMonsterInfo);
					break;
				case 4:
					if (open$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoContractInfo.open cannot be set twice.');
					}
					++open$count;
					this.open = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 5:
					if (open_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoContractInfo.openLevel cannot be set twice.');
					}
					++open_level$count;
					this.openLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
