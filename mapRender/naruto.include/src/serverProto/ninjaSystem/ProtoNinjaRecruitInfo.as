package serverProto.ninjaSystem {
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
	public  final class ProtoNinjaRecruitInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaSystem.ProtoNinjaRecruitInfo.ninja_id", "ninjaId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaId:uint;

		/**
		 *  @private
		 */
		public static const NINJA_PIECES_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaSystem.ProtoNinjaRecruitInfo.ninja_pieces_id", "ninjaPiecesId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaPiecesId:uint;

		/**
		 *  @private
		 */
		public static const NINJA_PIECES_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaSystem.ProtoNinjaRecruitInfo.ninja_pieces_count", "ninjaPiecesCount", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaPiecesCount:uint;

		/**
		 *  @private
		 */
		public static const RECRUIT_PIECES_NEED:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaSystem.ProtoNinjaRecruitInfo.recruit_pieces_need", "recruitPiecesNeed", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var recruitPiecesNeed:uint;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ninjaId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ninjaPiecesId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ninjaPiecesCount);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.recruitPiecesNeed);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ninja_id$count:uint = 0;
			var ninja_pieces_id$count:uint = 0;
			var ninja_pieces_count$count:uint = 0;
			var recruit_pieces_need$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ninja_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaRecruitInfo.ninjaId cannot be set twice.');
					}
					++ninja_id$count;
					this.ninjaId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (ninja_pieces_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaRecruitInfo.ninjaPiecesId cannot be set twice.');
					}
					++ninja_pieces_id$count;
					this.ninjaPiecesId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (ninja_pieces_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaRecruitInfo.ninjaPiecesCount cannot be set twice.');
					}
					++ninja_pieces_count$count;
					this.ninjaPiecesCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (recruit_pieces_need$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaRecruitInfo.recruitPiecesNeed cannot be set twice.');
					}
					++recruit_pieces_need$count;
					this.recruitPiecesNeed = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
