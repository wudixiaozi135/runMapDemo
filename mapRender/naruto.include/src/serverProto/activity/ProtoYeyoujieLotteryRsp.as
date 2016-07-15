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
	public  final class ProtoYeyoujieLotteryRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoYeyoujieLotteryRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const BOX_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoYeyoujieLotteryRsp.box_id", "boxId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var box_id$field:int;

		private var hasField$0:uint = 0;

		public function clearBoxId():void {
			hasField$0 &= 0xfffffffe;
			box_id$field = new int();
		}

		public function get hasBoxId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set boxId(value:int):void {
			hasField$0 |= 0x1;
			box_id$field = value;
		}

		public function get boxId():int {
			return box_id$field;
		}

		/**
		 *  @private
		 */
		public static const IF_CRIT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoYeyoujieLotteryRsp.if_crit", "ifCrit", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var if_crit$field:int;

		public function clearIfCrit():void {
			hasField$0 &= 0xfffffffd;
			if_crit$field = new int();
		}

		public function get hasIfCrit():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set ifCrit(value:int):void {
			hasField$0 |= 0x2;
			if_crit$field = value;
		}

		public function get ifCrit():int {
			return if_crit$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasBoxId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, box_id$field);
			}
			if (hasIfCrit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, if_crit$field);
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
			var box_id$count:uint = 0;
			var if_crit$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoYeyoujieLotteryRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (box_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoYeyoujieLotteryRsp.boxId cannot be set twice.');
					}
					++box_id$count;
					this.boxId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (if_crit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoYeyoujieLotteryRsp.ifCrit cannot be set twice.');
					}
					++if_crit$count;
					this.ifCrit = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
