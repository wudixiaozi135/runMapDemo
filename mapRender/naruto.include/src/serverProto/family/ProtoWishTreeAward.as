package serverProto.family {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.family.ProtoWishItem;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoWishTreeAward extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TREE_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoWishTreeAward.tree_level", "treeLevel", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var tree_level$field:int;

		private var hasField$0:uint = 0;

		public function clearTreeLevel():void {
			hasField$0 &= 0xfffffffe;
			tree_level$field = new int();
		}

		public function get hasTreeLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set treeLevel(value:int):void {
			hasField$0 |= 0x1;
			tree_level$field = value;
		}

		public function get treeLevel():int {
			return tree_level$field;
		}

		/**
		 *  @private
		 */
		public static const WISH_ITEMS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoWishTreeAward.wish_items", "wishItems", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.family.ProtoWishItem);

		[ArrayElementType("serverProto.family.ProtoWishItem")]
		public var wishItems:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasTreeLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, tree_level$field);
			}
			for (var wishItems$index:uint = 0; wishItems$index < this.wishItems.length; ++wishItems$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.wishItems[wishItems$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var tree_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (tree_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWishTreeAward.treeLevel cannot be set twice.');
					}
					++tree_level$count;
					this.treeLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					this.wishItems.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.family.ProtoWishItem()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
