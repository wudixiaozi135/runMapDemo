package serverProto.basePvp {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.basePvp.ProtoBaseInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBasePvpMatchingResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBasePvpMatchingResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const BASE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBasePvpMatchingResponse.base_info", "baseInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.basePvp.ProtoBaseInfo);

		private var base_info$field:serverProto.basePvp.ProtoBaseInfo;

		public function clearBaseInfo():void {
			base_info$field = null;
		}

		public function get hasBaseInfo():Boolean {
			return base_info$field != null;
		}

		public function set baseInfo(value:serverProto.basePvp.ProtoBaseInfo):void {
			base_info$field = value;
		}

		public function get baseInfo():serverProto.basePvp.ProtoBaseInfo {
			return base_info$field;
		}

		/**
		 *  @private
		 */
		public static const NEXT_MATCH_COST:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBasePvpMatchingResponse.next_match_cost", "nextMatchCost", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var next_match_cost$field:int;

		private var hasField$0:uint = 0;

		public function clearNextMatchCost():void {
			hasField$0 &= 0xfffffffe;
			next_match_cost$field = new int();
		}

		public function get hasNextMatchCost():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set nextMatchCost(value:int):void {
			hasField$0 |= 0x1;
			next_match_cost$field = value;
		}

		public function get nextMatchCost():int {
			return next_match_cost$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasBaseInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, base_info$field);
			}
			if (hasNextMatchCost) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, next_match_cost$field);
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
			var base_info$count:uint = 0;
			var next_match_cost$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBasePvpMatchingResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (base_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBasePvpMatchingResponse.baseInfo cannot be set twice.');
					}
					++base_info$count;
					this.baseInfo = new serverProto.basePvp.ProtoBaseInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.baseInfo);
					break;
				case 3:
					if (next_match_cost$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBasePvpMatchingResponse.nextMatchCost cannot be set twice.');
					}
					++next_match_cost$count;
					this.nextMatchCost = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
