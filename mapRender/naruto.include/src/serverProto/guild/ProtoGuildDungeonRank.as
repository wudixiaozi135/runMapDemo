package serverProto.guild {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.guild.ProtoGuildDungeonPlayer;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGuildDungeonRank extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const GUILD_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.guild.ProtoGuildDungeonRank.guild_id", "guildId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guild_id$field:UInt64;

		public function clearGuildId():void {
			guild_id$field = null;
		}

		public function get hasGuildId():Boolean {
			return guild_id$field != null;
		}

		public function set guildId(value:UInt64):void {
			guild_id$field = value;
		}

		public function get guildId():UInt64 {
			return guild_id$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildDungeonRank.guild_name", "guildName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var guild_name$field:String;

		public function clearGuildName():void {
			guild_name$field = null;
		}

		public function get hasGuildName():Boolean {
			return guild_name$field != null;
		}

		public function set guildName(value:String):void {
			guild_name$field = value;
		}

		public function get guildName():String {
			return guild_name$field;
		}

		/**
		 *  @private
		 */
		public static const PLAYER:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildDungeonRank.player", "player", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGuildDungeonPlayer);

		[ArrayElementType("serverProto.guild.ProtoGuildDungeonPlayer")]
		public var player:Array = [];

		/**
		 *  @private
		 */
		public static const DIFFICULTY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonRank.difficulty", "difficulty", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var difficulty$field:uint;

		private var hasField$0:uint = 0;

		public function clearDifficulty():void {
			hasField$0 &= 0xfffffffe;
			difficulty$field = new uint();
		}

		public function get hasDifficulty():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set difficulty(value:uint):void {
			hasField$0 |= 0x1;
			difficulty$field = value;
		}

		public function get difficulty():uint {
			return difficulty$field;
		}

		/**
		 *  @private
		 */
		public static const ROUND:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonRank.round", "round", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var round$field:uint;

		public function clearRound():void {
			hasField$0 &= 0xfffffffd;
			round$field = new uint();
		}

		public function get hasRound():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set round(value:uint):void {
			hasField$0 |= 0x2;
			round$field = value;
		}

		public function get round():uint {
			return round$field;
		}

		/**
		 *  @private
		 */
		public static const DEAD_NONJA_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonRank.dead_nonja_count", "deadNonjaCount", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dead_nonja_count$field:uint;

		public function clearDeadNonjaCount():void {
			hasField$0 &= 0xfffffffb;
			dead_nonja_count$field = new uint();
		}

		public function get hasDeadNonjaCount():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set deadNonjaCount(value:uint):void {
			hasField$0 |= 0x4;
			dead_nonja_count$field = value;
		}

		public function get deadNonjaCount():uint {
			return dead_nonja_count$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasGuildId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, guild_id$field);
			}
			if (hasGuildName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, guild_name$field);
			}
			for (var player$index:uint = 0; player$index < this.player.length; ++player$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.player[player$index]);
			}
			if (hasDifficulty) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, difficulty$field);
			}
			if (hasRound) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, round$field);
			}
			if (hasDeadNonjaCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, dead_nonja_count$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var guild_id$count:uint = 0;
			var guild_name$count:uint = 0;
			var difficulty$count:uint = 0;
			var round$count:uint = 0;
			var dead_nonja_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (guild_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonRank.guildId cannot be set twice.');
					}
					++guild_id$count;
					this.guildId = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 2:
					if (guild_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonRank.guildName cannot be set twice.');
					}
					++guild_name$count;
					this.guildName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					this.player.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.guild.ProtoGuildDungeonPlayer()));
					break;
				case 4:
					if (difficulty$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonRank.difficulty cannot be set twice.');
					}
					++difficulty$count;
					this.difficulty = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (round$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonRank.round cannot be set twice.');
					}
					++round$count;
					this.round = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (dead_nonja_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonRank.deadNonjaCount cannot be set twice.');
					}
					++dead_nonja_count$count;
					this.deadNonjaCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
