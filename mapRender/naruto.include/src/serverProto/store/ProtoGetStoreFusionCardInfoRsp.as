package serverProto.store {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.store.ProtoStoreFusionCardInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetStoreFusionCardInfoRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.store.ProtoGetStoreFusionCardInfoRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const BATCH_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoGetStoreFusionCardInfoRsp.batch_id", "batchId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var batch_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearBatchId():void {
			hasField$0 &= 0xfffffffe;
			batch_id$field = new uint();
		}

		public function get hasBatchId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set batchId(value:uint):void {
			hasField$0 |= 0x1;
			batch_id$field = value;
		}

		public function get batchId():uint {
			return batch_id$field;
		}

		/**
		 *  @private
		 */
		public static const JADE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoGetStoreFusionCardInfoRsp.jade", "jade", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var jade$field:uint;

		public function clearJade():void {
			hasField$0 &= 0xfffffffd;
			jade$field = new uint();
		}

		public function get hasJade():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set jade(value:uint):void {
			hasField$0 |= 0x2;
			jade$field = value;
		}

		public function get jade():uint {
			return jade$field;
		}

		/**
		 *  @private
		 */
		public static const REMAIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoGetStoreFusionCardInfoRsp.remain_time", "remainTime", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remain_time$field:uint;

		public function clearRemainTime():void {
			hasField$0 &= 0xfffffffb;
			remain_time$field = new uint();
		}

		public function get hasRemainTime():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set remainTime(value:uint):void {
			hasField$0 |= 0x4;
			remain_time$field = value;
		}

		public function get remainTime():uint {
			return remain_time$field;
		}

		/**
		 *  @private
		 */
		public static const CARD_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.store.ProtoGetStoreFusionCardInfoRsp.card_info", "cardInfo", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.store.ProtoStoreFusionCardInfo);

		[ArrayElementType("serverProto.store.ProtoStoreFusionCardInfo")]
		public var cardInfo:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasBatchId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, batch_id$field);
			}
			if (hasJade) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, jade$field);
			}
			if (hasRemainTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, remain_time$field);
			}
			for (var cardInfo$index:uint = 0; cardInfo$index < this.cardInfo.length; ++cardInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.cardInfo[cardInfo$index]);
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
			var batch_id$count:uint = 0;
			var jade$count:uint = 0;
			var remain_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetStoreFusionCardInfoRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (batch_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetStoreFusionCardInfoRsp.batchId cannot be set twice.');
					}
					++batch_id$count;
					this.batchId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (jade$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetStoreFusionCardInfoRsp.jade cannot be set twice.');
					}
					++jade$count;
					this.jade = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (remain_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetStoreFusionCardInfoRsp.remainTime cannot be set twice.');
					}
					++remain_time$count;
					this.remainTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					this.cardInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.store.ProtoStoreFusionCardInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
