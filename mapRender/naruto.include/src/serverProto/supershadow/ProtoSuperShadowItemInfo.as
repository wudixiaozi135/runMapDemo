package serverProto.supershadow {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoSuperShadowItemInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.supershadow.ProtoSuperShadowItemInfo.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var id:int;

		/**
		 *  @private
		 */
		public static const NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.supershadow.ProtoSuperShadowItemInfo.num", "num", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var num:int;

		/**
		 *  @private
		 */
		public static const EXTRA_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.supershadow.ProtoSuperShadowItemInfo.extra_num", "extraNum", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var extra_num$field:int;

		private var hasField$0:uint = 0;

		public function clearExtraNum():void {
			hasField$0 &= 0xfffffffe;
			extra_num$field = new int();
		}

		public function get hasExtraNum():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set extraNum(value:int):void {
			hasField$0 |= 0x1;
			extra_num$field = value;
		}

		public function get extraNum():int {
			return extra_num$field;
		}

		/**
		 *  @private
		 */
		public static const FLAG:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.supershadow.ProtoSuperShadowItemInfo.flag", "flag", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var flag$field:int;

		public function clearFlag():void {
			hasField$0 &= 0xfffffffd;
			flag$field = new int();
		}

		public function get hasFlag():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set flag(value:int):void {
			hasField$0 |= 0x2;
			flag$field = value;
		}

		public function get flag():int {
			return flag$field;
		}

		/**
		 *  @private
		 */
		public static const STATE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.supershadow.ProtoSuperShadowItemInfo.state", "state", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var state$field:int;

		public function clearState():void {
			hasField$0 &= 0xfffffffb;
			state$field = new int();
		}

		public function get hasState():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set state(value:int):void {
			hasField$0 |= 0x4;
			state$field = value;
		}

		public function get state():int {
			return state$field;
		}

		/**
		 *  @private
		 */
		public static const LOCAL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.supershadow.ProtoSuperShadowItemInfo.local", "local", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var local$field:int;

		public function clearLocal():void {
			hasField$0 &= 0xfffffff7;
			local$field = new int();
		}

		public function get hasLocal():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set local(value:int):void {
			hasField$0 |= 0x8;
			local$field = value;
		}

		public function get local():int {
			return local$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.id);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.num);
			if (hasExtraNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, extra_num$field);
			}
			if (hasFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, flag$field);
			}
			if (hasState) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, state$field);
			}
			if (hasLocal) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, local$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var id$count:uint = 0;
			var num$count:uint = 0;
			var extra_num$count:uint = 0;
			var flag$count:uint = 0;
			var state$count:uint = 0;
			var local$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSuperShadowItemInfo.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSuperShadowItemInfo.num cannot be set twice.');
					}
					++num$count;
					this.num = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (extra_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSuperShadowItemInfo.extraNum cannot be set twice.');
					}
					++extra_num$count;
					this.extraNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSuperShadowItemInfo.flag cannot be set twice.');
					}
					++flag$count;
					this.flag = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSuperShadowItemInfo.state cannot be set twice.');
					}
					++state$count;
					this.state = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (local$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSuperShadowItemInfo.local cannot be set twice.');
					}
					++local$count;
					this.local = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
