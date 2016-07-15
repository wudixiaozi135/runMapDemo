package serverProto.family {
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
	public  final class ProtoWishTreeState extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TREE_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoWishTreeState.tree_level", "treeLevel", (1 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const TREE_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoWishTreeState.tree_exp", "treeExp", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var tree_exp$field:int;

		public function clearTreeExp():void {
			hasField$0 &= 0xfffffffd;
			tree_exp$field = new int();
		}

		public function get hasTreeExp():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set treeExp(value:int):void {
			hasField$0 |= 0x2;
			tree_exp$field = value;
		}

		public function get treeExp():int {
			return tree_exp$field;
		}

		/**
		 *  @private
		 */
		public static const GROWTH_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoWishTreeState.growth_value", "growthValue", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var growth_value$field:int;

		public function clearGrowthValue():void {
			hasField$0 &= 0xfffffffb;
			growth_value$field = new int();
		}

		public function get hasGrowthValue():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set growthValue(value:int):void {
			hasField$0 |= 0x4;
			growth_value$field = value;
		}

		public function get growthValue():int {
			return growth_value$field;
		}

		/**
		 *  @private
		 */
		public static const GROWTH_VALUE_MAX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoWishTreeState.growth_value_max", "growthValueMax", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var growth_value_max$field:int;

		public function clearGrowthValueMax():void {
			hasField$0 &= 0xfffffff7;
			growth_value_max$field = new int();
		}

		public function get hasGrowthValueMax():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set growthValueMax(value:int):void {
			hasField$0 |= 0x8;
			growth_value_max$field = value;
		}

		public function get growthValueMax():int {
			return growth_value_max$field;
		}

		/**
		 *  @private
		 */
		public static const CAN_WATER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoWishTreeState.can_water", "canWater", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var can_water$field:int;

		public function clearCanWater():void {
			hasField$0 &= 0xffffffef;
			can_water$field = new int();
		}

		public function get hasCanWater():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set canWater(value:int):void {
			hasField$0 |= 0x10;
			can_water$field = value;
		}

		public function get canWater():int {
			return can_water$field;
		}

		/**
		 *  @private
		 */
		public static const LEFT_HELP_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoWishTreeState.left_help_num", "leftHelpNum", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var left_help_num$field:int;

		public function clearLeftHelpNum():void {
			hasField$0 &= 0xffffffdf;
			left_help_num$field = new int();
		}

		public function get hasLeftHelpNum():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set leftHelpNum(value:int):void {
			hasField$0 |= 0x20;
			left_help_num$field = value;
		}

		public function get leftHelpNum():int {
			return left_help_num$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_TREE_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoWishTreeState.max_tree_exp", "maxTreeExp", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_tree_exp$field:int;

		public function clearMaxTreeExp():void {
			hasField$0 &= 0xffffffbf;
			max_tree_exp$field = new int();
		}

		public function get hasMaxTreeExp():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set maxTreeExp(value:int):void {
			hasField$0 |= 0x40;
			max_tree_exp$field = value;
		}

		public function get maxTreeExp():int {
			return max_tree_exp$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasTreeLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, tree_level$field);
			}
			if (hasTreeExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, tree_exp$field);
			}
			if (hasGrowthValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, growth_value$field);
			}
			if (hasGrowthValueMax) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, growth_value_max$field);
			}
			if (hasCanWater) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, can_water$field);
			}
			if (hasLeftHelpNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, left_help_num$field);
			}
			if (hasMaxTreeExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, max_tree_exp$field);
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
			var tree_exp$count:uint = 0;
			var growth_value$count:uint = 0;
			var growth_value_max$count:uint = 0;
			var can_water$count:uint = 0;
			var left_help_num$count:uint = 0;
			var max_tree_exp$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (tree_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWishTreeState.treeLevel cannot be set twice.');
					}
					++tree_level$count;
					this.treeLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (tree_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWishTreeState.treeExp cannot be set twice.');
					}
					++tree_exp$count;
					this.treeExp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (growth_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWishTreeState.growthValue cannot be set twice.');
					}
					++growth_value$count;
					this.growthValue = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (growth_value_max$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWishTreeState.growthValueMax cannot be set twice.');
					}
					++growth_value_max$count;
					this.growthValueMax = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (can_water$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWishTreeState.canWater cannot be set twice.');
					}
					++can_water$count;
					this.canWater = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (left_help_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWishTreeState.leftHelpNum cannot be set twice.');
					}
					++left_help_num$count;
					this.leftHelpNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (max_tree_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWishTreeState.maxTreeExp cannot be set twice.');
					}
					++max_tree_exp$count;
					this.maxTreeExp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
