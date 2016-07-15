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
	public  final class ProtoOneKeyWaterRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoOneKeyWaterRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const HELP_RECORD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoOneKeyWaterRsp.help_record", "helpRecord", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.family.ProtoFriendHelpRecord);

		[ArrayElementType("serverProto.family.ProtoFriendHelpRecord")]
		public var helpRecord:Array = [];

		/**
		 *  @private
		 */
		public static const WISH_TREE_LEVELUP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoOneKeyWaterRsp.wish_tree_levelup", "wishTreeLevelup", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var wish_tree_levelup$field:int;

		private var hasField$0:uint = 0;

		public function clearWishTreeLevelup():void {
			hasField$0 &= 0xfffffffe;
			wish_tree_levelup$field = new int();
		}

		public function get hasWishTreeLevelup():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set wishTreeLevelup(value:int):void {
			hasField$0 |= 0x1;
			wish_tree_levelup$field = value;
		}

		public function get wishTreeLevelup():int {
			return wish_tree_levelup$field;
		}

		/**
		 *  @private
		 */
		public static const ADDED_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoOneKeyWaterRsp.added_exp", "addedExp", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var added_exp$field:int;

		public function clearAddedExp():void {
			hasField$0 &= 0xfffffffd;
			added_exp$field = new int();
		}

		public function get hasAddedExp():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set addedExp(value:int):void {
			hasField$0 |= 0x2;
			added_exp$field = value;
		}

		public function get addedExp():int {
			return added_exp$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			for (var helpRecord$index:uint = 0; helpRecord$index < this.helpRecord.length; ++helpRecord$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.helpRecord[helpRecord$index]);
			}
			if (hasWishTreeLevelup) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, wish_tree_levelup$field);
			}
			if (hasAddedExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, added_exp$field);
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
			var wish_tree_levelup$count:uint = 0;
			var added_exp$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOneKeyWaterRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					this.helpRecord.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.family.ProtoFriendHelpRecord()));
					break;
				case 3:
					if (wish_tree_levelup$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOneKeyWaterRsp.wishTreeLevelup cannot be set twice.');
					}
					++wish_tree_levelup$count;
					this.wishTreeLevelup = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (added_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOneKeyWaterRsp.addedExp cannot be set twice.');
					}
					++added_exp$count;
					this.addedExp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
