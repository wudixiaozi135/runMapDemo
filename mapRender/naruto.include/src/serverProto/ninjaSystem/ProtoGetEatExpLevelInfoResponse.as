package serverProto.ninjaSystem {
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
	public  final class ProtoGetEatExpLevelInfoResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetEatExpLevelInfoResponse.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const NEED_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoGetEatExpLevelInfoResponse.need_num", "needNum", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var need_num$field:int;

		private var hasField$0:uint = 0;

		public function clearNeedNum():void {
			hasField$0 &= 0xfffffffe;
			need_num$field = new int();
		}

		public function get hasNeedNum():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set needNum(value:int):void {
			hasField$0 |= 0x1;
			need_num$field = value;
		}

		public function get needNum():int {
			return need_num$field;
		}

		/**
		 *  @private
		 */
		public static const REAL_REACH_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoGetEatExpLevelInfoResponse.real_reach_level", "realReachLevel", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var real_reach_level$field:int;

		public function clearRealReachLevel():void {
			hasField$0 &= 0xfffffffd;
			real_reach_level$field = new int();
		}

		public function get hasRealReachLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set realReachLevel(value:int):void {
			hasField$0 |= 0x2;
			real_reach_level$field = value;
		}

		public function get realReachLevel():int {
			return real_reach_level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.retInfo);
			if (hasNeedNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, need_num$field);
			}
			if (hasRealReachLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, real_reach_level$field);
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
			var need_num$count:uint = 0;
			var real_reach_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetEatExpLevelInfoResponse.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					if (need_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetEatExpLevelInfoResponse.needNum cannot be set twice.');
					}
					++need_num$count;
					this.needNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (real_reach_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetEatExpLevelInfoResponse.realReachLevel cannot be set twice.');
					}
					++real_reach_level$count;
					this.realReachLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
