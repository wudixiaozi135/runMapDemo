package serverProto.team {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.team.ProtoAllTeamInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoJoinTeamNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TEAM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoJoinTeamNotify.team_info", "teamInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.team.ProtoAllTeamInfo);

		public var teamInfo:serverProto.team.ProtoAllTeamInfo;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.teamInfo);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var team_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (team_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoJoinTeamNotify.teamInfo cannot be set twice.');
					}
					++team_info$count;
					this.teamInfo = new serverProto.team.ProtoAllTeamInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.teamInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
