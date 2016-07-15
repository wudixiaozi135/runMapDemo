package serverProto.team {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoResponseTeamInviteMemberRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TEAM_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.team.ProtoResponseTeamInviteMemberRequest.team_id", "teamId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var teamId:UInt64;

		/**
		 *  @private
		 */
		public static const ACCEPT:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.team.ProtoResponseTeamInviteMemberRequest.accept", "accept", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var accept:Boolean;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, this.teamId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, this.accept);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var team_id$count:uint = 0;
			var accept$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (team_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoResponseTeamInviteMemberRequest.teamId cannot be set twice.');
					}
					++team_id$count;
					this.teamId = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 2:
					if (accept$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoResponseTeamInviteMemberRequest.accept cannot be set twice.');
					}
					++accept$count;
					this.accept = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
