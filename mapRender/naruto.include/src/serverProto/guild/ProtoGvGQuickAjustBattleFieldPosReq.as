package serverProto.guild {
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
	public  final class ProtoGvGQuickAjustBattleFieldPosReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const FROM_BATTLE_SEQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGQuickAjustBattleFieldPosReq.from_battle_seq", "fromBattleSeq", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var from_battle_seq$field:uint;

		private var hasField$0:uint = 0;

		public function clearFromBattleSeq():void {
			hasField$0 &= 0xfffffffe;
			from_battle_seq$field = new uint();
		}

		public function get hasFromBattleSeq():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set fromBattleSeq(value:uint):void {
			hasField$0 |= 0x1;
			from_battle_seq$field = value;
		}

		public function get fromBattleSeq():uint {
			return from_battle_seq$field;
		}

		/**
		 *  @private
		 */
		public static const TO_BATTLE_SEQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGQuickAjustBattleFieldPosReq.to_battle_seq", "toBattleSeq", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var to_battle_seq$field:uint;

		public function clearToBattleSeq():void {
			hasField$0 &= 0xfffffffd;
			to_battle_seq$field = new uint();
		}

		public function get hasToBattleSeq():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set toBattleSeq(value:uint):void {
			hasField$0 |= 0x2;
			to_battle_seq$field = value;
		}

		public function get toBattleSeq():uint {
			return to_battle_seq$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasFromBattleSeq) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, from_battle_seq$field);
			}
			if (hasToBattleSeq) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, to_battle_seq$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var from_battle_seq$count:uint = 0;
			var to_battle_seq$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (from_battle_seq$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGQuickAjustBattleFieldPosReq.fromBattleSeq cannot be set twice.');
					}
					++from_battle_seq$count;
					this.fromBattleSeq = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (to_battle_seq$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGQuickAjustBattleFieldPosReq.toBattleSeq cannot be set twice.');
					}
					++to_battle_seq$count;
					this.toBattleSeq = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
