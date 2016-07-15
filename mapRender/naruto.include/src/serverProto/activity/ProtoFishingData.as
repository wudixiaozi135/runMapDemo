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
	public  final class ProtoFishingData extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const FISH_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoFishingData.fish_type", "fishType", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var fish_type$field:uint;

		private var hasField$0:uint = 0;

		public function clearFishType():void {
			hasField$0 &= 0xfffffffe;
			fish_type$field = new uint();
		}

		public function get hasFishType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set fishType(value:uint):void {
			hasField$0 |= 0x1;
			fish_type$field = value;
		}

		public function get fishType():uint {
			return fish_type$field;
		}

		/**
		 *  @private
		 */
		public static const FISH_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoFishingData.fish_num", "fishNum", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var fish_num$field:uint;

		public function clearFishNum():void {
			hasField$0 &= 0xfffffffd;
			fish_num$field = new uint();
		}

		public function get hasFishNum():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set fishNum(value:uint):void {
			hasField$0 |= 0x2;
			fish_num$field = value;
		}

		public function get fishNum():uint {
			return fish_num$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasFishType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, fish_type$field);
			}
			if (hasFishNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, fish_num$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var fish_type$count:uint = 0;
			var fish_num$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (fish_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFishingData.fishType cannot be set twice.');
					}
					++fish_type$count;
					this.fishType = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (fish_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFishingData.fishNum cannot be set twice.');
					}
					++fish_num$count;
					this.fishNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
