package serverProto.guild {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.guild.ProtoGvGBattleResult;
	import serverProto.guild.ProtoGvGBattleFieldPlayerData;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGvGBattleFieldData extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BATTLE_RESULT:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoGvGBattleFieldData.battle_result", "battleResult", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.guild.ProtoGvGBattleResult);

		private var battle_result$field:int;

		private var hasField$0:uint = 0;

		public function clearBattleResult():void {
			hasField$0 &= 0xfffffffe;
			battle_result$field = new int();
		}

		public function get hasBattleResult():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set battleResult(value:int):void {
			hasField$0 |= 0x1;
			battle_result$field = value;
		}

		public function get battleResult():int {
			return battle_result$field;
		}

		/**
		 *  @private
		 */
		public static const BATTLE_SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGBattleFieldData.battle_score", "battleScore", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var battle_score$field:uint;

		public function clearBattleScore():void {
			hasField$0 &= 0xfffffffd;
			battle_score$field = new uint();
		}

		public function get hasBattleScore():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set battleScore(value:uint):void {
			hasField$0 |= 0x2;
			battle_score$field = value;
		}

		public function get battleScore():uint {
			return battle_score$field;
		}

		/**
		 *  @private
		 */
		public static const PLAYER_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGBattleFieldData.player_info", "playerInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGvGBattleFieldPlayerData);

		[ArrayElementType("serverProto.guild.ProtoGvGBattleFieldPlayerData")]
		public var playerInfo:Array = [];

		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGBattleFieldData.id", "id", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var id$field:uint;

		public function clearId():void {
			hasField$0 &= 0xfffffffb;
			id$field = new uint();
		}

		public function get hasId():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set id(value:uint):void {
			hasField$0 |= 0x4;
			id$field = value;
		}

		public function get id():uint {
			return id$field;
		}

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGvGBattleFieldData.name", "name", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var name$field:String;

		public function clearName():void {
			name$field = null;
		}

		public function get hasName():Boolean {
			return name$field != null;
		}

		public function set name(value:String):void {
			name$field = value;
		}

		public function get name():String {
			return name$field;
		}

		/**
		 *  @private
		 */
		public static const WIN_REASON:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGBattleFieldData.win_reason", "winReason", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var win_reason$field:uint;

		public function clearWinReason():void {
			hasField$0 &= 0xfffffff7;
			win_reason$field = new uint();
		}

		public function get hasWinReason():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set winReason(value:uint):void {
			hasField$0 |= 0x8;
			win_reason$field = value;
		}

		public function get winReason():uint {
			return win_reason$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasBattleResult) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, battle_result$field);
			}
			if (hasBattleScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, battle_score$field);
			}
			for (var playerInfo$index:uint = 0; playerInfo$index < this.playerInfo.length; ++playerInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.playerInfo[playerInfo$index]);
			}
			if (hasId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, id$field);
			}
			if (hasName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, name$field);
			}
			if (hasWinReason) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, win_reason$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var battle_result$count:uint = 0;
			var battle_score$count:uint = 0;
			var id$count:uint = 0;
			var name$count:uint = 0;
			var win_reason$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (battle_result$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldData.battleResult cannot be set twice.');
					}
					++battle_result$count;
					this.battleResult = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (battle_score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldData.battleScore cannot be set twice.');
					}
					++battle_score$count;
					this.battleScore = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					this.playerInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.guild.ProtoGvGBattleFieldPlayerData()));
					break;
				case 4:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldData.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldData.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 6:
					if (win_reason$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGBattleFieldData.winReason cannot be set twice.');
					}
					++win_reason$count;
					this.winReason = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
