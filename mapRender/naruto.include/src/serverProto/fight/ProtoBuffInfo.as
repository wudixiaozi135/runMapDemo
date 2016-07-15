package serverProto.fight {
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
	public  final class ProtoBuffInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BUFF_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoBuffInfo.buff_id", "buffId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var buffId:uint;

		/**
		 *  @private
		 */
		public static const BUFF_GROUP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoBuffInfo.buff_group", "buffGroup", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var buff_group$field:uint;

		private var hasField$0:uint = 0;

		public function clearBuffGroup():void {
			hasField$0 &= 0xfffffffe;
			buff_group$field = new uint();
		}

		public function get hasBuffGroup():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set buffGroup(value:uint):void {
			hasField$0 |= 0x1;
			buff_group$field = value;
		}

		public function get buffGroup():uint {
			return buff_group$field;
		}

		/**
		 *  @private
		 */
		public static const BUFF_OVERLAY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoBuffInfo.buff_overlay", "buffOverlay", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var buff_overlay$field:uint;

		public function clearBuffOverlay():void {
			hasField$0 &= 0xfffffffd;
			buff_overlay$field = new uint();
		}

		public function get hasBuffOverlay():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set buffOverlay(value:uint):void {
			hasField$0 |= 0x2;
			buff_overlay$field = value;
		}

		public function get buffOverlay():uint {
			return buff_overlay$field;
		}

		/**
		 *  @private
		 */
		public static const BUFF_ARG1:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoBuffInfo.buff_arg1", "buffArg1", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var buff_arg1$field:int;

		public function clearBuffArg1():void {
			hasField$0 &= 0xfffffffb;
			buff_arg1$field = new int();
		}

		public function get hasBuffArg1():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set buffArg1(value:int):void {
			hasField$0 |= 0x4;
			buff_arg1$field = value;
		}

		public function get buffArg1():int {
			return buff_arg1$field;
		}

		/**
		 *  @private
		 */
		public static const BUFF_ARG2:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoBuffInfo.buff_arg2", "buffArg2", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var buff_arg2$field:int;

		public function clearBuffArg2():void {
			hasField$0 &= 0xfffffff7;
			buff_arg2$field = new int();
		}

		public function get hasBuffArg2():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set buffArg2(value:int):void {
			hasField$0 |= 0x8;
			buff_arg2$field = value;
		}

		public function get buffArg2():int {
			return buff_arg2$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.buffId);
			if (hasBuffGroup) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, buff_group$field);
			}
			if (hasBuffOverlay) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, buff_overlay$field);
			}
			if (hasBuffArg1) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, buff_arg1$field);
			}
			if (hasBuffArg2) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, buff_arg2$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var buff_id$count:uint = 0;
			var buff_group$count:uint = 0;
			var buff_overlay$count:uint = 0;
			var buff_arg1$count:uint = 0;
			var buff_arg2$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (buff_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuffInfo.buffId cannot be set twice.');
					}
					++buff_id$count;
					this.buffId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (buff_group$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuffInfo.buffGroup cannot be set twice.');
					}
					++buff_group$count;
					this.buffGroup = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (buff_overlay$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuffInfo.buffOverlay cannot be set twice.');
					}
					++buff_overlay$count;
					this.buffOverlay = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (buff_arg1$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuffInfo.buffArg1 cannot be set twice.');
					}
					++buff_arg1$count;
					this.buffArg1 = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 9:
					if (buff_arg2$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuffInfo.buffArg2 cannot be set twice.');
					}
					++buff_arg2$count;
					this.buffArg2 = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
