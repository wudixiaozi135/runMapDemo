package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.ProtoPlayerTeamPos;
	import serverProto.fight.ProtoTeamKathaChange;
	import serverProto.fight.ProtoNinjaHpChange;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoStageAction extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER_TEAM_POS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoStageAction.player_team_pos", "playerTeamPos", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoPlayerTeamPos);

		[ArrayElementType("serverProto.fight.ProtoPlayerTeamPos")]
		public var playerTeamPos:Array = [];

		/**
		 *  @private
		 */
		public static const BATTLE_START_FLAG:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoStageAction.battle_start_flag", "battleStartFlag", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var battle_start_flag$field:int;

		private var hasField$0:uint = 0;

		public function clearBattleStartFlag():void {
			hasField$0 &= 0xfffffffe;
			battle_start_flag$field = new int();
		}

		public function get hasBattleStartFlag():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set battleStartFlag(value:int):void {
			hasField$0 |= 0x1;
			battle_start_flag$field = value;
		}

		public function get battleStartFlag():int {
			return battle_start_flag$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_HP_CHANGE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoStageAction.ninja_hp_change", "ninjaHpChange", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoNinjaHpChange);

		[ArrayElementType("serverProto.fight.ProtoNinjaHpChange")]
		public var ninjaHpChange:Array = [];

		/**
		 *  @private
		 */
		public static const TEAM_KATHA_CHANGE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoStageAction.team_katha_change", "teamKathaChange", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoTeamKathaChange);

		[ArrayElementType("serverProto.fight.ProtoTeamKathaChange")]
		public var teamKathaChange:Array = [];

		/**
		 *  @private
		 */
		public static const BATTLE_END_DELAY_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoStageAction.battle_end_delay_time", "battleEndDelayTime", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var battle_end_delay_time$field:int;

		public function clearBattleEndDelayTime():void {
			hasField$0 &= 0xfffffffd;
			battle_end_delay_time$field = new int();
		}

		public function get hasBattleEndDelayTime():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set battleEndDelayTime(value:int):void {
			hasField$0 |= 0x2;
			battle_end_delay_time$field = value;
		}

		public function get battleEndDelayTime():int {
			return battle_end_delay_time$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var playerTeamPos$index:uint = 0; playerTeamPos$index < this.playerTeamPos.length; ++playerTeamPos$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.playerTeamPos[playerTeamPos$index]);
			}
			if (hasBattleStartFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, battle_start_flag$field);
			}
			for (var ninjaHpChange$index:uint = 0; ninjaHpChange$index < this.ninjaHpChange.length; ++ninjaHpChange$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaHpChange[ninjaHpChange$index]);
			}
			for (var teamKathaChange$index:uint = 0; teamKathaChange$index < this.teamKathaChange.length; ++teamKathaChange$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.teamKathaChange[teamKathaChange$index]);
			}
			if (hasBattleEndDelayTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, battle_end_delay_time$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var battle_start_flag$count:uint = 0;
			var battle_end_delay_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.playerTeamPos.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoPlayerTeamPos()));
					break;
				case 2:
					if (battle_start_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStageAction.battleStartFlag cannot be set twice.');
					}
					++battle_start_flag$count;
					this.battleStartFlag = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					this.ninjaHpChange.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoNinjaHpChange()));
					break;
				case 4:
					this.teamKathaChange.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoTeamKathaChange()));
					break;
				case 5:
					if (battle_end_delay_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStageAction.battleEndDelayTime cannot be set twice.');
					}
					++battle_end_delay_time$count;
					this.battleEndDelayTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
