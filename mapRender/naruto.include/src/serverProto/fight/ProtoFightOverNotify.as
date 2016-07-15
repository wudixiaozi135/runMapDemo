package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.ProtoFightOverInfo;
	import serverProto.inc.ProtoPoint;
	import serverProto.fight.ProtoTeamDamageStat;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoFightOverNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const FIGHT_OVER_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightOverNotify.fight_over_info", "fightOverInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoFightOverInfo);

		[ArrayElementType("serverProto.fight.ProtoFightOverInfo")]
		public var fightOverInfo:Array = [];

		/**
		 *  @private
		 */
		public static const RELIVE_POINT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightOverNotify.relive_point", "relivePoint", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPoint);

		private var relive_point$field:serverProto.inc.ProtoPoint;

		public function clearRelivePoint():void {
			relive_point$field = null;
		}

		public function get hasRelivePoint():Boolean {
			return relive_point$field != null;
		}

		public function set relivePoint(value:serverProto.inc.ProtoPoint):void {
			relive_point$field = value;
		}

		public function get relivePoint():serverProto.inc.ProtoPoint {
			return relive_point$field;
		}

		/**
		 *  @private
		 */
		public static const NEED_SHOW:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightOverNotify.need_show", "needShow", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var need_show$field:int;

		private var hasField$0:uint = 0;

		public function clearNeedShow():void {
			hasField$0 &= 0xfffffffe;
			need_show$field = new int();
		}

		public function get hasNeedShow():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set needShow(value:int):void {
			hasField$0 |= 0x1;
			need_show$field = value;
		}

		public function get needShow():int {
			return need_show$field;
		}

		/**
		 *  @private
		 */
		public static const TEAM_DAMAGE_STAT:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightOverNotify.team_damage_stat", "teamDamageStat", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoTeamDamageStat);

		[ArrayElementType("serverProto.fight.ProtoTeamDamageStat")]
		public var teamDamageStat:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var fightOverInfo$index:uint = 0; fightOverInfo$index < this.fightOverInfo.length; ++fightOverInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.fightOverInfo[fightOverInfo$index]);
			}
			if (hasRelivePoint) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, relive_point$field);
			}
			if (hasNeedShow) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, need_show$field);
			}
			for (var teamDamageStat$index:uint = 0; teamDamageStat$index < this.teamDamageStat.length; ++teamDamageStat$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.teamDamageStat[teamDamageStat$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var relive_point$count:uint = 0;
			var need_show$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.fightOverInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoFightOverInfo()));
					break;
				case 2:
					if (relive_point$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightOverNotify.relivePoint cannot be set twice.');
					}
					++relive_point$count;
					this.relivePoint = new serverProto.inc.ProtoPoint();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.relivePoint);
					break;
				case 3:
					if (need_show$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightOverNotify.needShow cannot be set twice.');
					}
					++need_show$count;
					this.needShow = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					this.teamDamageStat.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoTeamDamageStat()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
