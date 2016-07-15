package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.ProtoUnitKathaSkillUse;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTeamKathaSkillUse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TEAM_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoTeamKathaSkillUse.team_type", "teamType", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var teamType:uint;

		/**
		 *  @private
		 */
		public static const TEAM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoTeamKathaSkillUse.team_id", "teamId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var teamId:uint;

		/**
		 *  @private
		 */
		public static const KATHA_CHANGE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoTeamKathaSkillUse.katha_change", "kathaChange", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var kathaChange:int;

		/**
		 *  @private
		 */
		public static const UNIT_SKILL_USE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoTeamKathaSkillUse.unit_skill_use", "unitSkillUse", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoUnitKathaSkillUse);

		[ArrayElementType("serverProto.fight.ProtoUnitKathaSkillUse")]
		public var unitSkillUse:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.teamType);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.teamId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.kathaChange);
			for (var unitSkillUse$index:uint = 0; unitSkillUse$index < this.unitSkillUse.length; ++unitSkillUse$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.unitSkillUse[unitSkillUse$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var team_type$count:uint = 0;
			var team_id$count:uint = 0;
			var katha_change$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (team_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamKathaSkillUse.teamType cannot be set twice.');
					}
					++team_type$count;
					this.teamType = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (team_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamKathaSkillUse.teamId cannot be set twice.');
					}
					++team_id$count;
					this.teamId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (katha_change$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamKathaSkillUse.kathaChange cannot be set twice.');
					}
					++katha_change$count;
					this.kathaChange = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					this.unitSkillUse.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoUnitKathaSkillUse()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
