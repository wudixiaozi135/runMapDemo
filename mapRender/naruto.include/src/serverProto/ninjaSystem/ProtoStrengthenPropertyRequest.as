package serverProto.ninjaSystem {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.ninjaSystem.ProtoStrengthenPropertyType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoStrengthenPropertyRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_SEQ:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoStrengthenPropertyRequest.ninja_seq", "ninjaSeq", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaSeq:int;

		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.ninjaSystem.ProtoStrengthenPropertyRequest.type", "type", (2 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.ninjaSystem.ProtoStrengthenPropertyType);

		public var type:int;

		/**
		 *  @private
		 */
		public static const ONE_KEY:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoStrengthenPropertyRequest.one_key", "oneKey", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var one_key$field:int;

		private var hasField$0:uint = 0;

		public function clearOneKey():void {
			hasField$0 &= 0xfffffffe;
			one_key$field = new int();
		}

		public function get hasOneKey():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set oneKey(value:int):void {
			hasField$0 |= 0x1;
			one_key$field = value;
		}

		public function get oneKey():int {
			return one_key$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.ninjaSeq);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.type);
			if (hasOneKey) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, one_key$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ninja_seq$count:uint = 0;
			var type$count:uint = 0;
			var one_key$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ninja_seq$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStrengthenPropertyRequest.ninjaSeq cannot be set twice.');
					}
					++ninja_seq$count;
					this.ninjaSeq = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStrengthenPropertyRequest.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 3:
					if (one_key$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStrengthenPropertyRequest.oneKey cannot be set twice.');
					}
					++one_key$count;
					this.oneKey = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
