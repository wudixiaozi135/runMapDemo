package serverProto.dungeon {
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
	public  final class ProtoFoisonDungeonInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const DUNGEON_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoFoisonDungeonInfo.dungeon_id", "dungeonId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var dungeonId:uint;

		/**
		 *  @private
		 */
		public static const IS_OPEN:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.dungeon.ProtoFoisonDungeonInfo.is_open", "isOpen", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_open$field:Boolean;

		private var hasField$0:uint = 0;

		public function clearIsOpen():void {
			hasField$0 &= 0xfffffffe;
			is_open$field = new Boolean();
		}

		public function get hasIsOpen():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set isOpen(value:Boolean):void {
			hasField$0 |= 0x1;
			is_open$field = value;
		}

		public function get isOpen():Boolean {
			return is_open$field;
		}

		/**
		 *  @private
		 */
		public static const OPEN_DAY:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoFoisonDungeonInfo.open_day", "openDay", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("int")]
		public var openDay:Array = [];

		/**
		 *  @private
		 */
		public static const NEED_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoFoisonDungeonInfo.need_power", "needPower", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var need_power$field:uint;

		public function clearNeedPower():void {
			hasField$0 &= 0xfffffffd;
			need_power$field = new uint();
		}

		public function get hasNeedPower():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set needPower(value:uint):void {
			hasField$0 |= 0x2;
			need_power$field = value;
		}

		public function get needPower():uint {
			return need_power$field;
		}

		/**
		 *  @private
		 */
		public static const PASS_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoFoisonDungeonInfo.pass_times", "passTimes", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var pass_times$field:uint;

		public function clearPassTimes():void {
			hasField$0 &= 0xfffffffb;
			pass_times$field = new uint();
		}

		public function get hasPassTimes():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set passTimes(value:uint):void {
			hasField$0 |= 0x4;
			pass_times$field = value;
		}

		public function get passTimes():uint {
			return pass_times$field;
		}

		/**
		 *  @private
		 */
		public static const PASS_ULIMIT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoFoisonDungeonInfo.pass_ulimit", "passUlimit", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var pass_ulimit$field:uint;

		public function clearPassUlimit():void {
			hasField$0 &= 0xfffffff7;
			pass_ulimit$field = new uint();
		}

		public function get hasPassUlimit():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set passUlimit(value:uint):void {
			hasField$0 |= 0x8;
			pass_ulimit$field = value;
		}

		public function get passUlimit():uint {
			return pass_ulimit$field;
		}

		/**
		 *  @private
		 */
		public static const COOL_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoFoisonDungeonInfo.cool_time", "coolTime", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var cool_time$field:int;

		public function clearCoolTime():void {
			hasField$0 &= 0xffffffef;
			cool_time$field = new int();
		}

		public function get hasCoolTime():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set coolTime(value:int):void {
			hasField$0 |= 0x10;
			cool_time$field = value;
		}

		public function get coolTime():int {
			return cool_time$field;
		}

		/**
		 *  @private
		 */
		public static const EASY_OPEN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoFoisonDungeonInfo.easy_open_level", "easyOpenLevel", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var easy_open_level$field:int;

		public function clearEasyOpenLevel():void {
			hasField$0 &= 0xffffffdf;
			easy_open_level$field = new int();
		}

		public function get hasEasyOpenLevel():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set easyOpenLevel(value:int):void {
			hasField$0 |= 0x20;
			easy_open_level$field = value;
		}

		public function get easyOpenLevel():int {
			return easy_open_level$field;
		}

		/**
		 *  @private
		 */
		public static const NORMAL_OPEN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoFoisonDungeonInfo.normal_open_level", "normalOpenLevel", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var normal_open_level$field:int;

		public function clearNormalOpenLevel():void {
			hasField$0 &= 0xffffffbf;
			normal_open_level$field = new int();
		}

		public function get hasNormalOpenLevel():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set normalOpenLevel(value:int):void {
			hasField$0 |= 0x40;
			normal_open_level$field = value;
		}

		public function get normalOpenLevel():int {
			return normal_open_level$field;
		}

		/**
		 *  @private
		 */
		public static const HARD_OPEN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoFoisonDungeonInfo.hard_open_level", "hardOpenLevel", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hard_open_level$field:int;

		public function clearHardOpenLevel():void {
			hasField$0 &= 0xffffff7f;
			hard_open_level$field = new int();
		}

		public function get hasHardOpenLevel():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set hardOpenLevel(value:int):void {
			hasField$0 |= 0x80;
			hard_open_level$field = value;
		}

		public function get hardOpenLevel():int {
			return hard_open_level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.dungeonId);
			if (hasIsOpen) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, is_open$field);
			}
			for (var openDay$index:uint = 0; openDay$index < this.openDay.length; ++openDay$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.openDay[openDay$index]);
			}
			if (hasNeedPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, need_power$field);
			}
			if (hasPassTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, pass_times$field);
			}
			if (hasPassUlimit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, pass_ulimit$field);
			}
			if (hasCoolTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, cool_time$field);
			}
			if (hasEasyOpenLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, easy_open_level$field);
			}
			if (hasNormalOpenLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, normal_open_level$field);
			}
			if (hasHardOpenLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, hard_open_level$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var dungeon_id$count:uint = 0;
			var is_open$count:uint = 0;
			var need_power$count:uint = 0;
			var pass_times$count:uint = 0;
			var pass_ulimit$count:uint = 0;
			var cool_time$count:uint = 0;
			var easy_open_level$count:uint = 0;
			var normal_open_level$count:uint = 0;
			var hard_open_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (dungeon_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFoisonDungeonInfo.dungeonId cannot be set twice.');
					}
					++dungeon_id$count;
					this.dungeonId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (is_open$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFoisonDungeonInfo.isOpen cannot be set twice.');
					}
					++is_open$count;
					this.isOpen = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 3:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_INT32, this.openDay);
						break;
					}
					this.openDay.push(com.netease.protobuf.ReadUtils.read$TYPE_INT32(input));
					break;
				case 4:
					if (need_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFoisonDungeonInfo.needPower cannot be set twice.');
					}
					++need_power$count;
					this.needPower = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (pass_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFoisonDungeonInfo.passTimes cannot be set twice.');
					}
					++pass_times$count;
					this.passTimes = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (pass_ulimit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFoisonDungeonInfo.passUlimit cannot be set twice.');
					}
					++pass_ulimit$count;
					this.passUlimit = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (cool_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFoisonDungeonInfo.coolTime cannot be set twice.');
					}
					++cool_time$count;
					this.coolTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (easy_open_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFoisonDungeonInfo.easyOpenLevel cannot be set twice.');
					}
					++easy_open_level$count;
					this.easyOpenLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 9:
					if (normal_open_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFoisonDungeonInfo.normalOpenLevel cannot be set twice.');
					}
					++normal_open_level$count;
					this.normalOpenLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 10:
					if (hard_open_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFoisonDungeonInfo.hardOpenLevel cannot be set twice.');
					}
					++hard_open_level$count;
					this.hardOpenLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
