package serverProto.rank {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetTitleListRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rank.ProtoGetTitleListRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const CHOSED_TITLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.rank.ProtoGetTitleListRsp.chosed_title_id", "chosedTitleId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var chosed_title_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearChosedTitleId():void {
			hasField$0 &= 0xfffffffe;
			chosed_title_id$field = new uint();
		}

		public function get hasChosedTitleId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set chosedTitleId(value:uint):void {
			hasField$0 |= 0x1;
			chosed_title_id$field = value;
		}

		public function get chosedTitleId():uint {
			return chosed_title_id$field;
		}

		/**
		 *  @private
		 */
		public static const OWNED_TITLE_LIST:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.rank.ProtoGetTitleListRsp.owned_title_list", "ownedTitleList", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var ownedTitleList:Array = [];

		/**
		 *  @private
		 */
		public static const UN_OWNED_TITLE_LIST:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.rank.ProtoGetTitleListRsp.un_owned_title_list", "unOwnedTitleList", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var unOwnedTitleList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasChosedTitleId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, chosed_title_id$field);
			}
			for (var ownedTitleList$index:uint = 0; ownedTitleList$index < this.ownedTitleList.length; ++ownedTitleList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ownedTitleList[ownedTitleList$index]);
			}
			for (var unOwnedTitleList$index:uint = 0; unOwnedTitleList$index < this.unOwnedTitleList.length; ++unOwnedTitleList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.unOwnedTitleList[unOwnedTitleList$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret$count:uint = 0;
			var chosed_title_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetTitleListRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (chosed_title_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetTitleListRsp.chosedTitleId cannot be set twice.');
					}
					++chosed_title_id$count;
					this.chosedTitleId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.ownedTitleList);
						break;
					}
					this.ownedTitleList.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				case 4:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.unOwnedTitleList);
						break;
					}
					this.unOwnedTitleList.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
