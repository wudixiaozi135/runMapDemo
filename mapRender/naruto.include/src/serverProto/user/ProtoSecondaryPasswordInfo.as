package serverProto.user {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.user.ProtoSecondaryPasswordStatus;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoSecondaryPasswordInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const STATUS:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.user.ProtoSecondaryPasswordInfo.status", "status", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.user.ProtoSecondaryPasswordStatus);

		public var status:int;

		/**
		 *  @private
		 */
		public static const REMAIND_FORGET_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoSecondaryPasswordInfo.remaind_forget_time", "remaindForgetTime", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remaind_forget_time$field:uint;

		private var hasField$0:uint = 0;

		public function clearRemaindForgetTime():void {
			hasField$0 &= 0xfffffffe;
			remaind_forget_time$field = new uint();
		}

		public function get hasRemaindForgetTime():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set remaindForgetTime(value:uint):void {
			hasField$0 |= 0x1;
			remaind_forget_time$field = value;
		}

		public function get remaindForgetTime():uint {
			return remaind_forget_time$field;
		}

		/**
		 *  @private
		 */
		public static const CAN_TRY_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoSecondaryPasswordInfo.can_try_times", "canTryTimes", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var can_try_times$field:int;

		public function clearCanTryTimes():void {
			hasField$0 &= 0xfffffffd;
			can_try_times$field = new int();
		}

		public function get hasCanTryTimes():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set canTryTimes(value:int):void {
			hasField$0 |= 0x2;
			can_try_times$field = value;
		}

		public function get canTryTimes():int {
			return can_try_times$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.status);
			if (hasRemaindForgetTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, remaind_forget_time$field);
			}
			if (hasCanTryTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, can_try_times$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var status$count:uint = 0;
			var remaind_forget_time$count:uint = 0;
			var can_try_times$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSecondaryPasswordInfo.status cannot be set twice.');
					}
					++status$count;
					this.status = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (remaind_forget_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSecondaryPasswordInfo.remaindForgetTime cannot be set twice.');
					}
					++remaind_forget_time$count;
					this.remaindForgetTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (can_try_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSecondaryPasswordInfo.canTryTimes cannot be set twice.');
					}
					++can_try_times$count;
					this.canTryTimes = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
