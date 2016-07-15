package serverProto.fight {
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
	public  final class ProtoCustomBattleInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CUSTOM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoCustomBattleInfo.custom_id", "customId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var customId:uint;

		/**
		 *  @private
		 */
		public static const SECTION_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoCustomBattleInfo.section_id", "sectionId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var sectionId:uint;

		/**
		 *  @private
		 */
		public static const CURRENT_BATTLE_WAVE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoCustomBattleInfo.current_battle_wave", "currentBattleWave", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_battle_wave$field:int;

		private var hasField$0:uint = 0;

		public function clearCurrentBattleWave():void {
			hasField$0 &= 0xfffffffe;
			current_battle_wave$field = new int();
		}

		public function get hasCurrentBattleWave():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set currentBattleWave(value:int):void {
			hasField$0 |= 0x1;
			current_battle_wave$field = value;
		}

		public function get currentBattleWave():int {
			return current_battle_wave$field;
		}

		/**
		 *  @private
		 */
		public static const TOTAL_BATTLE_WAVE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoCustomBattleInfo.total_battle_wave", "totalBattleWave", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_battle_wave$field:int;

		public function clearTotalBattleWave():void {
			hasField$0 &= 0xfffffffd;
			total_battle_wave$field = new int();
		}

		public function get hasTotalBattleWave():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set totalBattleWave(value:int):void {
			hasField$0 |= 0x2;
			total_battle_wave$field = value;
		}

		public function get totalBattleWave():int {
			return total_battle_wave$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.customId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.sectionId);
			if (hasCurrentBattleWave) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, current_battle_wave$field);
			}
			if (hasTotalBattleWave) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, total_battle_wave$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var custom_id$count:uint = 0;
			var section_id$count:uint = 0;
			var current_battle_wave$count:uint = 0;
			var total_battle_wave$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (custom_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCustomBattleInfo.customId cannot be set twice.');
					}
					++custom_id$count;
					this.customId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (section_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCustomBattleInfo.sectionId cannot be set twice.');
					}
					++section_id$count;
					this.sectionId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (current_battle_wave$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCustomBattleInfo.currentBattleWave cannot be set twice.');
					}
					++current_battle_wave$count;
					this.currentBattleWave = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (total_battle_wave$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCustomBattleInfo.totalBattleWave cannot be set twice.');
					}
					++total_battle_wave$count;
					this.totalBattleWave = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
