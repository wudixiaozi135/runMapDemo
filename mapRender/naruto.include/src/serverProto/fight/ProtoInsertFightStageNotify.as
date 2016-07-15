package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.ProtoMetaAction;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoInsertFightStageNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ACTION:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoInsertFightStageNotify.action", "action", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoMetaAction);

		[ArrayElementType("serverProto.fight.ProtoMetaAction")]
		public var action:Array = [];

		/**
		 *  @private
		 */
		public static const ENCHANTMENT_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoInsertFightStageNotify.enchantment_id", "enchantmentId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var enchantment_id$field:int;

		private var hasField$0:uint = 0;

		public function clearEnchantmentId():void {
			hasField$0 &= 0xfffffffe;
			enchantment_id$field = new int();
		}

		public function get hasEnchantmentId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set enchantmentId(value:int):void {
			hasField$0 |= 0x1;
			enchantment_id$field = value;
		}

		public function get enchantmentId():int {
			return enchantment_id$field;
		}

		/**
		 *  @private
		 */
		public static const LEFT_BATTLE_ROUND:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoInsertFightStageNotify.left_battle_round", "leftBattleRound", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var left_battle_round$field:int;

		public function clearLeftBattleRound():void {
			hasField$0 &= 0xfffffffd;
			left_battle_round$field = new int();
		}

		public function get hasLeftBattleRound():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set leftBattleRound(value:int):void {
			hasField$0 |= 0x2;
			left_battle_round$field = value;
		}

		public function get leftBattleRound():int {
			return left_battle_round$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var action$index:uint = 0; action$index < this.action.length; ++action$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.action[action$index]);
			}
			if (hasEnchantmentId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, enchantment_id$field);
			}
			if (hasLeftBattleRound) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, left_battle_round$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var enchantment_id$count:uint = 0;
			var left_battle_round$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.action.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoMetaAction()));
					break;
				case 2:
					if (enchantment_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInsertFightStageNotify.enchantmentId cannot be set twice.');
					}
					++enchantment_id$count;
					this.enchantmentId = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (left_battle_round$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInsertFightStageNotify.leftBattleRound cannot be set twice.');
					}
					++left_battle_round$count;
					this.leftBattleRound = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
