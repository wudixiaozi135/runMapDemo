package serverProto.ninjaSystem {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.baseInfo.ProtoNinjaInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoAwakeNinjaResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoAwakeNinjaResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const NEW_NINJA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoAwakeNinjaResponse.new_ninja", "newNinja", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaInfo);

		private var new_ninja$field:serverProto.baseInfo.ProtoNinjaInfo;

		public function clearNewNinja():void {
			new_ninja$field = null;
		}

		public function get hasNewNinja():Boolean {
			return new_ninja$field != null;
		}

		public function set newNinja(value:serverProto.baseInfo.ProtoNinjaInfo):void {
			new_ninja$field = value;
		}

		public function get newNinja():serverProto.baseInfo.ProtoNinjaInfo {
			return new_ninja$field;
		}

		/**
		 *  @private
		 */
		public static const AWAKE_NINJA_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoAwakeNinjaResponse.awake_ninja_count", "awakeNinjaCount", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var awake_ninja_count$field:int;

		private var hasField$0:uint = 0;

		public function clearAwakeNinjaCount():void {
			hasField$0 &= 0xfffffffe;
			awake_ninja_count$field = new int();
		}

		public function get hasAwakeNinjaCount():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set awakeNinjaCount(value:int):void {
			hasField$0 |= 0x1;
			awake_ninja_count$field = value;
		}

		public function get awakeNinjaCount():int {
			return awake_ninja_count$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasNewNinja) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, new_ninja$field);
			}
			if (hasAwakeNinjaCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, awake_ninja_count$field);
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
			var new_ninja$count:uint = 0;
			var awake_ninja_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAwakeNinjaResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (new_ninja$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAwakeNinjaResponse.newNinja cannot be set twice.');
					}
					++new_ninja$count;
					this.newNinja = new serverProto.baseInfo.ProtoNinjaInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.newNinja);
					break;
				case 3:
					if (awake_ninja_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAwakeNinjaResponse.awakeNinjaCount cannot be set twice.');
					}
					++awake_ninja_count$count;
					this.awakeNinjaCount = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
