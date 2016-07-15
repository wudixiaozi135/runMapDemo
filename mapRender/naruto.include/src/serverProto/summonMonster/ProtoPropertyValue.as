package serverProto.summonMonster {
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
	public  final class ProtoPropertyValue extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BASE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoPropertyValue.base", "base", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base$field:int;

		private var hasField$0:uint = 0;

		public function clearBase():void {
			hasField$0 &= 0xfffffffe;
			base$field = new int();
		}

		public function get hasBase():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set base(value:int):void {
			hasField$0 |= 0x1;
			base$field = value;
		}

		public function get base():int {
			return base$field;
		}

		/**
		 *  @private
		 */
		public static const EXTRA:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoPropertyValue.extra", "extra", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var extra$field:int;

		public function clearExtra():void {
			hasField$0 &= 0xfffffffd;
			extra$field = new int();
		}

		public function get hasExtra():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set extra(value:int):void {
			hasField$0 |= 0x2;
			extra$field = value;
		}

		public function get extra():int {
			return extra$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasBase) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, base$field);
			}
			if (hasExtra) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, extra$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var base$count:uint = 0;
			var extra$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (base$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPropertyValue.base cannot be set twice.');
					}
					++base$count;
					this.base = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (extra$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPropertyValue.extra cannot be set twice.');
					}
					++extra$count;
					this.extra = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
