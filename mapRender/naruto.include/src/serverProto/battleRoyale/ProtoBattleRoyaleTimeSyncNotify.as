package serverProto.battleRoyale {
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
	public  final class ProtoBattleRoyaleTimeSyncNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NOW:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoBattleRoyaleTimeSyncNotify.now", "now", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var now:UInt64;

		/**
		 *  @private
		 */
		public static const SIGN_UP_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoBattleRoyaleTimeSyncNotify.sign_up_time", "signUpTime", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var sign_up_time$field:UInt64;

		public function clearSignUpTime():void {
			sign_up_time$field = null;
		}

		public function get hasSignUpTime():Boolean {
			return sign_up_time$field != null;
		}

		public function set signUpTime(value:UInt64):void {
			sign_up_time$field = value;
		}

		public function get signUpTime():UInt64 {
			return sign_up_time$field;
		}

		/**
		 *  @private
		 */
		public static const ACTIVITY_OVER_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoBattleRoyaleTimeSyncNotify.activity_over_time", "activityOverTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var activity_over_time$field:UInt64;

		public function clearActivityOverTime():void {
			activity_over_time$field = null;
		}

		public function get hasActivityOverTime():Boolean {
			return activity_over_time$field != null;
		}

		public function set activityOverTime(value:UInt64):void {
			activity_over_time$field = value;
		}

		public function get activityOverTime():UInt64 {
			return activity_over_time$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, this.now);
			if (hasSignUpTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, sign_up_time$field);
			}
			if (hasActivityOverTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, activity_over_time$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var now$count:uint = 0;
			var sign_up_time$count:uint = 0;
			var activity_over_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (now$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleTimeSyncNotify.now cannot be set twice.');
					}
					++now$count;
					this.now = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 2:
					if (sign_up_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleTimeSyncNotify.signUpTime cannot be set twice.');
					}
					++sign_up_time$count;
					this.signUpTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 3:
					if (activity_over_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBattleRoyaleTimeSyncNotify.activityOverTime cannot be set twice.');
					}
					++activity_over_time$count;
					this.activityOverTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
