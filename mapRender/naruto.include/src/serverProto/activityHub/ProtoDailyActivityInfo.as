package serverProto.activityHub {
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
	public  final class ProtoDailyActivityInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activityHub.ProtoDailyActivityInfo.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var id:int;

		/**
		 *  @private
		 */
		public static const ALL_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activityHub.ProtoDailyActivityInfo.all_time", "allTime", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var all_time$field:int;

		private var hasField$0:uint = 0;

		public function clearAllTime():void {
			hasField$0 &= 0xfffffffe;
			all_time$field = new int();
		}

		public function get hasAllTime():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set allTime(value:int):void {
			hasField$0 |= 0x1;
			all_time$field = value;
		}

		public function get allTime():int {
			return all_time$field;
		}

		/**
		 *  @private
		 */
		public static const REMAINDER_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activityHub.ProtoDailyActivityInfo.remainder_time", "remainderTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remainder_time$field:int;

		public function clearRemainderTime():void {
			hasField$0 &= 0xfffffffd;
			remainder_time$field = new int();
		}

		public function get hasRemainderTime():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set remainderTime(value:int):void {
			hasField$0 |= 0x2;
			remainder_time$field = value;
		}

		public function get remainderTime():int {
			return remainder_time$field;
		}

		/**
		 *  @private
		 */
		public static const CD_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activityHub.ProtoDailyActivityInfo.cd_time", "cdTime", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var cd_time$field:int;

		public function clearCdTime():void {
			hasField$0 &= 0xfffffffb;
			cd_time$field = new int();
		}

		public function get hasCdTime():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set cdTime(value:int):void {
			hasField$0 |= 0x4;
			cd_time$field = value;
		}

		public function get cdTime():int {
			return cd_time$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.id);
			if (hasAllTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, all_time$field);
			}
			if (hasRemainderTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, remainder_time$field);
			}
			if (hasCdTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, cd_time$field);
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
			var all_time$count:uint = 0;
			var remainder_time$count:uint = 0;
			var cd_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDailyActivityInfo.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (all_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDailyActivityInfo.allTime cannot be set twice.');
					}
					++all_time$count;
					this.allTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (remainder_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDailyActivityInfo.remainderTime cannot be set twice.');
					}
					++remainder_time$count;
					this.remainderTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (cd_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDailyActivityInfo.cdTime cannot be set twice.');
					}
					++cd_time$count;
					this.cdTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
