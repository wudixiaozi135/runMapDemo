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
	import serverProto.rank.ProtoRankItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetRankRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rank.ProtoGetRankRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const RANK_ITEM_INFOS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.rank.ProtoGetRankRsp.rank_item_infos", "rankItemInfos", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.rank.ProtoRankItemInfo);

		[ArrayElementType("serverProto.rank.ProtoRankItemInfo")]
		public var rankItemInfos:Array = [];

		/**
		 *  @private
		 */
		public static const MY_ITEM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rank.ProtoGetRankRsp.my_item_info", "myItemInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.rank.ProtoRankItemInfo);

		private var my_item_info$field:serverProto.rank.ProtoRankItemInfo;

		public function clearMyItemInfo():void {
			my_item_info$field = null;
		}

		public function get hasMyItemInfo():Boolean {
			return my_item_info$field != null;
		}

		public function set myItemInfo(value:serverProto.rank.ProtoRankItemInfo):void {
			my_item_info$field = value;
		}

		public function get myItemInfo():serverProto.rank.ProtoRankItemInfo {
			return my_item_info$field;
		}

		/**
		 *  @private
		 */
		public static const GAP_TO_FORMER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rank.ProtoGetRankRsp.gap_to_former", "gapToFormer", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var gap_to_former$field:int;

		private var hasField$0:uint = 0;

		public function clearGapToFormer():void {
			hasField$0 &= 0xfffffffe;
			gap_to_former$field = new int();
		}

		public function get hasGapToFormer():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set gapToFormer(value:int):void {
			hasField$0 |= 0x1;
			gap_to_former$field = value;
		}

		public function get gapToFormer():int {
			return gap_to_former$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			for (var rankItemInfos$index:uint = 0; rankItemInfos$index < this.rankItemInfos.length; ++rankItemInfos$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.rankItemInfos[rankItemInfos$index]);
			}
			if (hasMyItemInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, my_item_info$field);
			}
			if (hasGapToFormer) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, gap_to_former$field);
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
			var my_item_info$count:uint = 0;
			var gap_to_former$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRankRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					this.rankItemInfos.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.rank.ProtoRankItemInfo()));
					break;
				case 3:
					if (my_item_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRankRsp.myItemInfo cannot be set twice.');
					}
					++my_item_info$count;
					this.myItemInfo = new serverProto.rank.ProtoRankItemInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.myItemInfo);
					break;
				case 4:
					if (gap_to_former$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRankRsp.gapToFormer cannot be set twice.');
					}
					++gap_to_former$count;
					this.gapToFormer = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
