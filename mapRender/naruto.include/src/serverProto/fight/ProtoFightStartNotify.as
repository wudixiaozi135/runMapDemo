package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.ProtoFightResToLoad;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoFightStartNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const FIGHT_RES_TO_LOAD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightStartNotify.fight_res_to_load", "fightResToLoad", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoFightResToLoad);

		private var fight_res_to_load$field:serverProto.fight.ProtoFightResToLoad;

		public function clearFightResToLoad():void {
			fight_res_to_load$field = null;
		}

		public function get hasFightResToLoad():Boolean {
			return fight_res_to_load$field != null;
		}

		public function set fightResToLoad(value:serverProto.fight.ProtoFightResToLoad):void {
			fight_res_to_load$field = value;
		}

		public function get fightResToLoad():serverProto.fight.ProtoFightResToLoad {
			return fight_res_to_load$field;
		}

		/**
		 *  @private
		 */
		public static const INSERT_BATTLE_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightStartNotify.insert_battle_flag", "insertBattleFlag", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var insert_battle_flag$field:uint;

		private var hasField$0:uint = 0;

		public function clearInsertBattleFlag():void {
			hasField$0 &= 0xfffffffe;
			insert_battle_flag$field = new uint();
		}

		public function get hasInsertBattleFlag():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set insertBattleFlag(value:uint):void {
			hasField$0 |= 0x1;
			insert_battle_flag$field = value;
		}

		public function get insertBattleFlag():uint {
			return insert_battle_flag$field;
		}

		/**
		 *  @private
		 */
		public static const ROUND_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightStartNotify.round_count", "roundCount", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var round_count$field:int;

		public function clearRoundCount():void {
			hasField$0 &= 0xfffffffd;
			round_count$field = new int();
		}

		public function get hasRoundCount():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set roundCount(value:int):void {
			hasField$0 |= 0x2;
			round_count$field = value;
		}

		public function get roundCount():int {
			return round_count$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasFightResToLoad) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, fight_res_to_load$field);
			}
			if (hasInsertBattleFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, insert_battle_flag$field);
			}
			if (hasRoundCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, round_count$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var fight_res_to_load$count:uint = 0;
			var insert_battle_flag$count:uint = 0;
			var round_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (fight_res_to_load$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightStartNotify.fightResToLoad cannot be set twice.');
					}
					++fight_res_to_load$count;
					this.fightResToLoad = new serverProto.fight.ProtoFightResToLoad();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.fightResToLoad);
					break;
				case 2:
					if (insert_battle_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightStartNotify.insertBattleFlag cannot be set twice.');
					}
					++insert_battle_flag$count;
					this.insertBattleFlag = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (round_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightStartNotify.roundCount cannot be set twice.');
					}
					++round_count$count;
					this.roundCount = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
