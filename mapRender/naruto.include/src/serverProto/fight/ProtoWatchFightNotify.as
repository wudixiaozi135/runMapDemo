package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.FightStartType;
	import serverProto.fight.ProtoAllNeedLoadResPlayerList;
	import serverProto.fight.FightBackgroundRes;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoWatchFightNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SIDE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoWatchFightNotify.side", "side", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var side:int;

		/**
		 *  @private
		 */
		public static const BACKGROUND_RES:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoWatchFightNotify.background_res", "backgroundRes", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.FightBackgroundRes);

		private var background_res$field:serverProto.fight.FightBackgroundRes;

		public function clearBackgroundRes():void {
			background_res$field = null;
		}

		public function get hasBackgroundRes():Boolean {
			return background_res$field != null;
		}

		public function set backgroundRes(value:serverProto.fight.FightBackgroundRes):void {
			background_res$field = value;
		}

		public function get backgroundRes():serverProto.fight.FightBackgroundRes {
			return background_res$field;
		}

		/**
		 *  @private
		 */
		public static const FIGHT_START_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoWatchFightNotify.fight_start_type", "fightStartType", (3 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.fight.FightStartType);

		private var fight_start_type$field:int;

		private var hasField$0:uint = 0;

		public function clearFightStartType():void {
			hasField$0 &= 0xfffffffe;
			fight_start_type$field = new int();
		}

		public function get hasFightStartType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set fightStartType(value:int):void {
			hasField$0 |= 0x1;
			fight_start_type$field = value;
		}

		public function get fightStartType():int {
			return fight_start_type$field;
		}

		/**
		 *  @private
		 */
		public static const NEED_LOAD_RES_PLAYER_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoWatchFightNotify.need_load_res_player_list", "needLoadResPlayerList", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoAllNeedLoadResPlayerList);

		private var need_load_res_player_list$field:serverProto.fight.ProtoAllNeedLoadResPlayerList;

		public function clearNeedLoadResPlayerList():void {
			need_load_res_player_list$field = null;
		}

		public function get hasNeedLoadResPlayerList():Boolean {
			return need_load_res_player_list$field != null;
		}

		public function set needLoadResPlayerList(value:serverProto.fight.ProtoAllNeedLoadResPlayerList):void {
			need_load_res_player_list$field = value;
		}

		public function get needLoadResPlayerList():serverProto.fight.ProtoAllNeedLoadResPlayerList {
			return need_load_res_player_list$field;
		}

		/**
		 *  @private
		 */
		public static const SYNC_TIMEOUT_SEC:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoWatchFightNotify.sync_timeout_sec", "syncTimeoutSec", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var sync_timeout_sec$field:int;

		public function clearSyncTimeoutSec():void {
			hasField$0 &= 0xfffffffd;
			sync_timeout_sec$field = new int();
		}

		public function get hasSyncTimeoutSec():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set syncTimeoutSec(value:int):void {
			hasField$0 |= 0x2;
			sync_timeout_sec$field = value;
		}

		public function get syncTimeoutSec():int {
			return sync_timeout_sec$field;
		}

		/**
		 *  @private
		 */
		public static const ROUND_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoWatchFightNotify.round_count", "roundCount", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var round_count$field:int;

		public function clearRoundCount():void {
			hasField$0 &= 0xfffffffb;
			round_count$field = new int();
		}

		public function get hasRoundCount():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set roundCount(value:int):void {
			hasField$0 |= 0x4;
			round_count$field = value;
		}

		public function get roundCount():int {
			return round_count$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.side);
			if (hasBackgroundRes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, background_res$field);
			}
			if (hasFightStartType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, fight_start_type$field);
			}
			if (hasNeedLoadResPlayerList) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, need_load_res_player_list$field);
			}
			if (hasSyncTimeoutSec) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, sync_timeout_sec$field);
			}
			if (hasRoundCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
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
			var side$count:uint = 0;
			var background_res$count:uint = 0;
			var fight_start_type$count:uint = 0;
			var need_load_res_player_list$count:uint = 0;
			var sync_timeout_sec$count:uint = 0;
			var round_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (side$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWatchFightNotify.side cannot be set twice.');
					}
					++side$count;
					this.side = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (background_res$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWatchFightNotify.backgroundRes cannot be set twice.');
					}
					++background_res$count;
					this.backgroundRes = new serverProto.fight.FightBackgroundRes();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.backgroundRes);
					break;
				case 3:
					if (fight_start_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWatchFightNotify.fightStartType cannot be set twice.');
					}
					++fight_start_type$count;
					this.fightStartType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 4:
					if (need_load_res_player_list$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWatchFightNotify.needLoadResPlayerList cannot be set twice.');
					}
					++need_load_res_player_list$count;
					this.needLoadResPlayerList = new serverProto.fight.ProtoAllNeedLoadResPlayerList();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.needLoadResPlayerList);
					break;
				case 5:
					if (sync_timeout_sec$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWatchFightNotify.syncTimeoutSec cannot be set twice.');
					}
					++sync_timeout_sec$count;
					this.syncTimeoutSec = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 6:
					if (round_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWatchFightNotify.roundCount cannot be set twice.');
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
