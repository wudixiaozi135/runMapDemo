package serverProto.friend {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.friend.ProtoFriendRecommendInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoRecommendFriendNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const REASON:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.friend.ProtoRecommendFriendNotify.reason", "reason", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reason$field:uint;

		private var hasField$0:uint = 0;

		public function clearReason():void {
			hasField$0 &= 0xfffffffe;
			reason$field = new uint();
		}

		public function get hasReason():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set reason(value:uint):void {
			hasField$0 |= 0x1;
			reason$field = value;
		}

		public function get reason():uint {
			return reason$field;
		}

		/**
		 *  @private
		 */
		public static const RECOMMAND_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.friend.ProtoRecommendFriendNotify.recommand_list", "recommandList", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.friend.ProtoFriendRecommendInfo);

		[ArrayElementType("serverProto.friend.ProtoFriendRecommendInfo")]
		public var recommandList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasReason) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, reason$field);
			}
			for (var recommandList$index:uint = 0; recommandList$index < this.recommandList.length; ++recommandList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.recommandList[recommandList$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var reason$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (reason$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRecommendFriendNotify.reason cannot be set twice.');
					}
					++reason$count;
					this.reason = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					this.recommandList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.friend.ProtoFriendRecommendInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
