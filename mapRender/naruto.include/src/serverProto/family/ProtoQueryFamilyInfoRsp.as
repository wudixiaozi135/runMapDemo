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
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoQueryFamilyInfoRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoQueryFamilyInfoRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const WISH_TREE_STATUS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoQueryFamilyInfoRsp.wish_tree_status", "wishTreeStatus", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var wish_tree_status$field:int;

		private var hasField$0:uint = 0;

		public function clearWishTreeStatus():void {
			hasField$0 &= 0xfffffffe;
			wish_tree_status$field = new int();
		}

		public function get hasWishTreeStatus():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set wishTreeStatus(value:int):void {
			hasField$0 |= 0x1;
			wish_tree_status$field = value;
		}

		public function get wishTreeStatus():int {
			return wish_tree_status$field;
		}

		/**
		 *  @private
		 */
		public static const TREE_GROWTH_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoQueryFamilyInfoRsp.tree_growth_value", "treeGrowthValue", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var tree_growth_value$field:int;

		public function clearTreeGrowthValue():void {
			hasField$0 &= 0xfffffffd;
			tree_growth_value$field = new int();
		}

		public function get hasTreeGrowthValue():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set treeGrowthValue(value:int):void {
			hasField$0 |= 0x2;
			tree_growth_value$field = value;
		}

		public function get treeGrowthValue():int {
			return tree_growth_value$field;
		}

		/**
		 *  @private
		 */
		public static const TREE_GROWTH_VALUE_MAX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoQueryFamilyInfoRsp.tree_growth_value_max", "treeGrowthValueMax", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var tree_growth_value_max$field:int;

		public function clearTreeGrowthValueMax():void {
			hasField$0 &= 0xfffffffb;
			tree_growth_value_max$field = new int();
		}

		public function get hasTreeGrowthValueMax():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set treeGrowthValueMax(value:int):void {
			hasField$0 |= 0x4;
			tree_growth_value_max$field = value;
		}

		public function get treeGrowthValueMax():int {
			return tree_growth_value_max$field;
		}

		/**
		 *  @private
		 */
		public static const DISPATCH_STATUS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoQueryFamilyInfoRsp.dispatch_status", "dispatchStatus", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dispatch_status$field:int;

		public function clearDispatchStatus():void {
			hasField$0 &= 0xfffffff7;
			dispatch_status$field = new int();
		}

		public function get hasDispatchStatus():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set dispatchStatus(value:int):void {
			hasField$0 |= 0x8;
			dispatch_status$field = value;
		}

		public function get dispatchStatus():int {
			return dispatch_status$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasWishTreeStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, wish_tree_status$field);
			}
			if (hasTreeGrowthValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, tree_growth_value$field);
			}
			if (hasTreeGrowthValueMax) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, tree_growth_value_max$field);
			}
			if (hasDispatchStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, dispatch_status$field);
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
			var wish_tree_status$count:uint = 0;
			var tree_growth_value$count:uint = 0;
			var tree_growth_value_max$count:uint = 0;
			var dispatch_status$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQueryFamilyInfoRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (wish_tree_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQueryFamilyInfoRsp.wishTreeStatus cannot be set twice.');
					}
					++wish_tree_status$count;
					this.wishTreeStatus = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (tree_growth_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQueryFamilyInfoRsp.treeGrowthValue cannot be set twice.');
					}
					++tree_growth_value$count;
					this.treeGrowthValue = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (tree_growth_value_max$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQueryFamilyInfoRsp.treeGrowthValueMax cannot be set twice.');
					}
					++tree_growth_value_max$count;
					this.treeGrowthValueMax = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (dispatch_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQueryFamilyInfoRsp.dispatchStatus cannot be set twice.');
					}
					++dispatch_status$count;
					this.dispatchStatus = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
