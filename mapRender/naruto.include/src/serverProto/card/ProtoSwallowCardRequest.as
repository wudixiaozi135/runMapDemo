package serverProto.card {
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
	public  final class ProtoSwallowCardRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_SEQUENCE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.card.ProtoSwallowCardRequest.ninja_sequence", "ninjaSequence", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaSequence:uint;

		/**
		 *  @private
		 */
		public static const NINJA_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.card.ProtoSwallowCardRequest.ninja_id", "ninjaId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaId:uint;

		/**
		 *  @private
		 */
		public static const CARD_LIST:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.card.ProtoSwallowCardRequest.card_list", "cardList", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var cardList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ninjaSequence);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ninjaId);
			for (var cardList$index:uint = 0; cardList$index < this.cardList.length; ++cardList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.cardList[cardList$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ninja_sequence$count:uint = 0;
			var ninja_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ninja_sequence$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSwallowCardRequest.ninjaSequence cannot be set twice.');
					}
					++ninja_sequence$count;
					this.ninjaSequence = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (ninja_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSwallowCardRequest.ninjaId cannot be set twice.');
					}
					++ninja_id$count;
					this.ninjaId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.cardList);
						break;
					}
					this.cardList.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
