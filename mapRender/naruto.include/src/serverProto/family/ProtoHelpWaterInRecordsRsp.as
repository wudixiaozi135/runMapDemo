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
	public  final class ProtoHelpWaterInRecordsRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoHelpWaterInRecordsRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const CAN_ONE_KEY_WATER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoHelpWaterInRecordsRsp.can_one_key_water", "canOneKeyWater", (2 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const HELP_RECORD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoHelpWaterInRecordsRsp.help_record", "helpRecord", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.family.ProtoFriendHelpRecord);

		[ArrayElementType("serverProto.family.ProtoFriendHelpRecord")]
		public var helpRecord:Array = [];

		/**
		 *  @private
		 */
		public static const WISH_TREE_LEVELUP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoHelpWaterInRecordsRsp.wish_tree_levelup", "wishTreeLevelup", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var wish_tree_levelup$field:int;

		public function clearWishTreeLevelup():void {
			hasField$0 &= 0xfffffffd;
			wish_tree_levelup$field = new int();
		}

		public function get hasWishTreeLevelup():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set wishTreeLevelup(value:int):void {
			hasField$0 |= 0x2;
			wish_tree_levelup$field = value;
		}

		public function get wishTreeLevelup():int {
			return wish_tree_levelup$field;
		}

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
			if (hasWishTreeLevelup) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, wish_tree_levelup$field);
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
			var wish_tree_levelup$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoHelpWaterInRecordsRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (can_one_key_water$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoHelpWaterInRecordsRsp.canOneKeyWater cannot be set twice.');
					}
					++can_one_key_water$count;
					this.canOneKeyWater = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					this.helpRecord.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.family.ProtoFriendHelpRecord()));
					break;
				case 4:
					if (wish_tree_levelup$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoHelpWaterInRecordsRsp.wishTreeLevelup cannot be set twice.');
					}
					++wish_tree_levelup$count;
					this.wishTreeLevelup = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
