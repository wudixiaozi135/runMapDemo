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
	import serverProto.activity.RefreshPkgInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoLuckyPkgQueryRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoLuckyPkgQueryRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const REFRESH_PKG_ARY:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoLuckyPkgQueryRsp.refresh_pkg_ary", "refreshPkgAry", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.RefreshPkgInfo);

		[ArrayElementType("serverProto.activity.RefreshPkgInfo")]
		public var refreshPkgAry:Array = [];

		/**
		 *  @private
		 */
		public static const REWARD_PKG_ARY:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuckyPkgQueryRsp.reward_pkg_ary", "rewardPkgAry", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var rewardPkgAry:Array = [];

		/**
		 *  @private
		 */
		public static const NEXT_REF_SECONDS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuckyPkgQueryRsp.next_ref_seconds", "nextRefSeconds", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var next_ref_seconds$field:uint;

		private var hasField$0:uint = 0;

		public function clearNextRefSeconds():void {
			hasField$0 &= 0xfffffffe;
			next_ref_seconds$field = new uint();
		}

		public function get hasNextRefSeconds():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set nextRefSeconds(value:uint):void {
			hasField$0 |= 0x1;
			next_ref_seconds$field = value;
		}

		public function get nextRefSeconds():uint {
			return next_ref_seconds$field;
		}

		/**
		 *  @private
		 */
		public static const NEED_YUANBAO_ARY:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuckyPkgQueryRsp.need_yuanbao_ary", "needYuanbaoAry", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var needYuanbaoAry:Array = [];

		/**
		 *  @private
		 */
		public static const BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuckyPkgQueryRsp.begin_time", "beginTime", (6 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuckyPkgQueryRsp.end_time", "endTime", (7 << 3) | com.netease.protobuf.WireType.VARINT);

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
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			for (var refreshPkgAry$index:uint = 0; refreshPkgAry$index < this.refreshPkgAry.length; ++refreshPkgAry$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.refreshPkgAry[refreshPkgAry$index]);
			}
			for (var rewardPkgAry$index:uint = 0; rewardPkgAry$index < this.rewardPkgAry.length; ++rewardPkgAry$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.rewardPkgAry[rewardPkgAry$index]);
			}
			if (hasNextRefSeconds) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, next_ref_seconds$field);
			}
			for (var needYuanbaoAry$index:uint = 0; needYuanbaoAry$index < this.needYuanbaoAry.length; ++needYuanbaoAry$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.needYuanbaoAry[needYuanbaoAry$index]);
			}
			if (hasBeginTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, begin_time$field);
			}
			if (hasEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, end_time$field);
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
			var next_ref_seconds$count:uint = 0;
			var begin_time$count:uint = 0;
			var end_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLuckyPkgQueryRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					this.refreshPkgAry.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.RefreshPkgInfo()));
					break;
				case 3:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.rewardPkgAry);
						break;
					}
					this.rewardPkgAry.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				case 4:
					if (next_ref_seconds$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLuckyPkgQueryRsp.nextRefSeconds cannot be set twice.');
					}
					++next_ref_seconds$count;
					this.nextRefSeconds = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.needYuanbaoAry);
						break;
					}
					this.needYuanbaoAry.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				case 6:
					if (begin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLuckyPkgQueryRsp.beginTime cannot be set twice.');
					}
					++begin_time$count;
					this.beginTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLuckyPkgQueryRsp.endTime cannot be set twice.');
					}
					++end_time$count;
					this.endTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
