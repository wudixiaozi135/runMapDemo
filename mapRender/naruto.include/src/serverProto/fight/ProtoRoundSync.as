package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.ProtoCustomBattleInfo;
	import serverProto.fight.ProtoMetaAction;
	import serverProto.fight.FightBackgroundRes;
	import serverProto.fight.ProtoTeamInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoRoundSync extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const META_ACTION:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoRoundSync.meta_action", "metaAction", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoMetaAction);

		[ArrayElementType("serverProto.fight.ProtoMetaAction")]
		public var metaAction:Array = [];

		/**
		 *  @private
		 */
		public static const TEAM_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoRoundSync.team_info", "teamInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoTeamInfo);

		[ArrayElementType("serverProto.fight.ProtoTeamInfo")]
		public var teamInfo:Array = [];

		/**
		 *  @private
		 */
		public static const IS_FIGHT_OVER:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.fight.ProtoRoundSync.is_fight_over", "isFightOver", (3 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const BIG_ROUND_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoRoundSync.big_round_index", "bigRoundIndex", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var big_round_index$field:uint;

		public function clearBigRoundIndex():void {
			hasField$0 &= 0xfffffffd;
			big_round_index$field = new uint();
		}

		public function get hasBigRoundIndex():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set bigRoundIndex(value:uint):void {
			hasField$0 |= 0x2;
			big_round_index$field = value;
		}

		public function get bigRoundIndex():uint {
			return big_round_index$field;
		}

		/**
		 *  @private
		 */
		public static const CUSTOM_BATTLE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoRoundSync.custom_battle_info", "customBattleInfo", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoCustomBattleInfo);

		private var custom_battle_info$field:serverProto.fight.ProtoCustomBattleInfo;

		public function clearCustomBattleInfo():void {
			custom_battle_info$field = null;
		}

		public function get hasCustomBattleInfo():Boolean {
			return custom_battle_info$field != null;
		}

		public function set customBattleInfo(value:serverProto.fight.ProtoCustomBattleInfo):void {
			custom_battle_info$field = value;
		}

		public function get customBattleInfo():serverProto.fight.ProtoCustomBattleInfo {
			return custom_battle_info$field;
		}

		/**
		 *  @private
		 */
		public static const BACKGROUND_RES:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoRoundSync.background_res", "backgroundRes", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.FightBackgroundRes);

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
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var metaAction$index:uint = 0; metaAction$index < this.metaAction.length; ++metaAction$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.metaAction[metaAction$index]);
			}
			for (var teamInfo$index:uint = 0; teamInfo$index < this.teamInfo.length; ++teamInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.teamInfo[teamInfo$index]);
			}
			if (hasIsFightOver) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, is_fight_over$field);
			}
			if (hasBigRoundIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, big_round_index$field);
			}
			if (hasCustomBattleInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, custom_battle_info$field);
			}
			if (hasBackgroundRes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, background_res$field);
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
			var big_round_index$count:uint = 0;
			var custom_battle_info$count:uint = 0;
			var background_res$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.metaAction.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoMetaAction()));
					break;
				case 2:
					this.teamInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoTeamInfo()));
					break;
				case 3:
					if (is_fight_over$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRoundSync.isFightOver cannot be set twice.');
					}
					++is_fight_over$count;
					this.isFightOver = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 4:
					if (big_round_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRoundSync.bigRoundIndex cannot be set twice.');
					}
					++big_round_index$count;
					this.bigRoundIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (custom_battle_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRoundSync.customBattleInfo cannot be set twice.');
					}
					++custom_battle_info$count;
					this.customBattleInfo = new serverProto.fight.ProtoCustomBattleInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.customBattleInfo);
					break;
				case 7:
					if (background_res$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRoundSync.backgroundRes cannot be set twice.');
					}
					++background_res$count;
					this.backgroundRes = new serverProto.fight.FightBackgroundRes();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.backgroundRes);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
