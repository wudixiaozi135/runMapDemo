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
	public  final class ProtoSwapNinjaShortKeyRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const FORMATION_ID:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.formation.ProtoSwapNinjaShortKeyRequest.formation_id", "formationId", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.formation.FormationType);

		public var formationId:int;

		/**
		 *  @private
		 */
		public static const SWAP_FROM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formation.ProtoSwapNinjaShortKeyRequest.swap_from", "swapFrom", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var swapFrom:uint;

		/**
		 *  @private
		 */
		public static const SWAP_TO:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formation.ProtoSwapNinjaShortKeyRequest.swap_to", "swapTo", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var swapTo:uint;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.formationId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.swapFrom);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.swapTo);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var formation_id$count:uint = 0;
			var swap_from$count:uint = 0;
			var swap_to$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (formation_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSwapNinjaShortKeyRequest.formationId cannot be set twice.');
					}
					++formation_id$count;
					this.formationId = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (swap_from$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSwapNinjaShortKeyRequest.swapFrom cannot be set twice.');
					}
					++swap_from$count;
					this.swapFrom = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (swap_to$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSwapNinjaShortKeyRequest.swapTo cannot be set twice.');
					}
					++swap_to$count;
					this.swapTo = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
