package serverProto.bag {
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
	public  final class ProtoTaskItemInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoTaskItemInfo.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var id:uint;

		/**
		 *  @private
		 */
		public static const NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoTaskItemInfo.num", "num", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var num:uint;

		/**
		 *  @private
		 */
		public static const INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoTaskItemInfo.index", "index", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var index:uint;

		/**
		 *  @private
		 */
		public static const EXPIRED_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoTaskItemInfo.expired_time", "expiredTime", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var expired_time$field:uint;

		private var hasField$0:uint = 0;

		public function clearExpiredTime():void {
			hasField$0 &= 0xfffffffe;
			expired_time$field = new uint();
		}

		public function get hasExpiredTime():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set expiredTime(value:uint):void {
			hasField$0 |= 0x1;
			expired_time$field = value;
		}

		public function get expiredTime():uint {
			return expired_time$field;
		}

		/**
		 *  @private
		 */
		public static const EXPIRED_REMAINDER_SECOND:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.bag.ProtoTaskItemInfo.expired_remainder_second", "expiredRemainderSecond", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var expired_remainder_second$field:int;

		public function clearExpiredRemainderSecond():void {
			hasField$0 &= 0xfffffffd;
			expired_remainder_second$field = new int();
		}

		public function get hasExpiredRemainderSecond():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set expiredRemainderSecond(value:int):void {
			hasField$0 |= 0x2;
			expired_remainder_second$field = value;
		}

		public function get expiredRemainderSecond():int {
			return expired_remainder_second$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.id);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.num);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.index);
			if (hasExpiredTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, expired_time$field);
			}
			if (hasExpiredRemainderSecond) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, expired_remainder_second$field);
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
			var num$count:uint = 0;
			var index$count:uint = 0;
			var expired_time$count:uint = 0;
			var expired_remainder_second$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskItemInfo.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskItemInfo.num cannot be set twice.');
					}
					++num$count;
					this.num = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskItemInfo.index cannot be set twice.');
					}
					++index$count;
					this.index = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (expired_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskItemInfo.expiredTime cannot be set twice.');
					}
					++expired_time$count;
					this.expiredTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (expired_remainder_second$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskItemInfo.expiredRemainderSecond cannot be set twice.');
					}
					++expired_remainder_second$count;
					this.expiredRemainderSecond = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
