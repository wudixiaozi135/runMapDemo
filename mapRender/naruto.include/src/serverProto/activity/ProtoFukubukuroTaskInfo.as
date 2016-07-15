package serverProto.activity {
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
	public  final class ProtoFukubukuroTaskInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoFukubukuroTaskInfo.count", "count", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var count$field:uint;

		private var hasField$0:uint = 0;

		public function clearCount():void {
			hasField$0 &= 0xfffffffe;
			count$field = new uint();
		}

		public function get hasCount():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set count(value:uint):void {
			hasField$0 |= 0x1;
			count$field = value;
		}

		public function get count():uint {
			return count$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoFukubukuroTaskInfo.max_count", "maxCount", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_count$field:uint;

		public function clearMaxCount():void {
			hasField$0 &= 0xfffffffd;
			max_count$field = new uint();
		}

		public function get hasMaxCount():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set maxCount(value:uint):void {
			hasField$0 |= 0x2;
			max_count$field = value;
		}

		public function get maxCount():uint {
			return max_count$field;
		}

		/**
		 *  @private
		 */
		public static const ACTIVE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoFukubukuroTaskInfo.active", "active", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var active$field:uint;

		public function clearActive():void {
			hasField$0 &= 0xfffffffb;
			active$field = new uint();
		}

		public function get hasActive():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set active(value:uint):void {
			hasField$0 |= 0x4;
			active$field = value;
		}

		public function get active():uint {
			return active$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, count$field);
			}
			if (hasMaxCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, max_count$field);
			}
			if (hasActive) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, active$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var count$count:uint = 0;
			var max_count$count:uint = 0;
			var active$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFukubukuroTaskInfo.count cannot be set twice.');
					}
					++count$count;
					this.count = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (max_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFukubukuroTaskInfo.maxCount cannot be set twice.');
					}
					++max_count$count;
					this.maxCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (active$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFukubukuroTaskInfo.active cannot be set twice.');
					}
					++active$count;
					this.active = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
