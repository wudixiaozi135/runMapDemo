package serverProto.worldBoss {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.worldBoss.ProtoWorldBossBuffDesc;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoWorldBossOpenInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.worldBoss.ProtoWorldBossOpenInfo.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var id:int;

		/**
		 *  @private
		 */
		public static const START_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoWorldBossOpenInfo.start_time", "startTime", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var start_time$field:int;

		private var hasField$0:uint = 0;

		public function clearStartTime():void {
			hasField$0 &= 0xfffffffe;
			start_time$field = new int();
		}

		public function get hasStartTime():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set startTime(value:int):void {
			hasField$0 |= 0x1;
			start_time$field = value;
		}

		public function get startTime():int {
			return start_time$field;
		}

		/**
		 *  @private
		 */
		public static const END_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoWorldBossOpenInfo.end_time", "endTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var end_time$field:int;

		public function clearEndTime():void {
			hasField$0 &= 0xfffffffd;
			end_time$field = new int();
		}

		public function get hasEndTime():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set endTime(value:int):void {
			hasField$0 |= 0x2;
			end_time$field = value;
		}

		public function get endTime():int {
			return end_time$field;
		}

		/**
		 *  @private
		 */
		public static const PREHEAT_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoWorldBossOpenInfo.preheat_time", "preheatTime", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var preheat_time$field:int;

		public function clearPreheatTime():void {
			hasField$0 &= 0xfffffffb;
			preheat_time$field = new int();
		}

		public function get hasPreheatTime():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set preheatTime(value:int):void {
			hasField$0 |= 0x4;
			preheat_time$field = value;
		}

		public function get preheatTime():int {
			return preheat_time$field;
		}

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.worldBoss.ProtoWorldBossOpenInfo.name", "name", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const DARK_DIVISION_BUFF:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoWorldBossOpenInfo.dark_division_buff", "darkDivisionBuff", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.worldBoss.ProtoWorldBossBuffDesc);

		private var dark_division_buff$field:serverProto.worldBoss.ProtoWorldBossBuffDesc;

		public function clearDarkDivisionBuff():void {
			dark_division_buff$field = null;
		}

		public function get hasDarkDivisionBuff():Boolean {
			return dark_division_buff$field != null;
		}

		public function set darkDivisionBuff(value:serverProto.worldBoss.ProtoWorldBossBuffDesc):void {
			dark_division_buff$field = value;
		}

		public function get darkDivisionBuff():serverProto.worldBoss.ProtoWorldBossBuffDesc {
			return dark_division_buff$field;
		}

		/**
		 *  @private
		 */
		public static const HIKAGE_BUFF:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoWorldBossOpenInfo.hikage_buff", "hikageBuff", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.worldBoss.ProtoWorldBossBuffDesc);

		private var hikage_buff$field:serverProto.worldBoss.ProtoWorldBossBuffDesc;

		public function clearHikageBuff():void {
			hikage_buff$field = null;
		}

		public function get hasHikageBuff():Boolean {
			return hikage_buff$field != null;
		}

		public function set hikageBuff(value:serverProto.worldBoss.ProtoWorldBossBuffDesc):void {
			hikage_buff$field = value;
		}

		public function get hikageBuff():serverProto.worldBoss.ProtoWorldBossBuffDesc {
			return hikage_buff$field;
		}

		/**
		 *  @private
		 */
		public static const REVIVAL_BUFF:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoWorldBossOpenInfo.revival_buff", "revivalBuff", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.worldBoss.ProtoWorldBossBuffDesc);

		private var revival_buff$field:serverProto.worldBoss.ProtoWorldBossBuffDesc;

		public function clearRevivalBuff():void {
			revival_buff$field = null;
		}

		public function get hasRevivalBuff():Boolean {
			return revival_buff$field != null;
		}

		public function set revivalBuff(value:serverProto.worldBoss.ProtoWorldBossBuffDesc):void {
			revival_buff$field = value;
		}

		public function get revivalBuff():serverProto.worldBoss.ProtoWorldBossBuffDesc {
			return revival_buff$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.id);
			if (hasStartTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, start_time$field);
			}
			if (hasEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, end_time$field);
			}
			if (hasPreheatTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, preheat_time$field);
			}
			if (hasName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, name$field);
			}
			if (hasDarkDivisionBuff) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, dark_division_buff$field);
			}
			if (hasHikageBuff) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, hikage_buff$field);
			}
			if (hasRevivalBuff) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, revival_buff$field);
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
			var start_time$count:uint = 0;
			var end_time$count:uint = 0;
			var preheat_time$count:uint = 0;
			var name$count:uint = 0;
			var dark_division_buff$count:uint = 0;
			var hikage_buff$count:uint = 0;
			var revival_buff$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWorldBossOpenInfo.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (start_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWorldBossOpenInfo.startTime cannot be set twice.');
					}
					++start_time$count;
					this.startTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWorldBossOpenInfo.endTime cannot be set twice.');
					}
					++end_time$count;
					this.endTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (preheat_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWorldBossOpenInfo.preheatTime cannot be set twice.');
					}
					++preheat_time$count;
					this.preheatTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWorldBossOpenInfo.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 6:
					if (dark_division_buff$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWorldBossOpenInfo.darkDivisionBuff cannot be set twice.');
					}
					++dark_division_buff$count;
					this.darkDivisionBuff = new serverProto.worldBoss.ProtoWorldBossBuffDesc();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.darkDivisionBuff);
					break;
				case 7:
					if (hikage_buff$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWorldBossOpenInfo.hikageBuff cannot be set twice.');
					}
					++hikage_buff$count;
					this.hikageBuff = new serverProto.worldBoss.ProtoWorldBossBuffDesc();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.hikageBuff);
					break;
				case 8:
					if (revival_buff$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWorldBossOpenInfo.revivalBuff cannot be set twice.');
					}
					++revival_buff$count;
					this.revivalBuff = new serverProto.worldBoss.ProtoWorldBossBuffDesc();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.revivalBuff);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
