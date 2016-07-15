package serverProto.formation {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.formation.FormationType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoExchangeFormationReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const LEFT:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.formation.ProtoExchangeFormationReq.left", "left", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.formation.FormationType);

		public var left:int;

		/**
		 *  @private
		 */
		public static const RIGHT:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.formation.ProtoExchangeFormationReq.right", "right", (2 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.formation.FormationType);

		public var right:int;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.left);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.right);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var left$count:uint = 0;
			var right$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (left$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExchangeFormationReq.left cannot be set twice.');
					}
					++left$count;
					this.left = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (right$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExchangeFormationReq.right cannot be set twice.');
					}
					++right$count;
					this.right = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
