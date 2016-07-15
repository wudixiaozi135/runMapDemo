package serverProto.baseInfo {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.baseInfo.ProtoStarDetail;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaStarInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_PIECES_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaStarInfo.ninja_pieces_id", "ninjaPiecesId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_pieces_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearNinjaPiecesId():void {
			hasField$0 &= 0xfffffffe;
			ninja_pieces_id$field = new uint();
		}

		public function get hasNinjaPiecesId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set ninjaPiecesId(value:uint):void {
			hasField$0 |= 0x1;
			ninja_pieces_id$field = value;
		}

		public function get ninjaPiecesId():uint {
			return ninja_pieces_id$field;
		}

		/**
		 *  @private
		 */
		public static const BEGIN_STAR:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaStarInfo.begin_star", "beginStar", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var begin_star$field:uint;

		public function clearBeginStar():void {
			hasField$0 &= 0xfffffffd;
			begin_star$field = new uint();
		}

		public function get hasBeginStar():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set beginStar(value:uint):void {
			hasField$0 |= 0x2;
			begin_star$field = value;
		}

		public function get beginStar():uint {
			return begin_star$field;
		}

		/**
		 *  @private
		 */
		public static const STAR_DETAIL:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaStarInfo.star_detail", "starDetail", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoStarDetail);

		[ArrayElementType("serverProto.baseInfo.ProtoStarDetail")]
		public var starDetail:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasNinjaPiecesId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, ninja_pieces_id$field);
			}
			if (hasBeginStar) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, begin_star$field);
			}
			for (var starDetail$index:uint = 0; starDetail$index < this.starDetail.length; ++starDetail$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.starDetail[starDetail$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ninja_pieces_id$count:uint = 0;
			var begin_star$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ninja_pieces_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaStarInfo.ninjaPiecesId cannot be set twice.');
					}
					++ninja_pieces_id$count;
					this.ninjaPiecesId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (begin_star$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaStarInfo.beginStar cannot be set twice.');
					}
					++begin_star$count;
					this.beginStar = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					this.starDetail.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.baseInfo.ProtoStarDetail()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
