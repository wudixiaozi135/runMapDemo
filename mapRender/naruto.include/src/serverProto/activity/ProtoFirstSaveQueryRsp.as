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
	import serverProto.activity.ProtoAwardList;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoFirstSaveQueryRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoFirstSaveQueryRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const AWARD_STATUS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoFirstSaveQueryRsp.award_status", "awardStatus", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var award_status$field:int;

		private var hasField$0:uint = 0;

		public function clearAwardStatus():void {
			hasField$0 &= 0xfffffffe;
			award_status$field = new int();
		}

		public function get hasAwardStatus():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set awardStatus(value:int):void {
			hasField$0 |= 0x1;
			award_status$field = value;
		}

		public function get awardStatus():int {
			return award_status$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoFirstSaveQueryRsp.award_list", "awardList", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoAwardList);

		private var award_list$field:serverProto.activity.ProtoAwardList;

		public function clearAwardList():void {
			award_list$field = null;
		}

		public function get hasAwardList():Boolean {
			return award_list$field != null;
		}

		public function set awardList(value:serverProto.activity.ProtoAwardList):void {
			award_list$field = value;
		}

		public function get awardList():serverProto.activity.ProtoAwardList {
			return award_list$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasAwardStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, award_status$field);
			}
			if (hasAwardList) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, award_list$field);
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
			var award_status$count:uint = 0;
			var award_list$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFirstSaveQueryRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (award_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFirstSaveQueryRsp.awardStatus cannot be set twice.');
					}
					++award_status$count;
					this.awardStatus = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (award_list$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFirstSaveQueryRsp.awardList cannot be set twice.');
					}
					++award_list$count;
					this.awardList = new serverProto.activity.ProtoAwardList();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.awardList);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
