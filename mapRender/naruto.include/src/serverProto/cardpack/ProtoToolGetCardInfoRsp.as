package serverProto.cardpack {
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
	public  final class ProtoToolGetCardInfoRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoToolGetCardInfoRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const GENERAL_EPIC_QUILT_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.cardpack.ProtoToolGetCardInfoRsp.general_epic_quilt_count", "generalEpicQuiltCount", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var general_epic_quilt_count$field:int;

		private var hasField$0:uint = 0;

		public function clearGeneralEpicQuiltCount():void {
			hasField$0 &= 0xfffffffe;
			general_epic_quilt_count$field = new int();
		}

		public function get hasGeneralEpicQuiltCount():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set generalEpicQuiltCount(value:int):void {
			hasField$0 |= 0x1;
			general_epic_quilt_count$field = value;
		}

		public function get generalEpicQuiltCount():int {
			return general_epic_quilt_count$field;
		}

		/**
		 *  @private
		 */
		public static const GENERAL_QUILT_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.cardpack.ProtoToolGetCardInfoRsp.general_quilt_count", "generalQuiltCount", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var general_quilt_count$field:int;

		public function clearGeneralQuiltCount():void {
			hasField$0 &= 0xfffffffd;
			general_quilt_count$field = new int();
		}

		public function get hasGeneralQuiltCount():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set generalQuiltCount(value:int):void {
			hasField$0 |= 0x2;
			general_quilt_count$field = value;
		}

		public function get generalQuiltCount():int {
			return general_quilt_count$field;
		}

		/**
		 *  @private
		 */
		public static const STRONG_QUILT_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.cardpack.ProtoToolGetCardInfoRsp.strong_quilt_count", "strongQuiltCount", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var strong_quilt_count$field:int;

		public function clearStrongQuiltCount():void {
			hasField$0 &= 0xfffffffb;
			strong_quilt_count$field = new int();
		}

		public function get hasStrongQuiltCount():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set strongQuiltCount(value:int):void {
			hasField$0 |= 0x4;
			strong_quilt_count$field = value;
		}

		public function get strongQuiltCount():int {
			return strong_quilt_count$field;
		}

		/**
		 *  @private
		 */
		public static const STRONG_EPIC_QUILT_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.cardpack.ProtoToolGetCardInfoRsp.strong_epic_quilt_count", "strongEpicQuiltCount", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var strong_epic_quilt_count$field:int;

		public function clearStrongEpicQuiltCount():void {
			hasField$0 &= 0xfffffff7;
			strong_epic_quilt_count$field = new int();
		}

		public function get hasStrongEpicQuiltCount():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set strongEpicQuiltCount(value:int):void {
			hasField$0 |= 0x8;
			strong_epic_quilt_count$field = value;
		}

		public function get strongEpicQuiltCount():int {
			return strong_epic_quilt_count$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasGeneralEpicQuiltCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, general_epic_quilt_count$field);
			}
			if (hasGeneralQuiltCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, general_quilt_count$field);
			}
			if (hasStrongQuiltCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, strong_quilt_count$field);
			}
			if (hasStrongEpicQuiltCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, strong_epic_quilt_count$field);
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
			var general_epic_quilt_count$count:uint = 0;
			var general_quilt_count$count:uint = 0;
			var strong_quilt_count$count:uint = 0;
			var strong_epic_quilt_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoToolGetCardInfoRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (general_epic_quilt_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoToolGetCardInfoRsp.generalEpicQuiltCount cannot be set twice.');
					}
					++general_epic_quilt_count$count;
					this.generalEpicQuiltCount = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (general_quilt_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoToolGetCardInfoRsp.generalQuiltCount cannot be set twice.');
					}
					++general_quilt_count$count;
					this.generalQuiltCount = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (strong_quilt_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoToolGetCardInfoRsp.strongQuiltCount cannot be set twice.');
					}
					++strong_quilt_count$count;
					this.strongQuiltCount = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (strong_epic_quilt_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoToolGetCardInfoRsp.strongEpicQuiltCount cannot be set twice.');
					}
					++strong_epic_quilt_count$count;
					this.strongEpicQuiltCount = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
