package serverProto.team {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.team.ProtoTeamSyncType;
	import serverProto.team.ProtoAllTeamInfo;
	import serverProto.team.ProtoAssembleTeamReason;
	import serverProto.inc.ProtoPoint;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoAssembleTeamNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const REASON:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoAssembleTeamNotify.reason", "reason", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.team.ProtoAssembleTeamReason);

		public var reason:int;

		/**
		 *  @private
		 */
		public static const TEAM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoAssembleTeamNotify.team_info", "teamInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.team.ProtoAllTeamInfo);

		public var teamInfo:serverProto.team.ProtoAllTeamInfo;

		/**
		 *  @private
		 */
		public static const SCENE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoAssembleTeamNotify.scene", "scene", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var scene$field:uint;

		private var hasField$0:uint = 0;

		public function clearScene():void {
			hasField$0 &= 0xfffffffe;
			scene$field = new uint();
		}

		public function get hasScene():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set scene(value:uint):void {
			hasField$0 |= 0x1;
			scene$field = value;
		}

		public function get scene():uint {
			return scene$field;
		}

		/**
		 *  @private
		 */
		public static const LOCATION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoAssembleTeamNotify.location", "location", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPoint);

		private var location$field:serverProto.inc.ProtoPoint;

		public function clearLocation():void {
			location$field = null;
		}

		public function get hasLocation():Boolean {
			return location$field != null;
		}

		public function set location(value:serverProto.inc.ProtoPoint):void {
			location$field = value;
		}

		public function get location():serverProto.inc.ProtoPoint {
			return location$field;
		}

		/**
		 *  @private
		 */
		public static const SYNC_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoAssembleTeamNotify.sync_type", "syncType", (5 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.team.ProtoTeamSyncType);

		private var sync_type$field:int;

		public function clearSyncType():void {
			hasField$0 &= 0xfffffffd;
			sync_type$field = new int();
		}

		public function get hasSyncType():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set syncType(value:int):void {
			hasField$0 |= 0x2;
			sync_type$field = value;
		}

		public function get syncType():int {
			return sync_type$field;
		}

		/**
		 *  @private
		 */
		public static const DUNGEON_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoAssembleTeamNotify.dungeon_id", "dungeonId", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dungeon_id$field:int;

		public function clearDungeonId():void {
			hasField$0 &= 0xfffffffb;
			dungeon_id$field = new int();
		}

		public function get hasDungeonId():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set dungeonId(value:int):void {
			hasField$0 |= 0x4;
			dungeon_id$field = value;
		}

		public function get dungeonId():int {
			return dungeon_id$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.reason);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.teamInfo);
			if (hasScene) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, scene$field);
			}
			if (hasLocation) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, location$field);
			}
			if (hasSyncType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, sync_type$field);
			}
			if (hasDungeonId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, dungeon_id$field);
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
			var team_info$count:uint = 0;
			var scene$count:uint = 0;
			var location$count:uint = 0;
			var sync_type$count:uint = 0;
			var dungeon_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (reason$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAssembleTeamNotify.reason cannot be set twice.');
					}
					++reason$count;
					this.reason = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (team_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAssembleTeamNotify.teamInfo cannot be set twice.');
					}
					++team_info$count;
					this.teamInfo = new serverProto.team.ProtoAllTeamInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.teamInfo);
					break;
				case 3:
					if (scene$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAssembleTeamNotify.scene cannot be set twice.');
					}
					++scene$count;
					this.scene = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (location$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAssembleTeamNotify.location cannot be set twice.');
					}
					++location$count;
					this.location = new serverProto.inc.ProtoPoint();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.location);
					break;
				case 5:
					if (sync_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAssembleTeamNotify.syncType cannot be set twice.');
					}
					++sync_type$count;
					this.syncType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 6:
					if (dungeon_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAssembleTeamNotify.dungeonId cannot be set twice.');
					}
					++dungeon_id$count;
					this.dungeonId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
