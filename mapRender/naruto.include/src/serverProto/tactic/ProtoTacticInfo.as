package serverProto.tactic {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.tactic.ProtoTacticStanceInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTacticInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const INDEX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.tactic.ProtoTacticInfo.index", "index", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var index:int;

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.tactic.ProtoTacticInfo.name", "name", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.tactic.ProtoTacticInfo.level", "level", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:int;

		private var hasField$0:uint = 0;

		public function clearLevel():void {
			hasField$0 &= 0xfffffffe;
			level$field = new int();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set level(value:int):void {
			hasField$0 |= 0x1;
			level$field = value;
		}

		public function get level():int {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const STANCE_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.tactic.ProtoTacticInfo.stance_list", "stanceList", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.tactic.ProtoTacticStanceInfo);

		[ArrayElementType("serverProto.tactic.ProtoTacticStanceInfo")]
		public var stanceList:Array = [];

		/**
		 *  @private
		 */
		public static const LEVEL_UP_NEED_REEL_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.tactic.ProtoTacticInfo.level_up_need_reel_count", "levelUpNeedReelCount", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level_up_need_reel_count$field:int;

		public function clearLevelUpNeedReelCount():void {
			hasField$0 &= 0xfffffffd;
			level_up_need_reel_count$field = new int();
		}

		public function get hasLevelUpNeedReelCount():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set levelUpNeedReelCount(value:int):void {
			hasField$0 |= 0x2;
			level_up_need_reel_count$field = value;
		}

		public function get levelUpNeedReelCount():int {
			return level_up_need_reel_count$field;
		}

		/**
		 *  @private
		 */
		public static const CAN_LEVEL_UP:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.tactic.ProtoTacticInfo.can_level_up", "canLevelUp", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var can_level_up$field:Boolean;

		public function clearCanLevelUp():void {
			hasField$0 &= 0xfffffffb;
			can_level_up$field = new Boolean();
		}

		public function get hasCanLevelUp():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set canLevelUp(value:Boolean):void {
			hasField$0 |= 0x4;
			can_level_up$field = value;
		}

		public function get canLevelUp():Boolean {
			return can_level_up$field;
		}

		/**
		 *  @private
		 */
		public static const ITEM_ID_LIST:RepeatedFieldDescriptor$TYPE_SINT32 = new RepeatedFieldDescriptor$TYPE_SINT32("serverProto.tactic.ProtoTacticInfo.item_id_list", "itemIdList", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("int")]
		public var itemIdList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.index);
			if (hasName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, name$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, level$field);
			}
			for (var stanceList$index:uint = 0; stanceList$index < this.stanceList.length; ++stanceList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.stanceList[stanceList$index]);
			}
			if (hasLevelUpNeedReelCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, level_up_need_reel_count$field);
			}
			if (hasCanLevelUp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, can_level_up$field);
			}
			for (var itemIdList$index:uint = 0; itemIdList$index < this.itemIdList.length; ++itemIdList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.itemIdList[itemIdList$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var index$count:uint = 0;
			var name$count:uint = 0;
			var level$count:uint = 0;
			var level_up_need_reel_count$count:uint = 0;
			var can_level_up$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTacticInfo.index cannot be set twice.');
					}
					++index$count;
					this.index = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTacticInfo.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTacticInfo.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					this.stanceList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.tactic.ProtoTacticStanceInfo()));
					break;
				case 5:
					if (level_up_need_reel_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTacticInfo.levelUpNeedReelCount cannot be set twice.');
					}
					++level_up_need_reel_count$count;
					this.levelUpNeedReelCount = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 6:
					if (can_level_up$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTacticInfo.canLevelUp cannot be set twice.');
					}
					++can_level_up$count;
					this.canLevelUp = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 7:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_SINT32, this.itemIdList);
						break;
					}
					this.itemIdList.push(com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
