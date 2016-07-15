package serverProto.weekCycle {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.weekCycle.ProtoModId;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoModAdditionInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const MOD_ID:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.weekCycle.ProtoModAdditionInfo.mod_id", "modId", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.weekCycle.ProtoModId);

		private var mod_id$field:int;

		private var hasField$0:uint = 0;

		public function clearModId():void {
			hasField$0 &= 0xfffffffe;
			mod_id$field = new int();
		}

		public function get hasModId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set modId(value:int):void {
			hasField$0 |= 0x1;
			mod_id$field = value;
		}

		public function get modId():int {
			return mod_id$field;
		}

		/**
		 *  @private
		 */
		public static const ADDITION:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.weekCycle.ProtoModAdditionInfo.addition", "addition", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var addition$field:uint;

		public function clearAddition():void {
			hasField$0 &= 0xfffffffd;
			addition$field = new uint();
		}

		public function get hasAddition():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set addition(value:uint):void {
			hasField$0 |= 0x2;
			addition$field = value;
		}

		public function get addition():uint {
			return addition$field;
		}

		/**
		 *  @private
		 */
		public static const WEEK_DAY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.weekCycle.ProtoModAdditionInfo.week_day", "weekDay", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var week_day$field:uint;

		public function clearWeekDay():void {
			hasField$0 &= 0xfffffffb;
			week_day$field = new uint();
		}

		public function get hasWeekDay():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set weekDay(value:uint):void {
			hasField$0 |= 0x4;
			week_day$field = value;
		}

		public function get weekDay():uint {
			return week_day$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasModId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, mod_id$field);
			}
			if (hasAddition) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, addition$field);
			}
			if (hasWeekDay) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, week_day$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var mod_id$count:uint = 0;
			var addition$count:uint = 0;
			var week_day$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (mod_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoModAdditionInfo.modId cannot be set twice.');
					}
					++mod_id$count;
					this.modId = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (addition$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoModAdditionInfo.addition cannot be set twice.');
					}
					++addition$count;
					this.addition = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (week_day$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoModAdditionInfo.weekDay cannot be set twice.');
					}
					++week_day$count;
					this.weekDay = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
