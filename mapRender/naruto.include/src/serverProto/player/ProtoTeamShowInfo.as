package serverProto.player {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.player.ProtoMoveNotifyType;
	import serverProto.player.ProtoPlayerShowInfo;
	import serverProto.inc.ProtoPoint;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTeamShowInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CAPTAIN:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoTeamShowInfo.captain", "captain", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.player.ProtoPlayerShowInfo);

		private var captain$field:serverProto.player.ProtoPlayerShowInfo;

		public function clearCaptain():void {
			captain$field = null;
		}

		public function get hasCaptain():Boolean {
			return captain$field != null;
		}

		public function set captain(value:serverProto.player.ProtoPlayerShowInfo):void {
			captain$field = value;
		}

		public function get captain():serverProto.player.ProtoPlayerShowInfo {
			return captain$field;
		}

		/**
		 *  @private
		 */
		public static const FOLLOW_MEMBER:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoTeamShowInfo.follow_member", "followMember", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.player.ProtoPlayerShowInfo);

		[ArrayElementType("serverProto.player.ProtoPlayerShowInfo")]
		public var followMember:Array = [];

		/**
		 *  @private
		 */
		public static const TEAM_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.player.ProtoTeamShowInfo.team_id", "teamId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var team_id$field:UInt64;

		public function clearTeamId():void {
			team_id$field = null;
		}

		public function get hasTeamId():Boolean {
			return team_id$field != null;
		}

		public function set teamId(value:UInt64):void {
			team_id$field = value;
		}

		public function get teamId():UInt64 {
			return team_id$field;
		}

		/**
		 *  @private
		 */
		public static const IS_FIGHT:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.player.ProtoTeamShowInfo.is_fight", "isFight", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_fight$field:Boolean;

		private var hasField$0:uint = 0;

		public function clearIsFight():void {
			hasField$0 &= 0xfffffffe;
			is_fight$field = new Boolean();
		}

		public function get hasIsFight():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set isFight(value:Boolean):void {
			hasField$0 |= 0x1;
			is_fight$field = value;
		}

		public function get isFight():Boolean {
			return is_fight$field;
		}

		/**
		 *  @private
		 */
		public static const NOTIFY_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.player.ProtoTeamShowInfo.notify_type", "notifyType", (5 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.player.ProtoMoveNotifyType);

		private var notify_type$field:int;

		public function clearNotifyType():void {
			hasField$0 &= 0xfffffffd;
			notify_type$field = new int();
		}

		public function get hasNotifyType():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set notifyType(value:int):void {
			hasField$0 |= 0x2;
			notify_type$field = value;
		}

		public function get notifyType():int {
			return notify_type$field;
		}

		/**
		 *  @private
		 */
		public static const POINTS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoTeamShowInfo.points", "points", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPoint);

		[ArrayElementType("serverProto.inc.ProtoPoint")]
		public var points:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasCaptain) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, captain$field);
			}
			for (var followMember$index:uint = 0; followMember$index < this.followMember.length; ++followMember$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.followMember[followMember$index]);
			}
			if (hasTeamId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, team_id$field);
			}
			if (hasIsFight) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, is_fight$field);
			}
			if (hasNotifyType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, notify_type$field);
			}
			for (var points$index:uint = 0; points$index < this.points.length; ++points$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.points[points$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var captain$count:uint = 0;
			var team_id$count:uint = 0;
			var is_fight$count:uint = 0;
			var notify_type$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (captain$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamShowInfo.captain cannot be set twice.');
					}
					++captain$count;
					this.captain = new serverProto.player.ProtoPlayerShowInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.captain);
					break;
				case 2:
					this.followMember.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.player.ProtoPlayerShowInfo()));
					break;
				case 3:
					if (team_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamShowInfo.teamId cannot be set twice.');
					}
					++team_id$count;
					this.teamId = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 4:
					if (is_fight$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamShowInfo.isFight cannot be set twice.');
					}
					++is_fight$count;
					this.isFight = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 5:
					if (notify_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamShowInfo.notifyType cannot be set twice.');
					}
					++notify_type$count;
					this.notifyType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 6:
					this.points.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoPoint()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
