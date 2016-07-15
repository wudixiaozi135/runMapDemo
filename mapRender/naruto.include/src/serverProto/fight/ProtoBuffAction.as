package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.BuffActionType;
	import serverProto.fight.BuffActionTime;
	import serverProto.fight.ProtoBuffInfo;
	import serverProto.fight.ProtoHintInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBuffAction extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ACTION_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoBuffAction.action_type", "actionType", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.fight.BuffActionType);

		public var actionType:int;

		/**
		 *  @private
		 */
		public static const BUFF:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoBuffAction.buff", "buff", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoBuffInfo);

		private var buff$field:serverProto.fight.ProtoBuffInfo;

		public function clearBuff():void {
			buff$field = null;
		}

		public function get hasBuff():Boolean {
			return buff$field != null;
		}

		public function set buff(value:serverProto.fight.ProtoBuffInfo):void {
			buff$field = value;
		}

		public function get buff():serverProto.fight.ProtoBuffInfo {
			return buff$field;
		}

		/**
		 *  @private
		 */
		public static const BUFF_ACTION_TIME:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoBuffAction.buff_action_time", "buffActionTime", (3 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.fight.BuffActionTime);

		private var buff_action_time$field:int;

		private var hasField$0:uint = 0;

		public function clearBuffActionTime():void {
			hasField$0 &= 0xfffffffe;
			buff_action_time$field = new int();
		}

		public function get hasBuffActionTime():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set buffActionTime(value:int):void {
			hasField$0 |= 0x1;
			buff_action_time$field = value;
		}

		public function get buffActionTime():int {
			return buff_action_time$field;
		}

		/**
		 *  @private
		 */
		public static const ADD_BUFF_TYPE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoBuffAction.add_buff_type", "addBuffType", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var add_buff_type$field:int;

		public function clearAddBuffType():void {
			hasField$0 &= 0xfffffffd;
			add_buff_type$field = new int();
		}

		public function get hasAddBuffType():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set addBuffType(value:int):void {
			hasField$0 |= 0x2;
			add_buff_type$field = value;
		}

		public function get addBuffType():int {
			return add_buff_type$field;
		}

		/**
		 *  @private
		 */
		public static const WANTED_POS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoBuffAction.wanted_pos", "wantedPos", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var wanted_pos$field:int;

		public function clearWantedPos():void {
			hasField$0 &= 0xfffffffb;
			wanted_pos$field = new int();
		}

		public function get hasWantedPos():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set wantedPos(value:int):void {
			hasField$0 |= 0x4;
			wanted_pos$field = value;
		}

		public function get wantedPos():int {
			return wanted_pos$field;
		}

		/**
		 *  @private
		 */
		public static const REAL_POS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoBuffAction.real_pos", "realPos", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var real_pos$field:int;

		public function clearRealPos():void {
			hasField$0 &= 0xfffffff7;
			real_pos$field = new int();
		}

		public function get hasRealPos():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set realPos(value:int):void {
			hasField$0 |= 0x8;
			real_pos$field = value;
		}

		public function get realPos():int {
			return real_pos$field;
		}

		/**
		 *  @private
		 */
		public static const HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoBuffAction.hp", "hp", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hp$field:int;

		public function clearHp():void {
			hasField$0 &= 0xffffffef;
			hp$field = new int();
		}

		public function get hasHp():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set hp(value:int):void {
			hasField$0 |= 0x10;
			hp$field = value;
		}

		public function get hp():int {
			return hp$field;
		}

		/**
		 *  @private
		 */
		public static const TEAM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoBuffAction.team_id", "teamId", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var team_id$field:uint;

		public function clearTeamId():void {
			hasField$0 &= 0xffffffdf;
			team_id$field = new uint();
		}

		public function get hasTeamId():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set teamId(value:uint):void {
			hasField$0 |= 0x20;
			team_id$field = value;
		}

		public function get teamId():uint {
			return team_id$field;
		}

		/**
		 *  @private
		 */
		public static const KATHA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoBuffAction.katha", "katha", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var katha$field:uint;

		public function clearKatha():void {
			hasField$0 &= 0xffffffbf;
			katha$field = new uint();
		}

		public function get hasKatha():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set katha(value:uint):void {
			hasField$0 |= 0x40;
			katha$field = value;
		}

		public function get katha():uint {
			return katha$field;
		}

		/**
		 *  @private
		 */
		public static const HINT_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoBuffAction.hint_info", "hintInfo", (10 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoHintInfo);

		[ArrayElementType("serverProto.fight.ProtoHintInfo")]
		public var hintInfo:Array = [];

		/**
		 *  @private
		 */
		public static const OLD_BUFF_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoBuffAction.old_buff_id", "oldBuffId", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var old_buff_id$field:int;

		public function clearOldBuffId():void {
			hasField$0 &= 0xffffff7f;
			old_buff_id$field = new int();
		}

		public function get hasOldBuffId():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set oldBuffId(value:int):void {
			hasField$0 |= 0x80;
			old_buff_id$field = value;
		}

		public function get oldBuffId():int {
			return old_buff_id$field;
		}

		/**
		 *  @private
		 */
		public static const MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoBuffAction.money", "money", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var money$field:int;

		public function clearMoney():void {
			hasField$0 &= 0xfffffeff;
			money$field = new int();
		}

		public function get hasMoney():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set money(value:int):void {
			hasField$0 |= 0x100;
			money$field = value;
		}

		public function get money():int {
			return money$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.actionType);
			if (hasBuff) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, buff$field);
			}
			if (hasBuffActionTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, buff_action_time$field);
			}
			if (hasAddBuffType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, add_buff_type$field);
			}
			if (hasWantedPos) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, wanted_pos$field);
			}
			if (hasRealPos) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, real_pos$field);
			}
			if (hasHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, hp$field);
			}
			if (hasTeamId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, team_id$field);
			}
			if (hasKatha) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, katha$field);
			}
			for (var hintInfo$index:uint = 0; hintInfo$index < this.hintInfo.length; ++hintInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.hintInfo[hintInfo$index]);
			}
			if (hasOldBuffId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, old_buff_id$field);
			}
			if (hasMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, money$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var action_type$count:uint = 0;
			var buff$count:uint = 0;
			var buff_action_time$count:uint = 0;
			var add_buff_type$count:uint = 0;
			var wanted_pos$count:uint = 0;
			var real_pos$count:uint = 0;
			var hp$count:uint = 0;
			var team_id$count:uint = 0;
			var katha$count:uint = 0;
			var old_buff_id$count:uint = 0;
			var money$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (action_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuffAction.actionType cannot be set twice.');
					}
					++action_type$count;
					this.actionType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (buff$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuffAction.buff cannot be set twice.');
					}
					++buff$count;
					this.buff = new serverProto.fight.ProtoBuffInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.buff);
					break;
				case 3:
					if (buff_action_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuffAction.buffActionTime cannot be set twice.');
					}
					++buff_action_time$count;
					this.buffActionTime = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 4:
					if (add_buff_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuffAction.addBuffType cannot be set twice.');
					}
					++add_buff_type$count;
					this.addBuffType = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (wanted_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuffAction.wantedPos cannot be set twice.');
					}
					++wanted_pos$count;
					this.wantedPos = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (real_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuffAction.realPos cannot be set twice.');
					}
					++real_pos$count;
					this.realPos = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuffAction.hp cannot be set twice.');
					}
					++hp$count;
					this.hp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (team_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuffAction.teamId cannot be set twice.');
					}
					++team_id$count;
					this.teamId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (katha$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuffAction.katha cannot be set twice.');
					}
					++katha$count;
					this.katha = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 10:
					this.hintInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoHintInfo()));
					break;
				case 11:
					if (old_buff_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuffAction.oldBuffId cannot be set twice.');
					}
					++old_buff_id$count;
					this.oldBuffId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 12:
					if (money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuffAction.money cannot be set twice.');
					}
					++money$count;
					this.money = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
