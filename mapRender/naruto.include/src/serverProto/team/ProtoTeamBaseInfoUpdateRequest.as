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
	public  final class ProtoTeamBaseInfoUpdateRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.team.ProtoTeamBaseInfoUpdateRequest.name", "name", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var name$field:String;

		public function clearName():void {
			name$field = null;
		}

		public function get hasName():Boolean {
			return name$field != null;
		}

		public function set name(value:String):void {
			name$field = value;
		}

		public function get name():String {
			return name$field;
		}

		/**
		 *  @private
		 */
		public static const ALLOW_AUTO_JOIN:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.team.ProtoTeamBaseInfoUpdateRequest.allow_auto_join", "allowAutoJoin", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var allow_auto_join$field:Boolean;

		private var hasField$0:uint = 0;

		public function clearAllowAutoJoin():void {
			hasField$0 &= 0xfffffffe;
			allow_auto_join$field = new Boolean();
		}

		public function get hasAllowAutoJoin():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set allowAutoJoin(value:Boolean):void {
			hasField$0 |= 0x1;
			allow_auto_join$field = value;
		}

		public function get allowAutoJoin():Boolean {
			return allow_auto_join$field;
		}

		/**
		 *  @private
		 */
		public static const AUTO_JOIN_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoTeamBaseInfoUpdateRequest.auto_join_level", "autoJoinLevel", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var auto_join_level$field:uint;

		public function clearAutoJoinLevel():void {
			hasField$0 &= 0xfffffffd;
			auto_join_level$field = new uint();
		}

		public function get hasAutoJoinLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set autoJoinLevel(value:uint):void {
			hasField$0 |= 0x2;
			auto_join_level$field = value;
		}

		public function get autoJoinLevel():uint {
			return auto_join_level$field;
		}

		/**
		 *  @private
		 */
		public static const GOAL_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoTeamBaseInfoUpdateRequest.goal_type", "goalType", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var goal_type$field:uint;

		public function clearGoalType():void {
			hasField$0 &= 0xfffffffb;
			goal_type$field = new uint();
		}

		public function get hasGoalType():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set goalType(value:uint):void {
			hasField$0 |= 0x4;
			goal_type$field = value;
		}

		public function get goalType():uint {
			return goal_type$field;
		}

		/**
		 *  @private
		 */
		public static const GOAL_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoTeamBaseInfoUpdateRequest.goal_id", "goalId", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var goal_id$field:uint;

		public function clearGoalId():void {
			hasField$0 &= 0xfffffff7;
			goal_id$field = new uint();
		}

		public function get hasGoalId():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set goalId(value:uint):void {
			hasField$0 |= 0x8;
			goal_id$field = value;
		}

		public function get goalId():uint {
			return goal_id$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, name$field);
			}
			if (hasAllowAutoJoin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, allow_auto_join$field);
			}
			if (hasAutoJoinLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, auto_join_level$field);
			}
			if (hasGoalType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, goal_type$field);
			}
			if (hasGoalId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, goal_id$field);
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
			var allow_auto_join$count:uint = 0;
			var auto_join_level$count:uint = 0;
			var goal_type$count:uint = 0;
			var goal_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamBaseInfoUpdateRequest.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 2:
					if (allow_auto_join$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamBaseInfoUpdateRequest.allowAutoJoin cannot be set twice.');
					}
					++allow_auto_join$count;
					this.allowAutoJoin = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 3:
					if (auto_join_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamBaseInfoUpdateRequest.autoJoinLevel cannot be set twice.');
					}
					++auto_join_level$count;
					this.autoJoinLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (goal_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamBaseInfoUpdateRequest.goalType cannot be set twice.');
					}
					++goal_type$count;
					this.goalType = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (goal_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamBaseInfoUpdateRequest.goalId cannot be set twice.');
					}
					++goal_id$count;
					this.goalId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
