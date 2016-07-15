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
	public  final class ProtoZongziEatReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const EAT_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoZongziEatReq.eat_type", "eatType", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var eat_type$field:uint;

		private var hasField$0:uint = 0;

		public function clearEatType():void {
			hasField$0 &= 0xfffffffe;
			eat_type$field = new uint();
		}

		public function get hasEatType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set eatType(value:uint):void {
			hasField$0 |= 0x1;
			eat_type$field = value;
		}

		public function get eatType():uint {
			return eat_type$field;
		}

		/**
		 *  @private
		 */
		public static const EAT_ALL:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.activity.ProtoZongziEatReq.eat_all", "eatAll", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var eat_all$field:Boolean;

		public function clearEatAll():void {
			hasField$0 &= 0xfffffffd;
			eat_all$field = new Boolean();
		}

		public function get hasEatAll():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set eatAll(value:Boolean):void {
			hasField$0 |= 0x2;
			eat_all$field = value;
		}

		public function get eatAll():Boolean {
			if(!hasEatAll) {
				return true;
			}
			return eat_all$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasEatType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, eat_type$field);
			}
			if (hasEatAll) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, eat_all$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var eat_type$count:uint = 0;
			var eat_all$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (eat_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoZongziEatReq.eatType cannot be set twice.');
					}
					++eat_type$count;
					this.eatType = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (eat_all$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoZongziEatReq.eatAll cannot be set twice.');
					}
					++eat_all$count;
					this.eatAll = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
