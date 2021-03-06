package serverProto.baseInfo {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.baseInfo.ProtoRoleMoodList;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetRoleMoodListResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoGetRoleMoodListResponse.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const MOOD_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoGetRoleMoodListResponse.mood_list", "moodList", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoRoleMoodList);

		private var mood_list$field:serverProto.baseInfo.ProtoRoleMoodList;

		public function clearMoodList():void {
			mood_list$field = null;
		}

		public function get hasMoodList():Boolean {
			return mood_list$field != null;
		}

		public function set moodList(value:serverProto.baseInfo.ProtoRoleMoodList):void {
			mood_list$field = value;
		}

		public function get moodList():serverProto.baseInfo.ProtoRoleMoodList {
			return mood_list$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.retInfo);
			if (hasMoodList) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, mood_list$field);
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
			var mood_list$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRoleMoodListResponse.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					if (mood_list$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRoleMoodListResponse.moodList cannot be set twice.');
					}
					++mood_list$count;
					this.moodList = new serverProto.baseInfo.ProtoRoleMoodList();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.moodList);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
