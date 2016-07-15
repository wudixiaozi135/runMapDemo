package serverProto.expedition {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.expedition.ProtoExpeditionAwardItem;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetExpeditionHeapAwardResp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoGetExpeditionHeapAwardResp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const AWARD_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoGetExpeditionHeapAwardResp.award_list", "awardList", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.expedition.ProtoExpeditionAwardItem);

		[ArrayElementType("serverProto.expedition.ProtoExpeditionAwardItem")]
		public var awardList:Array = [];

		/**
		 *  @private
		 */
		public static const COPPER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoGetExpeditionHeapAwardResp.copper", "copper", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var copper$field:int;

		private var hasField$0:uint = 0;

		public function clearCopper():void {
			hasField$0 &= 0xfffffffe;
			copper$field = new int();
		}

		public function get hasCopper():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set copper(value:int):void {
			hasField$0 |= 0x1;
			copper$field = value;
		}

		public function get copper():int {
			return copper$field;
		}

		/**
		 *  @private
		 */
		public static const SCORE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoGetExpeditionHeapAwardResp.score", "score", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var score$field:int;

		public function clearScore():void {
			hasField$0 &= 0xfffffffd;
			score$field = new int();
		}

		public function get hasScore():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set score(value:int):void {
			hasField$0 |= 0x2;
			score$field = value;
		}

		public function get score():int {
			return score$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			for (var awardList$index:uint = 0; awardList$index < this.awardList.length; ++awardList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.awardList[awardList$index]);
			}
			if (hasCopper) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, copper$field);
			}
			if (hasScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, score$field);
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
			var copper$count:uint = 0;
			var score$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetExpeditionHeapAwardResp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					this.awardList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.expedition.ProtoExpeditionAwardItem()));
					break;
				case 3:
					if (copper$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetExpeditionHeapAwardResp.copper cannot be set twice.');
					}
					++copper$count;
					this.copper = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetExpeditionHeapAwardResp.score cannot be set twice.');
					}
					++score$count;
					this.score = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
