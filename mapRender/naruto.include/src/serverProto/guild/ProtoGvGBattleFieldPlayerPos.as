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
	public  final class ProtoGvGBattleFieldPlayerPos extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BATTLE_FIELD_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGBattleFieldPlayerPos.battle_field_id", "battleFieldId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var battle_field_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearBattleFieldId():void {
			hasField$0 &= 0xfffffffe;
			battle_field_id$field = new uint();
		}

		public function get hasBattleFieldId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set battleFieldId(value:uint):void {
			hasField$0 |= 0x1;
			battle_field_id$field = value;
		}

		public function get battleFieldId():uint {
			return battle_field_id$field;
		}

		/**
		 *  @private
		 */
		public static const BATTLE_FIELD_SEQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGBattleFieldPlayerPos.battle_field_seq", "battleFieldSeq", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var battle_field_seq$field:uint;

		public function clearBattleFieldSeq():void {
			hasField$0 &= 0xfffffffd;
			battle_field_seq$field = new uint();
		}

		public function get hasBattleFieldSeq():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set battleFieldSeq(value:uint):void {
			hasField$0 |= 0x2;
			battle_field_seq$field = value;
		}

		public function get battleFieldSeq():uint {
			return battle_field_seq$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasBattleFieldId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, battle_field_id$field);
			}
			if (hasBattleFieldSeq) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, battle_field_seq$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var battle_field_id$count:uint = 0;
			var battle_field_seq$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (battle_field_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldPlayerPos.battleFieldId cannot be set twice.');
					}
					++battle_field_id$count;
					this.battleFieldId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (battle_field_seq$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldPlayerPos.battleFieldSeq cannot be set twice.');
					}
					++battle_field_seq$count;
					this.battleFieldSeq = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
