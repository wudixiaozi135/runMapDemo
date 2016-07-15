package serverProto.family {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.family.ProtoFriendHelpRecord;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoQueryFriendHelpRecordRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoQueryFriendHelpRecordRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const CAN_ONE_KEY_WATER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoQueryFriendHelpRecordRsp.can_one_key_water", "canOneKeyWater", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var can_one_key_water$field:int;

		private var hasField$0:uint = 0;

		public function clearCanOneKeyWater():void {
			hasField$0 &= 0xfffffffe;
			can_one_key_water$field = new int();
		}

		public function get hasCanOneKeyWater():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set canOneKeyWater(value:int):void {
			hasField$0 |= 0x1;
			can_one_key_water$field = value;
		}

		public function get canOneKeyWater():int {
			return can_one_key_water$field;
		}

		/**
		 *  @private
		 */
		public static const HELP_RECORD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoQueryFriendHelpRecordRsp.help_record", "helpRecord", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.family.ProtoFriendHelpRecord);

		[ArrayElementType("serverProto.family.ProtoFriendHelpRecord")]
		public var helpRecord:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasCanOneKeyWater) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, can_one_key_water$field);
			}
			for (var helpRecord$index:uint = 0; helpRecord$index < this.helpRecord.length; ++helpRecord$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.helpRecord[helpRecord$index]);
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
			var can_one_key_water$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQueryFriendHelpRecordRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (can_one_key_water$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQueryFriendHelpRecordRsp.canOneKeyWater cannot be set twice.');
					}
					++can_one_key_water$count;
					this.canOneKeyWater = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					this.helpRecord.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.family.ProtoFriendHelpRecord()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
