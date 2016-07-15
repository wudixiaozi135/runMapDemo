package serverProto.activityHub {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.activityHub.ProtoActivityStatus;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoActivityHudNodeInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activityHub.ProtoActivityHudNodeInfo.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var id$field:int;

		private var hasField$0:uint = 0;

		public function clearId():void {
			hasField$0 &= 0xfffffffe;
			id$field = new int();
		}

		public function get hasId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set id(value:int):void {
			hasField$0 |= 0x1;
			id$field = value;
		}

		public function get id():int {
			return id$field;
		}

		/**
		 *  @private
		 */
		public static const TIME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.activityHub.ProtoActivityHudNodeInfo.time", "time", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var time$field:String;

		public function clearTime():void {
			time$field = null;
		}

		public function get hasTime():Boolean {
			return time$field != null;
		}

		public function set time(value:String):void {
			time$field = value;
		}

		public function get time():String {
			return time$field;
		}

		/**
		 *  @private
		 */
		public static const DAY:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.activityHub.ProtoActivityHudNodeInfo.day", "day", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("int")]
		public var day:Array = [];

		/**
		 *  @private
		 */
		public static const SPECIAL_DAY:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.activityHub.ProtoActivityHudNodeInfo.special_day", "specialDay", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var special_day$field:String;

		public function clearSpecialDay():void {
			special_day$field = null;
		}

		public function get hasSpecialDay():Boolean {
			return special_day$field != null;
		}

		public function set specialDay(value:String):void {
			special_day$field = value;
		}

		public function get specialDay():String {
			return special_day$field;
		}

		/**
		 *  @private
		 */
		public static const ALL_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activityHub.ProtoActivityHudNodeInfo.all_time", "allTime", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var all_time$field:int;

		public function clearAllTime():void {
			hasField$0 &= 0xfffffffd;
			all_time$field = new int();
		}

		public function get hasAllTime():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set allTime(value:int):void {
			hasField$0 |= 0x2;
			all_time$field = value;
		}

		public function get allTime():int {
			return all_time$field;
		}

		/**
		 *  @private
		 */
		public static const REMAINDER_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activityHub.ProtoActivityHudNodeInfo.remainder_time", "remainderTime", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remainder_time$field:int;

		public function clearRemainderTime():void {
			hasField$0 &= 0xfffffffb;
			remainder_time$field = new int();
		}

		public function get hasRemainderTime():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set remainderTime(value:int):void {
			hasField$0 |= 0x4;
			remainder_time$field = value;
		}

		public function get remainderTime():int {
			return remainder_time$field;
		}

		/**
		 *  @private
		 */
		public static const STATUS:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.activityHub.ProtoActivityHudNodeInfo.status", "status", (7 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.activityHub.ProtoActivityStatus);

		private var status$field:int;

		public function clearStatus():void {
			hasField$0 &= 0xfffffff7;
			status$field = new int();
		}

		public function get hasStatus():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set status(value:int):void {
			hasField$0 |= 0x8;
			status$field = value;
		}

		public function get status():int {
			return status$field;
		}

		/**
		 *  @private
		 */
		public static const MEET_SPECIAL_CONDITION:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.activityHub.ProtoActivityHudNodeInfo.meet_special_condition", "meetSpecialCondition", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var meet_special_condition$field:Boolean;

		public function clearMeetSpecialCondition():void {
			hasField$0 &= 0xffffffef;
			meet_special_condition$field = new Boolean();
		}

		public function get hasMeetSpecialCondition():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set meetSpecialCondition(value:Boolean):void {
			hasField$0 |= 0x10;
			meet_special_condition$field = value;
		}

		public function get meetSpecialCondition():Boolean {
			return meet_special_condition$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, id$field);
			}
			if (hasTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, time$field);
			}
			for (var day$index:uint = 0; day$index < this.day.length; ++day$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.day[day$index]);
			}
			if (hasSpecialDay) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, special_day$field);
			}
			if (hasAllTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, all_time$field);
			}
			if (hasRemainderTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, remainder_time$field);
			}
			if (hasStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, status$field);
			}
			if (hasMeetSpecialCondition) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, meet_special_condition$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var id$count:uint = 0;
			var time$count:uint = 0;
			var special_day$count:uint = 0;
			var all_time$count:uint = 0;
			var remainder_time$count:uint = 0;
			var status$count:uint = 0;
			var meet_special_condition$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActivityHudNodeInfo.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActivityHudNodeInfo.time cannot be set twice.');
					}
					++time$count;
					this.time = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_INT32, this.day);
						break;
					}
					this.day.push(com.netease.protobuf.ReadUtils.read$TYPE_INT32(input));
					break;
				case 4:
					if (special_day$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActivityHudNodeInfo.specialDay cannot be set twice.');
					}
					++special_day$count;
					this.specialDay = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 5:
					if (all_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActivityHudNodeInfo.allTime cannot be set twice.');
					}
					++all_time$count;
					this.allTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (remainder_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActivityHudNodeInfo.remainderTime cannot be set twice.');
					}
					++remainder_time$count;
					this.remainderTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActivityHudNodeInfo.status cannot be set twice.');
					}
					++status$count;
					this.status = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 8:
					if (meet_special_condition$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActivityHudNodeInfo.meetSpecialCondition cannot be set twice.');
					}
					++meet_special_condition$count;
					this.meetSpecialCondition = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
