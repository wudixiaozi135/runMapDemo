package serverProto.team {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoPlayerKey;
	import serverProto.team.ProtoSelfTeamInfo;
	import serverProto.team.ProtoSelfTeamInfoChangeReason;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoSelfTeamInfoChangeNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const REASON:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoSelfTeamInfoChangeNotify.reason", "reason", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.team.ProtoSelfTeamInfoChangeReason);

		public var reason:int;

		/**
		 *  @private
		 */
		public static const SPONSOR:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoSelfTeamInfoChangeNotify.sponsor", "sponsor", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var sponsor$field:serverProto.inc.ProtoPlayerKey;

		public function clearSponsor():void {
			sponsor$field = null;
		}

		public function get hasSponsor():Boolean {
			return sponsor$field != null;
		}

		public function set sponsor(value:serverProto.inc.ProtoPlayerKey):void {
			sponsor$field = value;
		}

		public function get sponsor():serverProto.inc.ProtoPlayerKey {
			return sponsor$field;
		}

		/**
		 *  @private
		 */
		public static const SELF_TEAM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoSelfTeamInfoChangeNotify.self_team_info", "selfTeamInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.team.ProtoSelfTeamInfo);

		private var self_team_info$field:serverProto.team.ProtoSelfTeamInfo;

		public function clearSelfTeamInfo():void {
			self_team_info$field = null;
		}

		public function get hasSelfTeamInfo():Boolean {
			return self_team_info$field != null;
		}

		public function set selfTeamInfo(value:serverProto.team.ProtoSelfTeamInfo):void {
			self_team_info$field = value;
		}

		public function get selfTeamInfo():serverProto.team.ProtoSelfTeamInfo {
			return self_team_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.reason);
			if (hasSponsor) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, sponsor$field);
			}
			if (hasSelfTeamInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, self_team_info$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var reason$count:uint = 0;
			var sponsor$count:uint = 0;
			var self_team_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (reason$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSelfTeamInfoChangeNotify.reason cannot be set twice.');
					}
					++reason$count;
					this.reason = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (sponsor$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSelfTeamInfoChangeNotify.sponsor cannot be set twice.');
					}
					++sponsor$count;
					this.sponsor = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.sponsor);
					break;
				case 3:
					if (self_team_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSelfTeamInfoChangeNotify.selfTeamInfo cannot be set twice.');
					}
					++self_team_info$count;
					this.selfTeamInfo = new serverProto.team.ProtoSelfTeamInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.selfTeamInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
