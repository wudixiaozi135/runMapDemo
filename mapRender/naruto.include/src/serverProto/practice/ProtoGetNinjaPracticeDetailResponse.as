package serverProto.practice {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.inc.ProtoPlayerKey;
	import serverProto.practice.ProtoPracticeTimeInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetNinjaPracticeDetailResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoGetNinjaPracticeDetailResponse.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const PRACTICE_TIME:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoGetNinjaPracticeDetailResponse.practice_time", "practiceTime", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.practice.ProtoPracticeTimeInfo);

		[ArrayElementType("serverProto.practice.ProtoPracticeTimeInfo")]
		public var practiceTime:Array = [];

		/**
		 *  @private
		 */
		public static const SPARRING_FRIEND:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoGetNinjaPracticeDetailResponse.sparring_friend", "sparringFriend", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var sparring_friend$field:serverProto.inc.ProtoPlayerKey;

		public function clearSparringFriend():void {
			sparring_friend$field = null;
		}

		public function get hasSparringFriend():Boolean {
			return sparring_friend$field != null;
		}

		public function set sparringFriend(value:serverProto.inc.ProtoPlayerKey):void {
			sparring_friend$field = value;
		}

		public function get sparringFriend():serverProto.inc.ProtoPlayerKey {
			return sparring_friend$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.retInfo);
			for (var practiceTime$index:uint = 0; practiceTime$index < this.practiceTime.length; ++practiceTime$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.practiceTime[practiceTime$index]);
			}
			if (hasSparringFriend) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, sparring_friend$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret_info$count:uint = 0;
			var sparring_friend$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetNinjaPracticeDetailResponse.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					this.practiceTime.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.practice.ProtoPracticeTimeInfo()));
					break;
				case 8:
					if (sparring_friend$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetNinjaPracticeDetailResponse.sparringFriend cannot be set twice.');
					}
					++sparring_friend$count;
					this.sparringFriend = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.sparringFriend);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
