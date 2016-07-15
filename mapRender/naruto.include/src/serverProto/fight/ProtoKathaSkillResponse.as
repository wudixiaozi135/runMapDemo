package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.fight.ProtoTeamKathaChange;
	import serverProto.fight.ProtoTeamInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoKathaSkillResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoKathaSkillResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const TEAM_KATHA_CHANGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoKathaSkillResponse.team_katha_change", "teamKathaChange", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoTeamKathaChange);

		private var team_katha_change$field:serverProto.fight.ProtoTeamKathaChange;

		public function clearTeamKathaChange():void {
			team_katha_change$field = null;
		}

		public function get hasTeamKathaChange():Boolean {
			return team_katha_change$field != null;
		}

		public function set teamKathaChange(value:serverProto.fight.ProtoTeamKathaChange):void {
			team_katha_change$field = value;
		}

		public function get teamKathaChange():serverProto.fight.ProtoTeamKathaChange {
			return team_katha_change$field;
		}

		/**
		 *  @private
		 */
		public static const TEAM_SKILL_STATE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoKathaSkillResponse.team_skill_state", "teamSkillState", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoTeamInfo);

		[ArrayElementType("serverProto.fight.ProtoTeamInfo")]
		public var teamSkillState:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasTeamKathaChange) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, team_katha_change$field);
			}
			for (var teamSkillState$index:uint = 0; teamSkillState$index < this.teamSkillState.length; ++teamSkillState$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
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
			var ret$count:uint = 0;
			var team_katha_change$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKathaSkillResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (team_katha_change$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoKathaSkillResponse.teamKathaChange cannot be set twice.');
					}
					++team_katha_change$count;
					this.teamKathaChange = new serverProto.fight.ProtoTeamKathaChange();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.teamKathaChange);
					break;
				case 3:
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
