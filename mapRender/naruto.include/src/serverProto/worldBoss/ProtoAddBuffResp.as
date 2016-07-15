package serverProto.worldBoss {
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
	public  final class ProtoAddBuffResp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoAddBuffResp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const DARK_DIVISION_SUPPORT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoAddBuffResp.dark_division_support", "darkDivisionSupport", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dark_division_support$field:int;

		private var hasField$0:uint = 0;

		public function clearDarkDivisionSupport():void {
			hasField$0 &= 0xfffffffe;
			dark_division_support$field = new int();
		}

		public function get hasDarkDivisionSupport():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set darkDivisionSupport(value:int):void {
			hasField$0 |= 0x1;
			dark_division_support$field = value;
		}

		public function get darkDivisionSupport():int {
			return dark_division_support$field;
		}

		/**
		 *  @private
		 */
		public static const HIKAGE_SUPPORT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoAddBuffResp.hikage_support", "hikageSupport", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hikage_support$field:int;

		public function clearHikageSupport():void {
			hasField$0 &= 0xfffffffd;
			hikage_support$field = new int();
		}

		public function get hasHikageSupport():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set hikageSupport(value:int):void {
			hasField$0 |= 0x2;
			hikage_support$field = value;
		}

		public function get hikageSupport():int {
			return hikage_support$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasDarkDivisionSupport) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, dark_division_support$field);
			}
			if (hasHikageSupport) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, hikage_support$field);
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
			var dark_division_support$count:uint = 0;
			var hikage_support$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAddBuffResp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (dark_division_support$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAddBuffResp.darkDivisionSupport cannot be set twice.');
					}
					++dark_division_support$count;
					this.darkDivisionSupport = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (hikage_support$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAddBuffResp.hikageSupport cannot be set twice.');
					}
					++hikage_support$count;
					this.hikageSupport = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
