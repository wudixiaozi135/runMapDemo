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
	public  final class ProtoCreateTeamRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.team.ProtoCreateTeamRequest.name", "name", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var name:String;

		/**
		 *  @private
		 */
		public static const GOAL_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoCreateTeamRequest.goal_type", "goalType", (2 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.team.ProtoTeamType);

		public var goalType:int;

		/**
		 *  @private
		 */
		public static const GOAL_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoCreateTeamRequest.goal_id", "goalId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var goal_id$field:int;

		private var hasField$0:uint = 0;

		public function clearGoalId():void {
			hasField$0 &= 0xfffffffe;
			goal_id$field = new int();
		}

		public function get hasGoalId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set goalId(value:int):void {
			hasField$0 |= 0x1;
			goal_id$field = value;
		}

		public function get goalId():int {
			return goal_id$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.name);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.goalType);
			if (hasGoalId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, goal_id$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var name$count:uint = 0;
			var goal_type$count:uint = 0;
			var goal_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCreateTeamRequest.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 2:
					if (goal_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCreateTeamRequest.goalType cannot be set twice.');
					}
					++goal_type$count;
					this.goalType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 3:
					if (goal_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCreateTeamRequest.goalId cannot be set twice.');
					}
					++goal_id$count;
					this.goalId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
