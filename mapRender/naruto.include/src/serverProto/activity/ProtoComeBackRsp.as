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
	import serverProto.activity.ProtoAwardPackageBox;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoComeBackRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoComeBackRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoComeBackRsp.end_time", "endTime", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var end_time$field:uint;

		private var hasField$0:uint = 0;

		public function clearEndTime():void {
			hasField$0 &= 0xfffffffe;
			end_time$field = new uint();
		}

		public function get hasEndTime():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set endTime(value:uint):void {
			hasField$0 |= 0x1;
			end_time$field = value;
		}

		public function get endTime():uint {
			return end_time$field;
		}

		/**
		 *  @private
		 */
		public static const PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoComeBackRsp.package_boxes", "packageBoxes", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoAwardPackageBox);

		[ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
		public var packageBoxes:Array = [];

		/**
		 *  @private
		 */
		public static const NEED_YUANBAO:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoComeBackRsp.need_yuanbao", "needYuanbao", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var need_yuanbao$field:uint;

		public function clearNeedYuanbao():void {
			hasField$0 &= 0xfffffffd;
			need_yuanbao$field = new uint();
		}

		public function get hasNeedYuanbao():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set needYuanbao(value:uint):void {
			hasField$0 |= 0x2;
			need_yuanbao$field = value;
		}

		public function get needYuanbao():uint {
			return need_yuanbao$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, end_time$field);
			}
			for (var packageBoxes$index:uint = 0; packageBoxes$index < this.packageBoxes.length; ++packageBoxes$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.packageBoxes[packageBoxes$index]);
			}
			if (hasNeedYuanbao) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, need_yuanbao$field);
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
			var end_time$count:uint = 0;
			var need_yuanbao$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoComeBackRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoComeBackRsp.endTime cannot be set twice.');
					}
					++end_time$count;
					this.endTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					this.packageBoxes.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoAwardPackageBox()));
					break;
				case 4:
					if (need_yuanbao$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoComeBackRsp.needYuanbao cannot be set twice.');
					}
					++need_yuanbao$count;
					this.needYuanbao = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
