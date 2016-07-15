package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.ProtoPlayerTeamPos;
	import serverProto.baseInfo.ProtoNinjaPackage;
	import serverProto.formationBase.ProtoTeamFormationInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoPreFightResNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TEAM_POS:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoPreFightResNotify.team_pos", "teamPos", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var teamPos:int;

		/**
		 *  @private
		 */
		public static const PLAYER_TEAM:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoPreFightResNotify.player_team", "playerTeam", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.formationBase.ProtoTeamFormationInfo);

		[ArrayElementType("serverProto.formationBase.ProtoTeamFormationInfo")]
		public var playerTeam:Array = [];

		/**
		 *  @private
		 */
		public static const NPC_TEAM:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoPreFightResNotify.npc_team", "npcTeam", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoPlayerTeamPos);

		[ArrayElementType("serverProto.fight.ProtoPlayerTeamPos")]
		public var npcTeam:Array = [];

		/**
		 *  @private
		 */
		public static const NINJA_PACKAGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoPreFightResNotify.ninja_package", "ninjaPackage", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaPackage);

		private var ninja_package$field:serverProto.baseInfo.ProtoNinjaPackage;

		public function clearNinjaPackage():void {
			ninja_package$field = null;
		}

		public function get hasNinjaPackage():Boolean {
			return ninja_package$field != null;
		}

		public function set ninjaPackage(value:serverProto.baseInfo.ProtoNinjaPackage):void {
			ninja_package$field = value;
		}

		public function get ninjaPackage():serverProto.baseInfo.ProtoNinjaPackage {
			return ninja_package$field;
		}

		/**
		 *  @private
		 */
		public static const CURRENT_TALENT_PAGE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPreFightResNotify.current_talent_page", "currentTalentPage", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_talent_page$field:uint;

		private var hasField$0:uint = 0;

		public function clearCurrentTalentPage():void {
			hasField$0 &= 0xfffffffe;
			current_talent_page$field = new uint();
		}

		public function get hasCurrentTalentPage():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set currentTalentPage(value:uint):void {
			hasField$0 |= 0x1;
			current_talent_page$field = value;
		}

		public function get currentTalentPage():uint {
			return current_talent_page$field;
		}

		/**
		 *  @private
		 */
		public static const CAN_STAND_POS:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPreFightResNotify.can_stand_pos", "canStandPos", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var canStandPos:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.teamPos);
			for (var playerTeam$index:uint = 0; playerTeam$index < this.playerTeam.length; ++playerTeam$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.playerTeam[playerTeam$index]);
			}
			for (var npcTeam$index:uint = 0; npcTeam$index < this.npcTeam.length; ++npcTeam$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.npcTeam[npcTeam$index]);
			}
			if (hasNinjaPackage) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_package$field);
			}
			if (hasCurrentTalentPage) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, current_talent_page$field);
			}
			for (var canStandPos$index:uint = 0; canStandPos$index < this.canStandPos.length; ++canStandPos$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.canStandPos[canStandPos$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var team_pos$count:uint = 0;
			var ninja_package$count:uint = 0;
			var current_talent_page$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (team_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPreFightResNotify.teamPos cannot be set twice.');
					}
					++team_pos$count;
					this.teamPos = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					this.playerTeam.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.formationBase.ProtoTeamFormationInfo()));
					break;
				case 3:
					this.npcTeam.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoPlayerTeamPos()));
					break;
				case 4:
					if (ninja_package$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPreFightResNotify.ninjaPackage cannot be set twice.');
					}
					++ninja_package$count;
					this.ninjaPackage = new serverProto.baseInfo.ProtoNinjaPackage();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaPackage);
					break;
				case 5:
					if (current_talent_page$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPreFightResNotify.currentTalentPage cannot be set twice.');
					}
					++current_talent_page$count;
					this.currentTalentPage = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.canStandPos);
						break;
					}
					this.canStandPos.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
