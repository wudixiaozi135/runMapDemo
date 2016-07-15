package serverProto.activity {
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
	public  final class ProtoExampleAwardRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoExampleAwardRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		private var ret$field:serverProto.inc.ProtoRetInfo;

		public function clearRet():void {
			ret$field = null;
		}

		public function get hasRet():Boolean {
			return ret$field != null;
		}

		public function set ret(value:serverProto.inc.ProtoRetInfo):void {
			ret$field = value;
		}

		public function get ret():serverProto.inc.ProtoRetInfo {
			return ret$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD_IDX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoExampleAwardRsp.award_idx", "awardIdx", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var award_idx$field:uint;

		private var hasField$0:uint = 0;

		public function clearAwardIdx():void {
			hasField$0 &= 0xfffffffe;
			award_idx$field = new uint();
		}

		public function get hasAwardIdx():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set awardIdx(value:uint):void {
			hasField$0 |= 0x1;
			award_idx$field = value;
		}

		public function get awardIdx():uint {
			return award_idx$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoExampleAwardRsp.award_flag", "awardFlag", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var award_flag$field:uint;

		public function clearAwardFlag():void {
			hasField$0 &= 0xfffffffd;
			award_flag$field = new uint();
		}

		public function get hasAwardFlag():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set awardFlag(value:uint):void {
			hasField$0 |= 0x2;
			award_flag$field = value;
		}

		public function get awardFlag():uint {
			return award_flag$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasAwardIdx) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, award_idx$field);
			}
			if (hasAwardFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, award_flag$field);
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
			var award_idx$count:uint = 0;
			var award_flag$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExampleAwardRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (award_idx$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExampleAwardRsp.awardIdx cannot be set twice.');
					}
					++award_idx$count;
					this.awardIdx = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (award_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExampleAwardRsp.awardFlag cannot be set twice.');
					}
					++award_flag$count;
					this.awardFlag = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
