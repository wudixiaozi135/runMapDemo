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
	import serverProto.team.ProtoTeamInfoChangeType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTeamInfoChangeNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoTeamInfoChangeNotify.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.team.ProtoTeamInfoChangeType);

		public var type:int;

		/**
		 *  @private
		 */
		public static const TEAM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoTeamInfoChangeNotify.team_info", "teamInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.team.ProtoAllTeamInfo);

		private var team_info$field:serverProto.team.ProtoAllTeamInfo;

		public function clearTeamInfo():void {
			team_info$field = null;
		}

		public function get hasTeamInfo():Boolean {
			return team_info$field != null;
		}

		public function set teamInfo(value:serverProto.team.ProtoAllTeamInfo):void {
			team_info$field = value;
		}

		public function get teamInfo():serverProto.team.ProtoAllTeamInfo {
			return team_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.type);
			if (hasTeamInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, team_info$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var type$count:uint = 0;
			var team_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamInfoChangeNotify.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (team_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamInfoChangeNotify.teamInfo cannot be set twice.');
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
