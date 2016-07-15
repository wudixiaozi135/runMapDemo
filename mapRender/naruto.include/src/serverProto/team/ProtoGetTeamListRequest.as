package serverProto.team {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.team.ProtoTeamType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetTeamListRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoGetTeamListRequest.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.team.ProtoTeamType);

		public var type:int;

		/**
		 *  @private
		 */
		public static const GOAL_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoGetTeamListRequest.goal_id", "goalId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var goal_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearGoalId():void {
			hasField$0 &= 0xfffffffe;
			goal_id$field = new uint();
		}

		public function get hasGoalId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set goalId(value:uint):void {
			hasField$0 |= 0x1;
			goal_id$field = value;
		}

		public function get goalId():uint {
			return goal_id$field;
		}

		/**
		 *  @private
		 */
		public static const LOW_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoGetTeamListRequest.low_level", "lowLevel", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var low_level$field:uint;

		public function clearLowLevel():void {
			hasField$0 &= 0xfffffffd;
			low_level$field = new uint();
		}

		public function get hasLowLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set lowLevel(value:uint):void {
			hasField$0 |= 0x2;
			low_level$field = value;
		}

		public function get lowLevel():uint {
			return low_level$field;
		}

		/**
		 *  @private
		 */
		public static const UP_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoGetTeamListRequest.up_level", "upLevel", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var up_level$field:uint;

		public function clearUpLevel():void {
			hasField$0 &= 0xfffffffb;
			up_level$field = new uint();
		}

		public function get hasUpLevel():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set upLevel(value:uint):void {
			hasField$0 |= 0x4;
			up_level$field = value;
		}

		public function get upLevel():uint {
			return up_level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.type);
			if (hasGoalId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, goal_id$field);
			}
			if (hasLowLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, low_level$field);
			}
			if (hasUpLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, up_level$field);
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
			var goal_id$count:uint = 0;
			var low_level$count:uint = 0;
			var up_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetTeamListRequest.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (goal_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetTeamListRequest.goalId cannot be set twice.');
					}
					++goal_id$count;
					this.goalId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (low_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetTeamListRequest.lowLevel cannot be set twice.');
					}
					++low_level$count;
					this.lowLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (up_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetTeamListRequest.upLevel cannot be set twice.');
					}
					++up_level$count;
					this.upLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
