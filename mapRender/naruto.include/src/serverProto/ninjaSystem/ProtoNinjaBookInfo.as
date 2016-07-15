package serverProto.ninjaSystem {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.baseInfo.ProtoNinjaInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaBookInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_STATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaSystem.ProtoNinjaBookInfo.ninja_state", "ninjaState", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaState:uint;

		/**
		 *  @private
		 */
		public static const NINJA_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaSystem.ProtoNinjaBookInfo.ninja_id", "ninjaId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearNinjaId():void {
			hasField$0 &= 0xfffffffe;
			ninja_id$field = new uint();
		}

		public function get hasNinjaId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set ninjaId(value:uint):void {
			hasField$0 |= 0x1;
			ninja_id$field = value;
		}

		public function get ninjaId():uint {
			return ninja_id$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoNinjaBookInfo.ninja_info", "ninjaInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaInfo);

		private var ninja_info$field:serverProto.baseInfo.ProtoNinjaInfo;

		public function clearNinjaInfo():void {
			ninja_info$field = null;
		}

		public function get hasNinjaInfo():Boolean {
			return ninja_info$field != null;
		}

		public function set ninjaInfo(value:serverProto.baseInfo.ProtoNinjaInfo):void {
			ninja_info$field = value;
		}

		public function get ninjaInfo():serverProto.baseInfo.ProtoNinjaInfo {
			return ninja_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ninjaState);
			if (hasNinjaId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, ninja_id$field);
			}
			if (hasNinjaInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_info$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ninja_state$count:uint = 0;
			var ninja_id$count:uint = 0;
			var ninja_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ninja_state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaBookInfo.ninjaState cannot be set twice.');
					}
					++ninja_state$count;
					this.ninjaState = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (ninja_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaBookInfo.ninjaId cannot be set twice.');
					}
					++ninja_id$count;
					this.ninjaId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (ninja_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaBookInfo.ninjaInfo cannot be set twice.');
					}
					++ninja_info$count;
					this.ninjaInfo = new serverProto.baseInfo.ProtoNinjaInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
