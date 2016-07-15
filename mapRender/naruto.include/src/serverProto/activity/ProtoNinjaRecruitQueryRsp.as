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
	import serverProto.activity.ProtoNinjaRecruitAwardBox;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaRecruitQueryRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNinjaRecruitQueryRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNinjaRecruitQueryRsp.package_boxes", "packageBoxes", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoNinjaRecruitAwardBox);

		[ArrayElementType("serverProto.activity.ProtoNinjaRecruitAwardBox")]
		public var packageBoxes:Array = [];

		/**
		 *  @private
		 */
		public static const BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNinjaRecruitQueryRsp.begin_time", "beginTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var begin_time$field:uint;

		private var hasField$0:uint = 0;

		public function clearBeginTime():void {
			hasField$0 &= 0xfffffffe;
			begin_time$field = new uint();
		}

		public function get hasBeginTime():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set beginTime(value:uint):void {
			hasField$0 |= 0x1;
			begin_time$field = value;
		}

		public function get beginTime():uint {
			return begin_time$field;
		}

		/**
		 *  @private
		 */
		public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNinjaRecruitQueryRsp.end_time", "endTime", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var end_time$field:uint;

		public function clearEndTime():void {
			hasField$0 &= 0xfffffffd;
			end_time$field = new uint();
		}

		public function get hasEndTime():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set endTime(value:uint):void {
			hasField$0 |= 0x2;
			end_time$field = value;
		}

		public function get endTime():uint {
			return end_time$field;
		}

		/**
		 *  @private
		 */
		public static const FENGYIN_COUNT:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNinjaRecruitQueryRsp.fengyin_count", "fengyinCount", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var fengyinCount:Array = [];

		/**
		 *  @private
		 */
		public static const CURR_FENGYIN_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNinjaRecruitQueryRsp.curr_fengyin_count", "currFengyinCount", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var curr_fengyin_count$field:uint;

		public function clearCurrFengyinCount():void {
			hasField$0 &= 0xfffffffb;
			curr_fengyin_count$field = new uint();
		}

		public function get hasCurrFengyinCount():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set currFengyinCount(value:uint):void {
			hasField$0 |= 0x4;
			curr_fengyin_count$field = value;
		}

		public function get currFengyinCount():uint {
			return curr_fengyin_count$field;
		}

		/**
		 *  @private
		 */
		public static const SUPER_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoNinjaRecruitQueryRsp.super_num", "superNum", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var super_num$field:int;

		public function clearSuperNum():void {
			hasField$0 &= 0xfffffff7;
			super_num$field = new int();
		}

		public function get hasSuperNum():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set superNum(value:int):void {
			hasField$0 |= 0x8;
			super_num$field = value;
		}

		public function get superNum():int {
			return super_num$field;
		}

		/**
		 *  @private
		 */
		public static const SUPER_MAX_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoNinjaRecruitQueryRsp.super_max_num", "superMaxNum", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var super_max_num$field:int;

		public function clearSuperMaxNum():void {
			hasField$0 &= 0xffffffef;
			super_max_num$field = new int();
		}

		public function get hasSuperMaxNum():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set superMaxNum(value:int):void {
			hasField$0 |= 0x10;
			super_max_num$field = value;
		}

		public function get superMaxNum():int {
			return super_max_num$field;
		}

		/**
		 *  @private
		 */
		public static const SUPER_PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNinjaRecruitQueryRsp.super_package_boxes", "superPackageBoxes", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoNinjaRecruitAwardBox);

		[ArrayElementType("serverProto.activity.ProtoNinjaRecruitAwardBox")]
		public var superPackageBoxes:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			for (var packageBoxes$index:uint = 0; packageBoxes$index < this.packageBoxes.length; ++packageBoxes$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.packageBoxes[packageBoxes$index]);
			}
			if (hasBeginTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, begin_time$field);
			}
			if (hasEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, end_time$field);
			}
			for (var fengyinCount$index:uint = 0; fengyinCount$index < this.fengyinCount.length; ++fengyinCount$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.fengyinCount[fengyinCount$index]);
			}
			if (hasCurrFengyinCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, curr_fengyin_count$field);
			}
			if (hasSuperNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, super_num$field);
			}
			if (hasSuperMaxNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, super_max_num$field);
			}
			for (var superPackageBoxes$index:uint = 0; superPackageBoxes$index < this.superPackageBoxes.length; ++superPackageBoxes$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.superPackageBoxes[superPackageBoxes$index]);
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
			var begin_time$count:uint = 0;
			var end_time$count:uint = 0;
			var curr_fengyin_count$count:uint = 0;
			var super_num$count:uint = 0;
			var super_max_num$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaRecruitQueryRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					this.packageBoxes.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoNinjaRecruitAwardBox()));
					break;
				case 3:
					if (begin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaRecruitQueryRsp.beginTime cannot be set twice.');
					}
					++begin_time$count;
					this.beginTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaRecruitQueryRsp.endTime cannot be set twice.');
					}
					++end_time$count;
					this.endTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.fengyinCount);
						break;
					}
					this.fengyinCount.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				case 6:
					if (curr_fengyin_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaRecruitQueryRsp.currFengyinCount cannot be set twice.');
					}
					++curr_fengyin_count$count;
					this.currFengyinCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (super_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaRecruitQueryRsp.superNum cannot be set twice.');
					}
					++super_num$count;
					this.superNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (super_max_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaRecruitQueryRsp.superMaxNum cannot be set twice.');
					}
					++super_max_num$count;
					this.superMaxNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 9:
					this.superPackageBoxes.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoNinjaRecruitAwardBox()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
