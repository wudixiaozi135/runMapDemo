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
	import serverProto.baseInfo.ProtoNinjaMoodDetailInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoRefreshMoodResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoRefreshMoodResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const NINJA_MOOD_DETAIL_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoRefreshMoodResponse.ninja_mood_detail_info", "ninjaMoodDetailInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaMoodDetailInfo);

		private var ninja_mood_detail_info$field:serverProto.baseInfo.ProtoNinjaMoodDetailInfo;

		public function clearNinjaMoodDetailInfo():void {
			ninja_mood_detail_info$field = null;
		}

		public function get hasNinjaMoodDetailInfo():Boolean {
			return ninja_mood_detail_info$field != null;
		}

		public function set ninjaMoodDetailInfo(value:serverProto.baseInfo.ProtoNinjaMoodDetailInfo):void {
			ninja_mood_detail_info$field = value;
		}

		public function get ninjaMoodDetailInfo():serverProto.baseInfo.ProtoNinjaMoodDetailInfo {
			return ninja_mood_detail_info$field;
		}

		/**
		 *  @private
		 */
		public static const REFRESH_TARGET_SCCUESS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoRefreshMoodResponse.refresh_target_sccuess", "refreshTargetSccuess", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var refresh_target_sccuess$field:int;

		private var hasField$0:uint = 0;

		public function clearRefreshTargetSccuess():void {
			hasField$0 &= 0xfffffffe;
			refresh_target_sccuess$field = new int();
		}

		public function get hasRefreshTargetSccuess():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set refreshTargetSccuess(value:int):void {
			hasField$0 |= 0x1;
			refresh_target_sccuess$field = value;
		}

		public function get refreshTargetSccuess():int {
			return refresh_target_sccuess$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasNinjaMoodDetailInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_mood_detail_info$field);
			}
			if (hasRefreshTargetSccuess) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, refresh_target_sccuess$field);
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
			var ninja_mood_detail_info$count:uint = 0;
			var refresh_target_sccuess$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRefreshMoodResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (ninja_mood_detail_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRefreshMoodResponse.ninjaMoodDetailInfo cannot be set twice.');
					}
					++ninja_mood_detail_info$count;
					this.ninjaMoodDetailInfo = new serverProto.baseInfo.ProtoNinjaMoodDetailInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaMoodDetailInfo);
					break;
				case 3:
					if (refresh_target_sccuess$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRefreshMoodResponse.refreshTargetSccuess cannot be set twice.');
					}
					++refresh_target_sccuess$count;
					this.refreshTargetSccuess = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
