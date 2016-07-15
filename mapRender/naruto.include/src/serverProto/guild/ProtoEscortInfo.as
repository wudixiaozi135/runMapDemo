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
	public  final class ProtoEscortInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TOTAL_ESCORT_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoEscortInfo.total_escort_times", "totalEscortTimes", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_escort_times$field:int;

		private var hasField$0:uint = 0;

		public function clearTotalEscortTimes():void {
			hasField$0 &= 0xfffffffe;
			total_escort_times$field = new int();
		}

		public function get hasTotalEscortTimes():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set totalEscortTimes(value:int):void {
			hasField$0 |= 0x1;
			total_escort_times$field = value;
		}

		public function get totalEscortTimes():int {
			return total_escort_times$field;
		}

		/**
		 *  @private
		 */
		public static const CURRENT_ESCORT_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoEscortInfo.current_escort_times", "currentEscortTimes", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_escort_times$field:int;

		public function clearCurrentEscortTimes():void {
			hasField$0 &= 0xfffffffd;
			current_escort_times$field = new int();
		}

		public function get hasCurrentEscortTimes():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set currentEscortTimes(value:int):void {
			hasField$0 |= 0x2;
			current_escort_times$field = value;
		}

		public function get currentEscortTimes():int {
			return current_escort_times$field;
		}

		/**
		 *  @private
		 */
		public static const NEED_TIME:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoEscortInfo.need_time", "needTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var need_time$field:int;

		public function clearNeedTime():void {
			hasField$0 &= 0xfffffffb;
			need_time$field = new int();
		}

		public function get hasNeedTime():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set needTime(value:int):void {
			hasField$0 |= 0x4;
			need_time$field = value;
		}

		public function get needTime():int {
			return need_time$field;
		}

		/**
		 *  @private
		 */
		public static const BOUNTY:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoEscortInfo.bounty", "bounty", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var bounty$field:int;

		public function clearBounty():void {
			hasField$0 &= 0xfffffff7;
			bounty$field = new int();
		}

		public function get hasBounty():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set bounty(value:int):void {
			hasField$0 |= 0x8;
			bounty$field = value;
		}

		public function get bounty():int {
			return bounty$field;
		}

		/**
		 *  @private
		 */
		public static const IS_FIRST_GVG_FINAL_BATTLE_RANK:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.guild.ProtoEscortInfo.is_first_gvg_final_battle_rank", "isFirstGvgFinalBattleRank", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_first_gvg_final_battle_rank$field:Boolean;

		public function clearIsFirstGvgFinalBattleRank():void {
			hasField$0 &= 0xffffffef;
			is_first_gvg_final_battle_rank$field = new Boolean();
		}

		public function get hasIsFirstGvgFinalBattleRank():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set isFirstGvgFinalBattleRank(value:Boolean):void {
			hasField$0 |= 0x10;
			is_first_gvg_final_battle_rank$field = value;
		}

		public function get isFirstGvgFinalBattleRank():Boolean {
			return is_first_gvg_final_battle_rank$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasTotalEscortTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, total_escort_times$field);
			}
			if (hasCurrentEscortTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, current_escort_times$field);
			}
			if (hasNeedTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, need_time$field);
			}
			if (hasBounty) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, bounty$field);
			}
			if (hasIsFirstGvgFinalBattleRank) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, is_first_gvg_final_battle_rank$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var total_escort_times$count:uint = 0;
			var current_escort_times$count:uint = 0;
			var need_time$count:uint = 0;
			var bounty$count:uint = 0;
			var is_first_gvg_final_battle_rank$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (total_escort_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEscortInfo.totalEscortTimes cannot be set twice.');
					}
					++total_escort_times$count;
					this.totalEscortTimes = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (current_escort_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEscortInfo.currentEscortTimes cannot be set twice.');
					}
					++current_escort_times$count;
					this.currentEscortTimes = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (need_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEscortInfo.needTime cannot be set twice.');
					}
					++need_time$count;
					this.needTime = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (bounty$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEscortInfo.bounty cannot be set twice.');
					}
					++bounty$count;
					this.bounty = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 5:
					if (is_first_gvg_final_battle_rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEscortInfo.isFirstGvgFinalBattleRank cannot be set twice.');
					}
					++is_first_gvg_final_battle_rank$count;
					this.isFirstGvgFinalBattleRank = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
