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
	public  final class ProtoTinyRoundNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ACTION:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoTinyRoundNotify.action", "action", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoMetaAction);

		[ArrayElementType("serverProto.fight.ProtoMetaAction")]
		public var action:Array = [];

		/**
		 *  @private
		 */
		public static const IS_FIGHT_OVER:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.fight.ProtoTinyRoundNotify.is_fight_over", "isFightOver", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_fight_over$field:Boolean;

		private var hasField$0:uint = 0;

		public function clearIsFightOver():void {
			hasField$0 &= 0xfffffffe;
			is_fight_over$field = new Boolean();
		}

		public function get hasIsFightOver():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set isFightOver(value:Boolean):void {
			hasField$0 |= 0x1;
			is_fight_over$field = value;
		}

		public function get isFightOver():Boolean {
			return is_fight_over$field;
		}

		/**
		 *  @private
		 */
		public static const TINY_ROUND_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoTinyRoundNotify.tiny_round_id", "tinyRoundId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var tiny_round_id$field:int;

		public function clearTinyRoundId():void {
			hasField$0 &= 0xfffffffd;
			tiny_round_id$field = new int();
		}

		public function get hasTinyRoundId():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set tinyRoundId(value:int):void {
			hasField$0 |= 0x2;
			tiny_round_id$field = value;
		}

		public function get tinyRoundId():int {
			return tiny_round_id$field;
		}

		/**
		 *  @private
		 */
		public static const LEFT_BATTLE_ROUND:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoTinyRoundNotify.left_battle_round", "leftBattleRound", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var left_battle_round$field:int;

		public function clearLeftBattleRound():void {
			hasField$0 &= 0xfffffffb;
			left_battle_round$field = new int();
		}

		public function get hasLeftBattleRound():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set leftBattleRound(value:int):void {
			hasField$0 |= 0x4;
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
			if (hasIsFightOver) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, is_fight_over$field);
			}
			if (hasTinyRoundId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, tiny_round_id$field);
			}
			if (hasLeftBattleRound) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
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
			var is_fight_over$count:uint = 0;
			var tiny_round_id$count:uint = 0;
			var left_battle_round$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.action.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoMetaAction()));
					break;
				case 2:
					if (is_fight_over$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTinyRoundNotify.isFightOver cannot be set twice.');
					}
					++is_fight_over$count;
					this.isFightOver = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 3:
					if (tiny_round_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTinyRoundNotify.tinyRoundId cannot be set twice.');
					}
					++tiny_round_id$count;
					this.tinyRoundId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (left_battle_round$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTinyRoundNotify.leftBattleRound cannot be set twice.');
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
