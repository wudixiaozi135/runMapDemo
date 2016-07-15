package serverProto.formationBase {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.formationBase.ProtoFormationInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTeamFormationInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TEAM_POS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formationBase.ProtoTeamFormationInfo.team_pos", "teamPos", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var teamPos:uint;

		/**
		 *  @private
		 */
		public static const FORMATION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formationBase.ProtoTeamFormationInfo.formation", "formation", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.formationBase.ProtoFormationInfo);

		public var formation:serverProto.formationBase.ProtoFormationInfo;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.teamPos);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.formation);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var team_pos$count:uint = 0;
			var formation$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (team_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamFormationInfo.teamPos cannot be set twice.');
					}
					++team_pos$count;
					this.teamPos = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (formation$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamFormationInfo.formation cannot be set twice.');
					}
					++formation$count;
					this.formation = new serverProto.formationBase.ProtoFormationInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.formation);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
