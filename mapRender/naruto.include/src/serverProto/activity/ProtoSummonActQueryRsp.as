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
	public  final class ProtoSummonActQueryRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoSummonActQueryRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const PKG_ARY:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoSummonActQueryRsp.pkg_ary", "pkgAry", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoAwardPackageBox);

		[ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
		public var pkgAry:Array = [];

		/**
		 *  @private
		 */
		public static const TOTAL_USE_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoSummonActQueryRsp.total_use_num", "totalUseNum", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_use_num$field:uint;

		private var hasField$0:uint = 0;

		public function clearTotalUseNum():void {
			hasField$0 &= 0xfffffffe;
			total_use_num$field = new uint();
		}

		public function get hasTotalUseNum():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set totalUseNum(value:uint):void {
			hasField$0 |= 0x1;
			total_use_num$field = value;
		}

		public function get totalUseNum():uint {
			return total_use_num$field;
		}

		/**
		 *  @private
		 */
		public static const NEED_NUM_ARY:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoSummonActQueryRsp.need_num_ary", "needNumAry", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var needNumAry:Array = [];

		/**
		 *  @private
		 */
		public static const BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoSummonActQueryRsp.begin_time", "beginTime", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var begin_time$field:uint;

		public function clearBeginTime():void {
			hasField$0 &= 0xfffffffd;
			begin_time$field = new uint();
		}

		public function get hasBeginTime():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set beginTime(value:uint):void {
			hasField$0 |= 0x2;
			begin_time$field = value;
		}

		public function get beginTime():uint {
			return begin_time$field;
		}

		/**
		 *  @private
		 */
		public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoSummonActQueryRsp.end_time", "endTime", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var end_time$field:uint;

		public function clearEndTime():void {
			hasField$0 &= 0xfffffffb;
			end_time$field = new uint();
		}

		public function get hasEndTime():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set endTime(value:uint):void {
			hasField$0 |= 0x4;
			end_time$field = value;
		}

		public function get endTime():uint {
			return end_time$field;
		}

		/**
		 *  @private
		 */
		public static const OPEN_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoSummonActQueryRsp.open_lvl", "openLvl", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var open_lvl$field:uint;

		public function clearOpenLvl():void {
			hasField$0 &= 0xfffffff7;
			open_lvl$field = new uint();
		}

		public function get hasOpenLvl():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set openLvl(value:uint):void {
			hasField$0 |= 0x8;
			open_lvl$field = value;
		}

		public function get openLvl():uint {
			return open_lvl$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			for (var pkgAry$index:uint = 0; pkgAry$index < this.pkgAry.length; ++pkgAry$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.pkgAry[pkgAry$index]);
			}
			if (hasTotalUseNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, total_use_num$field);
			}
			for (var needNumAry$index:uint = 0; needNumAry$index < this.needNumAry.length; ++needNumAry$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.needNumAry[needNumAry$index]);
			}
			if (hasBeginTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, begin_time$field);
			}
			if (hasEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, end_time$field);
			}
			if (hasOpenLvl) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, open_lvl$field);
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
			var total_use_num$count:uint = 0;
			var begin_time$count:uint = 0;
			var end_time$count:uint = 0;
			var open_lvl$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSummonActQueryRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					this.pkgAry.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoAwardPackageBox()));
					break;
				case 3:
					if (total_use_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSummonActQueryRsp.totalUseNum cannot be set twice.');
					}
					++total_use_num$count;
					this.totalUseNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.needNumAry);
						break;
					}
					this.needNumAry.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				case 5:
					if (begin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSummonActQueryRsp.beginTime cannot be set twice.');
					}
					++begin_time$count;
					this.beginTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSummonActQueryRsp.endTime cannot be set twice.');
					}
					++end_time$count;
					this.endTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (open_lvl$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSummonActQueryRsp.openLvl cannot be set twice.');
					}
					++open_lvl$count;
					this.openLvl = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
