package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoPlayerKey;
	import serverProto.fight.ProtoNinjaDamageStat;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTeamDamageStat extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoTeamDamageStat.player_key", "playerKey", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		public var playerKey:serverProto.inc.ProtoPlayerKey;

		/**
		 *  @private
		 */
		public static const NINJA_DAMAGE_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoTeamDamageStat.ninja_damage_list", "ninjaDamageList", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoNinjaDamageStat);

		[ArrayElementType("serverProto.fight.ProtoNinjaDamageStat")]
		public var ninjaDamageList:Array = [];

		/**
		 *  @private
		 */
		public static const TEAM_POS:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoTeamDamageStat.team_pos", "teamPos", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var team_pos$field:int;

		private var hasField$0:uint = 0;

		public function clearTeamPos():void {
			hasField$0 &= 0xfffffffe;
			team_pos$field = new int();
		}

		public function get hasTeamPos():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set teamPos(value:int):void {
			hasField$0 |= 0x1;
			team_pos$field = value;
		}

		public function get teamPos():int {
			return team_pos$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.playerKey);
			for (var ninjaDamageList$index:uint = 0; ninjaDamageList$index < this.ninjaDamageList.length; ++ninjaDamageList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaDamageList[ninjaDamageList$index]);
			}
			if (hasTeamPos) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, team_pos$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var player_key$count:uint = 0;
			var team_pos$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (player_key$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamDamageStat.playerKey cannot be set twice.');
					}
					++player_key$count;
					this.playerKey = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerKey);
					break;
				case 2:
					this.ninjaDamageList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoNinjaDamageStat()));
					break;
				case 3:
					if (team_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamDamageStat.teamPos cannot be set twice.');
					}
					++team_pos$count;
					this.teamPos = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
