package serverProto.rolePromote {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.rolePromote.ProtoPromoteAttrInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetRolePromoteInfoResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rolePromote.ProtoGetRolePromoteInfoResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const REMAIN_STAR:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoGetRolePromoteInfoResponse.remain_star", "remainStar", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remain_star$field:int;

		private var hasField$0:uint = 0;

		public function clearRemainStar():void {
			hasField$0 &= 0xfffffffe;
			remain_star$field = new int();
		}

		public function get hasRemainStar():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set remainStar(value:int):void {
			hasField$0 |= 0x1;
			remain_star$field = value;
		}

		public function get remainStar():int {
			return remain_star$field;
		}

		/**
		 *  @private
		 */
		public static const PREV_START:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoGetRolePromoteInfoResponse.prev_start", "prevStart", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var prev_start$field:int;

		public function clearPrevStart():void {
			hasField$0 &= 0xfffffffd;
			prev_start$field = new int();
		}

		public function get hasPrevStart():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set prevStart(value:int):void {
			hasField$0 |= 0x2;
			prev_start$field = value;
		}

		public function get prevStart():int {
			return prev_start$field;
		}

		/**
		 *  @private
		 */
		public static const ATTR_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rolePromote.ProtoGetRolePromoteInfoResponse.attr_info", "attrInfo", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.rolePromote.ProtoPromoteAttrInfo);

		private var attr_info$field:serverProto.rolePromote.ProtoPromoteAttrInfo;

		public function clearAttrInfo():void {
			attr_info$field = null;
		}

		public function get hasAttrInfo():Boolean {
			return attr_info$field != null;
		}

		public function set attrInfo(value:serverProto.rolePromote.ProtoPromoteAttrInfo):void {
			attr_info$field = value;
		}

		public function get attrInfo():serverProto.rolePromote.ProtoPromoteAttrInfo {
			return attr_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasRemainStar) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, remain_star$field);
			}
			if (hasPrevStart) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, prev_start$field);
			}
			if (hasAttrInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, attr_info$field);
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
			var remain_star$count:uint = 0;
			var prev_start$count:uint = 0;
			var attr_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRolePromoteInfoResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (remain_star$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRolePromoteInfoResponse.remainStar cannot be set twice.');
					}
					++remain_star$count;
					this.remainStar = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (prev_start$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRolePromoteInfoResponse.prevStart cannot be set twice.');
					}
					++prev_start$count;
					this.prevStart = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (attr_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRolePromoteInfoResponse.attrInfo cannot be set twice.');
					}
					++attr_info$count;
					this.attrInfo = new serverProto.rolePromote.ProtoPromoteAttrInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.attrInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
