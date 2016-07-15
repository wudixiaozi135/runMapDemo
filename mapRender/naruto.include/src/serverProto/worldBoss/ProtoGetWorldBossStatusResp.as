package serverProto.worldBoss {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.worldBoss.ProtoWorldBossOpenInfo;
	import serverProto.worldBoss.ProtoRankPlayerList;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetWorldBossStatusResp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoGetWorldBossStatusResp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const MAX_HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoGetWorldBossStatusResp.max_hp", "maxHp", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_hp$field:int;

		private var hasField$0:uint = 0;

		public function clearMaxHp():void {
			hasField$0 &= 0xfffffffe;
			max_hp$field = new int();
		}

		public function get hasMaxHp():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set maxHp(value:int):void {
			hasField$0 |= 0x1;
			max_hp$field = value;
		}

		public function get maxHp():int {
			return max_hp$field;
		}

		/**
		 *  @private
		 */
		public static const CURRENT_HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoGetWorldBossStatusResp.current_hp", "currentHp", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_hp$field:int;

		public function clearCurrentHp():void {
			hasField$0 &= 0xfffffffd;
			current_hp$field = new int();
		}

		public function get hasCurrentHp():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set currentHp(value:int):void {
			hasField$0 |= 0x2;
			current_hp$field = value;
		}

		public function get currentHp():int {
			return current_hp$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoGetWorldBossStatusResp.level", "level", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:int;

		public function clearLevel():void {
			hasField$0 &= 0xfffffffb;
			level$field = new int();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set level(value:int):void {
			hasField$0 |= 0x4;
			level$field = value;
		}

		public function get level():int {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const IS_FAINT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoGetWorldBossStatusResp.is_faint", "isFaint", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_faint$field:int;

		public function clearIsFaint():void {
			hasField$0 &= 0xfffffff7;
			is_faint$field = new int();
		}

		public function get hasIsFaint():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set isFaint(value:int):void {
			hasField$0 |= 0x8;
			is_faint$field = value;
		}

		public function get isFaint():int {
			return is_faint$field;
		}

		/**
		 *  @private
		 */
		public static const CURRENT_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoGetWorldBossStatusResp.current_time", "currentTime", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_time$field:int;

		public function clearCurrentTime():void {
			hasField$0 &= 0xffffffef;
			current_time$field = new int();
		}

		public function get hasCurrentTime():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set currentTime(value:int):void {
			hasField$0 |= 0x10;
			current_time$field = value;
		}

		public function get currentTime():int {
			return current_time$field;
		}

		/**
		 *  @private
		 */
		public static const WORLD_BOSS_OPEN_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoGetWorldBossStatusResp.world_boss_open_info", "worldBossOpenInfo", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.worldBoss.ProtoWorldBossOpenInfo);

		private var world_boss_open_info$field:serverProto.worldBoss.ProtoWorldBossOpenInfo;

		public function clearWorldBossOpenInfo():void {
			world_boss_open_info$field = null;
		}

		public function get hasWorldBossOpenInfo():Boolean {
			return world_boss_open_info$field != null;
		}

		public function set worldBossOpenInfo(value:serverProto.worldBoss.ProtoWorldBossOpenInfo):void {
			world_boss_open_info$field = value;
		}

		public function get worldBossOpenInfo():serverProto.worldBoss.ProtoWorldBossOpenInfo {
			return world_boss_open_info$field;
		}

		/**
		 *  @private
		 */
		public static const DARK_DIVISION_SUPPORT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoGetWorldBossStatusResp.dark_division_support", "darkDivisionSupport", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dark_division_support$field:int;

		public function clearDarkDivisionSupport():void {
			hasField$0 &= 0xffffffdf;
			dark_division_support$field = new int();
		}

		public function get hasDarkDivisionSupport():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set darkDivisionSupport(value:int):void {
			hasField$0 |= 0x20;
			dark_division_support$field = value;
		}

		public function get darkDivisionSupport():int {
			return dark_division_support$field;
		}

		/**
		 *  @private
		 */
		public static const HIKAGE_SUPPORT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoGetWorldBossStatusResp.hikage_support", "hikageSupport", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hikage_support$field:int;

		public function clearHikageSupport():void {
			hasField$0 &= 0xffffffbf;
			hikage_support$field = new int();
		}

		public function get hasHikageSupport():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set hikageSupport(value:int):void {
			hasField$0 |= 0x40;
			hikage_support$field = value;
		}

		public function get hikageSupport():int {
			return hikage_support$field;
		}

		/**
		 *  @private
		 */
		public static const IS_DEAD:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoGetWorldBossStatusResp.is_dead", "isDead", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_dead$field:int;

		public function clearIsDead():void {
			hasField$0 &= 0xffffff7f;
			is_dead$field = new int();
		}

		public function get hasIsDead():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set isDead(value:int):void {
			hasField$0 |= 0x80;
			is_dead$field = value;
		}

		public function get isDead():int {
			return is_dead$field;
		}

		/**
		 *  @private
		 */
		public static const REVIVAL_COUNTDOWN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoGetWorldBossStatusResp.revival_countdown", "revivalCountdown", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var revival_countdown$field:int;

		public function clearRevivalCountdown():void {
			hasField$0 &= 0xfffffeff;
			revival_countdown$field = new int();
		}

		public function get hasRevivalCountdown():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set revivalCountdown(value:int):void {
			hasField$0 |= 0x100;
			revival_countdown$field = value;
		}

		public function get revivalCountdown():int {
			return revival_countdown$field;
		}

		/**
		 *  @private
		 */
		public static const PLAYER_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoGetWorldBossStatusResp.player_list", "playerList", (13 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.worldBoss.ProtoRankPlayerList);

		[ArrayElementType("serverProto.worldBoss.ProtoRankPlayerList")]
		public var playerList:Array = [];

		/**
		 *  @private
		 */
		public static const SELF_RANK:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoGetWorldBossStatusResp.self_rank", "selfRank", (14 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.worldBoss.ProtoRankPlayerList);

		private var self_rank$field:serverProto.worldBoss.ProtoRankPlayerList;

		public function clearSelfRank():void {
			self_rank$field = null;
		}

		public function get hasSelfRank():Boolean {
			return self_rank$field != null;
		}

		public function set selfRank(value:serverProto.worldBoss.ProtoRankPlayerList):void {
			self_rank$field = value;
		}

		public function get selfRank():serverProto.worldBoss.ProtoRankPlayerList {
			return self_rank$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasMaxHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, max_hp$field);
			}
			if (hasCurrentHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, current_hp$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, level$field);
			}
			if (hasIsFaint) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, is_faint$field);
			}
			if (hasCurrentTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, current_time$field);
			}
			if (hasWorldBossOpenInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, world_boss_open_info$field);
			}
			if (hasDarkDivisionSupport) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, dark_division_support$field);
			}
			if (hasHikageSupport) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, hikage_support$field);
			}
			if (hasIsDead) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, is_dead$field);
			}
			if (hasRevivalCountdown) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, revival_countdown$field);
			}
			for (var playerList$index:uint = 0; playerList$index < this.playerList.length; ++playerList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.playerList[playerList$index]);
			}
			if (hasSelfRank) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 14);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, self_rank$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret$count:uint = 0;
			var max_hp$count:uint = 0;
			var current_hp$count:uint = 0;
			var level$count:uint = 0;
			var is_faint$count:uint = 0;
			var current_time$count:uint = 0;
			var world_boss_open_info$count:uint = 0;
			var dark_division_support$count:uint = 0;
			var hikage_support$count:uint = 0;
			var is_dead$count:uint = 0;
			var revival_countdown$count:uint = 0;
			var self_rank$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetWorldBossStatusResp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (max_hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetWorldBossStatusResp.maxHp cannot be set twice.');
					}
					++max_hp$count;
					this.maxHp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (current_hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetWorldBossStatusResp.currentHp cannot be set twice.');
					}
					++current_hp$count;
					this.currentHp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetWorldBossStatusResp.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (is_faint$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetWorldBossStatusResp.isFaint cannot be set twice.');
					}
					++is_faint$count;
					this.isFaint = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (current_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetWorldBossStatusResp.currentTime cannot be set twice.');
					}
					++current_time$count;
					this.currentTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (world_boss_open_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetWorldBossStatusResp.worldBossOpenInfo cannot be set twice.');
					}
					++world_boss_open_info$count;
					this.worldBossOpenInfo = new serverProto.worldBoss.ProtoWorldBossOpenInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.worldBossOpenInfo);
					break;
				case 9:
					if (dark_division_support$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetWorldBossStatusResp.darkDivisionSupport cannot be set twice.');
					}
					++dark_division_support$count;
					this.darkDivisionSupport = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 10:
					if (hikage_support$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetWorldBossStatusResp.hikageSupport cannot be set twice.');
					}
					++hikage_support$count;
					this.hikageSupport = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 11:
					if (is_dead$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetWorldBossStatusResp.isDead cannot be set twice.');
					}
					++is_dead$count;
					this.isDead = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 12:
					if (revival_countdown$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetWorldBossStatusResp.revivalCountdown cannot be set twice.');
					}
					++revival_countdown$count;
					this.revivalCountdown = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 13:
					this.playerList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.worldBoss.ProtoRankPlayerList()));
					break;
				case 14:
					if (self_rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetWorldBossStatusResp.selfRank cannot be set twice.');
					}
					++self_rank$count;
					this.selfRank = new serverProto.worldBoss.ProtoRankPlayerList();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.selfRank);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
