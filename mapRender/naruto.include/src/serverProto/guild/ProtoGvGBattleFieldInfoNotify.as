package serverProto.guild {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.guild.ProtoGvGBattleRound;
	import serverProto.guild.ProtoGvGBattleStatus;
	import serverProto.guild.ProtoGvGBattleFieldData;
	import serverProto.guild.ProtoBattleTime;
	import serverProto.guild.ProtoGvGBattleFieldGuildData;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGvGBattleFieldInfoNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const STATUS:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoGvGBattleFieldInfoNotify.status", "status", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.guild.ProtoGvGBattleStatus);

		private var status$field:int;

		private var hasField$0:uint = 0;

		public function clearStatus():void {
			hasField$0 &= 0xfffffffe;
			status$field = new int();
		}

		public function get hasStatus():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set status(value:int):void {
			hasField$0 |= 0x1;
			status$field = value;
		}

		public function get status():int {
			return status$field;
		}

		/**
		 *  @private
		 */
		public static const ROUND:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoGvGBattleFieldInfoNotify.round", "round", (2 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.guild.ProtoGvGBattleRound);

		private var round$field:int;

		public function clearRound():void {
			hasField$0 &= 0xfffffffd;
			round$field = new int();
		}

		public function get hasRound():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set round(value:int):void {
			hasField$0 |= 0x2;
			round$field = value;
		}

		public function get round():int {
			return round$field;
		}

		/**
		 *  @private
		 */
		public static const REMAIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGBattleFieldInfoNotify.remain_time", "remainTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remain_time$field:uint;

		public function clearRemainTime():void {
			hasField$0 &= 0xfffffffb;
			remain_time$field = new uint();
		}

		public function get hasRemainTime():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set remainTime(value:uint):void {
			hasField$0 |= 0x4;
			remain_time$field = value;
		}

		public function get remainTime():uint {
			return remain_time$field;
		}

		/**
		 *  @private
		 */
		public static const SELF_GUILD_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGBattleFieldInfoNotify.self_guild_data", "selfGuildData", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGvGBattleFieldGuildData);

		private var self_guild_data$field:serverProto.guild.ProtoGvGBattleFieldGuildData;

		public function clearSelfGuildData():void {
			self_guild_data$field = null;
		}

		public function get hasSelfGuildData():Boolean {
			return self_guild_data$field != null;
		}

		public function set selfGuildData(value:serverProto.guild.ProtoGvGBattleFieldGuildData):void {
			self_guild_data$field = value;
		}

		public function get selfGuildData():serverProto.guild.ProtoGvGBattleFieldGuildData {
			return self_guild_data$field;
		}

		/**
		 *  @private
		 */
		public static const RIVAL_GUILD_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGBattleFieldInfoNotify.rival_guild_data", "rivalGuildData", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGvGBattleFieldGuildData);

		private var rival_guild_data$field:serverProto.guild.ProtoGvGBattleFieldGuildData;

		public function clearRivalGuildData():void {
			rival_guild_data$field = null;
		}

		public function get hasRivalGuildData():Boolean {
			return rival_guild_data$field != null;
		}

		public function set rivalGuildData(value:serverProto.guild.ProtoGvGBattleFieldGuildData):void {
			rival_guild_data$field = value;
		}

		public function get rivalGuildData():serverProto.guild.ProtoGvGBattleFieldGuildData {
			return rival_guild_data$field;
		}

		/**
		 *  @private
		 */
		public static const BATTLE_FIELD_DATA:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGBattleFieldInfoNotify.battle_field_data", "battleFieldData", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGvGBattleFieldData);

		[ArrayElementType("serverProto.guild.ProtoGvGBattleFieldData")]
		public var battleFieldData:Array = [];

		/**
		 *  @private
		 */
		public static const SHOW_NEXT_TIME:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGBattleFieldInfoNotify.show_next_time", "showNextTime", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoBattleTime);

		private var show_next_time$field:serverProto.guild.ProtoBattleTime;

		public function clearShowNextTime():void {
			show_next_time$field = null;
		}

		public function get hasShowNextTime():Boolean {
			return show_next_time$field != null;
		}

		public function set showNextTime(value:serverProto.guild.ProtoBattleTime):void {
			show_next_time$field = value;
		}

		public function get showNextTime():serverProto.guild.ProtoBattleTime {
			return show_next_time$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, status$field);
			}
			if (hasRound) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, round$field);
			}
			if (hasRemainTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, remain_time$field);
			}
			if (hasSelfGuildData) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, self_guild_data$field);
			}
			if (hasRivalGuildData) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, rival_guild_data$field);
			}
			for (var battleFieldData$index:uint = 0; battleFieldData$index < this.battleFieldData.length; ++battleFieldData$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.battleFieldData[battleFieldData$index]);
			}
			if (hasShowNextTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, show_next_time$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var status$count:uint = 0;
			var round$count:uint = 0;
			var remain_time$count:uint = 0;
			var self_guild_data$count:uint = 0;
			var rival_guild_data$count:uint = 0;
			var show_next_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldInfoNotify.status cannot be set twice.');
					}
					++status$count;
					this.status = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (round$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldInfoNotify.round cannot be set twice.');
					}
					++round$count;
					this.round = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 3:
					if (remain_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldInfoNotify.remainTime cannot be set twice.');
					}
					++remain_time$count;
					this.remainTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (self_guild_data$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldInfoNotify.selfGuildData cannot be set twice.');
					}
					++self_guild_data$count;
					this.selfGuildData = new serverProto.guild.ProtoGvGBattleFieldGuildData();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.selfGuildData);
					break;
				case 5:
					if (rival_guild_data$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldInfoNotify.rivalGuildData cannot be set twice.');
					}
					++rival_guild_data$count;
					this.rivalGuildData = new serverProto.guild.ProtoGvGBattleFieldGuildData();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.rivalGuildData);
					break;
				case 6:
					this.battleFieldData.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.guild.ProtoGvGBattleFieldData()));
					break;
				case 7:
					if (show_next_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldInfoNotify.showNextTime cannot be set twice.');
					}
					++show_next_time$count;
					this.showNextTime = new serverProto.guild.ProtoBattleTime();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.showNextTime);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
