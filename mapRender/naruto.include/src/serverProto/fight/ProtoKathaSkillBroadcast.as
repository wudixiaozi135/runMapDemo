package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.ProtoTeamKathaSkillUse;
	import serverProto.fight.ProtoTeamInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoKathaSkillBroadcast extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TEAM_SKILL_USE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoKathaSkillBroadcast.team_skill_use", "teamSkillUse", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoTeamKathaSkillUse);

		[ArrayElementType("serverProto.fight.ProtoTeamKathaSkillUse")]
		public var teamSkillUse:Array = [];

		/**
		 *  @private
		 */
		public static const TEAM_SKILL_STATE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoKathaSkillBroadcast.team_skill_state", "teamSkillState", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoTeamInfo);

		[ArrayElementType("serverProto.fight.ProtoTeamInfo")]
		public var teamSkillState:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var teamSkillUse$index:uint = 0; teamSkillUse$index < this.teamSkillUse.length; ++teamSkillUse$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.teamSkillUse[teamSkillUse$index]);
			}
			for (var teamSkillState$index:uint = 0; teamSkillState$index < this.teamSkillState.length; ++teamSkillState$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.teamSkillState[teamSkillState$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.teamSkillUse.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoTeamKathaSkillUse()));
					break;
				case 2:
					this.teamSkillState.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoTeamInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
