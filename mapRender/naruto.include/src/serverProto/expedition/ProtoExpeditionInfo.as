package serverProto.expedition {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.expedition.ProtoExpeditionStageInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoExpeditionInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CURRENT_STAGE_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionInfo.current_stage_level", "currentStageLevel", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var currentStageLevel:int;

		/**
		 *  @private
		 */
		public static const CARRY_NINJA_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionInfo.carry_ninja_count", "carryNinjaCount", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var carryNinjaCount:int;

		/**
		 *  @private
		 */
		public static const MAX_NINJA_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionInfo.max_ninja_count", "maxNinjaCount", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var maxNinjaCount:int;

		/**
		 *  @private
		 */
		public static const LEFT_CHALLENGE_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionInfo.left_challenge_count", "leftChallengeCount", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		public var leftChallengeCount:int;

		/**
		 *  @private
		 */
		public static const CURRENT_STAGE_STATE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionInfo.current_stage_state", "currentStageState", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_stage_state$field:int;

		private var hasField$0:uint = 0;

		public function clearCurrentStageState():void {
			hasField$0 &= 0xfffffffe;
			current_stage_state$field = new int();
		}

		public function get hasCurrentStageState():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set currentStageState(value:int):void {
			hasField$0 |= 0x1;
			current_stage_state$field = value;
		}

		public function get currentStageState():int {
			return current_stage_state$field;
		}

		/**
		 *  @private
		 */
		public static const STAGE_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoExpeditionInfo.stage_list", "stageList", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.expedition.ProtoExpeditionStageInfo);

		[ArrayElementType("serverProto.expedition.ProtoExpeditionStageInfo")]
		public var stageList:Array = [];

		/**
		 *  @private
		 */
		public static const NINJA_ALL_DEAD:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionInfo.ninja_all_dead", "ninjaAllDead", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_all_dead$field:int;

		public function clearNinjaAllDead():void {
			hasField$0 &= 0xfffffffd;
			ninja_all_dead$field = new int();
		}

		public function get hasNinjaAllDead():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set ninjaAllDead(value:int):void {
			hasField$0 |= 0x2;
			ninja_all_dead$field = value;
		}

		public function get ninjaAllDead():int {
			return ninja_all_dead$field;
		}

		/**
		 *  @private
		 */
		public static const AVAILABLE_NINJA_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionInfo.available_ninja_count", "availableNinjaCount", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var available_ninja_count$field:int;

		public function clearAvailableNinjaCount():void {
			hasField$0 &= 0xfffffffb;
			available_ninja_count$field = new int();
		}

		public function get hasAvailableNinjaCount():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set availableNinjaCount(value:int):void {
			hasField$0 |= 0x4;
			available_ninja_count$field = value;
		}

		public function get availableNinjaCount():int {
			return available_ninja_count$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.currentStageLevel);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.carryNinjaCount);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.maxNinjaCount);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.leftChallengeCount);
			if (hasCurrentStageState) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, current_stage_state$field);
			}
			for (var stageList$index:uint = 0; stageList$index < this.stageList.length; ++stageList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.stageList[stageList$index]);
			}
			if (hasNinjaAllDead) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, ninja_all_dead$field);
			}
			if (hasAvailableNinjaCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, available_ninja_count$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var current_stage_level$count:uint = 0;
			var carry_ninja_count$count:uint = 0;
			var max_ninja_count$count:uint = 0;
			var left_challenge_count$count:uint = 0;
			var current_stage_state$count:uint = 0;
			var ninja_all_dead$count:uint = 0;
			var available_ninja_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 2:
					if (current_stage_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionInfo.currentStageLevel cannot be set twice.');
					}
					++current_stage_level$count;
					this.currentStageLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (carry_ninja_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionInfo.carryNinjaCount cannot be set twice.');
					}
					++carry_ninja_count$count;
					this.carryNinjaCount = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (max_ninja_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionInfo.maxNinjaCount cannot be set twice.');
					}
					++max_ninja_count$count;
					this.maxNinjaCount = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 5:
					if (left_challenge_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionInfo.leftChallengeCount cannot be set twice.');
					}
					++left_challenge_count$count;
					this.leftChallengeCount = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 6:
					if (current_stage_state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionInfo.currentStageState cannot be set twice.');
					}
					++current_stage_state$count;
					this.currentStageState = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 7:
					this.stageList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.expedition.ProtoExpeditionStageInfo()));
					break;
				case 8:
					if (ninja_all_dead$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionInfo.ninjaAllDead cannot be set twice.');
					}
					++ninja_all_dead$count;
					this.ninjaAllDead = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 9:
					if (available_ninja_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionInfo.availableNinjaCount cannot be set twice.');
					}
					++available_ninja_count$count;
					this.availableNinjaCount = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
