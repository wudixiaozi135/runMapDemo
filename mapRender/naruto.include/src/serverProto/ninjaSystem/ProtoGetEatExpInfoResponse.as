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
	import serverProto.ninjaSystem.ProtoEatExpItemInfo;
	import serverProto.inc.ProtoNaurtoAllPropertyInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetEatExpInfoResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetEatExpInfoResponse.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const CURRENT_PROPERTY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetEatExpInfoResponse.current_property", "currentProperty", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoNaurtoAllPropertyInfo);

		private var current_property$field:serverProto.inc.ProtoNaurtoAllPropertyInfo;

		public function clearCurrentProperty():void {
			current_property$field = null;
		}

		public function get hasCurrentProperty():Boolean {
			return current_property$field != null;
		}

		public function set currentProperty(value:serverProto.inc.ProtoNaurtoAllPropertyInfo):void {
			current_property$field = value;
		}

		public function get currentProperty():serverProto.inc.ProtoNaurtoAllPropertyInfo {
			return current_property$field;
		}

		/**
		 *  @private
		 */
		public static const NEXT_LEVEL_PROPERY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetEatExpInfoResponse.next_level_propery", "nextLevelPropery", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoNaurtoAllPropertyInfo);

		private var next_level_propery$field:serverProto.inc.ProtoNaurtoAllPropertyInfo;

		public function clearNextLevelPropery():void {
			next_level_propery$field = null;
		}

		public function get hasNextLevelPropery():Boolean {
			return next_level_propery$field != null;
		}

		public function set nextLevelPropery(value:serverProto.inc.ProtoNaurtoAllPropertyInfo):void {
			next_level_propery$field = value;
		}

		public function get nextLevelPropery():serverProto.inc.ProtoNaurtoAllPropertyInfo {
			return next_level_propery$field;
		}

		/**
		 *  @private
		 */
		public static const CURRENT_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoGetEatExpInfoResponse.current_exp", "currentExp", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_exp$field:int;

		private var hasField$0:uint = 0;

		public function clearCurrentExp():void {
			hasField$0 &= 0xfffffffe;
			current_exp$field = new int();
		}

		public function get hasCurrentExp():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set currentExp(value:int):void {
			hasField$0 |= 0x1;
			current_exp$field = value;
		}

		public function get currentExp():int {
			return current_exp$field;
		}

		/**
		 *  @private
		 */
		public static const FULL_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoGetEatExpInfoResponse.full_exp", "fullExp", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var full_exp$field:int;

		public function clearFullExp():void {
			hasField$0 &= 0xfffffffd;
			full_exp$field = new int();
		}

		public function get hasFullExp():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set fullExp(value:int):void {
			hasField$0 |= 0x2;
			full_exp$field = value;
		}

		public function get fullExp():int {
			return full_exp$field;
		}

		/**
		 *  @private
		 */
		public static const BUN:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetEatExpInfoResponse.bun", "bun", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.ninjaSystem.ProtoEatExpItemInfo);

		private var bun$field:serverProto.ninjaSystem.ProtoEatExpItemInfo;

		public function clearBun():void {
			bun$field = null;
		}

		public function get hasBun():Boolean {
			return bun$field != null;
		}

		public function set bun(value:serverProto.ninjaSystem.ProtoEatExpItemInfo):void {
			bun$field = value;
		}

		public function get bun():serverProto.ninjaSystem.ProtoEatExpItemInfo {
			return bun$field;
		}

		/**
		 *  @private
		 */
		public static const RAMEN:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetEatExpInfoResponse.ramen", "ramen", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.ninjaSystem.ProtoEatExpItemInfo);

		private var ramen$field:serverProto.ninjaSystem.ProtoEatExpItemInfo;

		public function clearRamen():void {
			ramen$field = null;
		}

		public function get hasRamen():Boolean {
			return ramen$field != null;
		}

		public function set ramen(value:serverProto.ninjaSystem.ProtoEatExpItemInfo):void {
			ramen$field = value;
		}

		public function get ramen():serverProto.ninjaSystem.ProtoEatExpItemInfo {
			return ramen$field;
		}

		/**
		 *  @private
		 */
		public static const ROAST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetEatExpInfoResponse.roast", "roast", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.ninjaSystem.ProtoEatExpItemInfo);

		private var roast$field:serverProto.ninjaSystem.ProtoEatExpItemInfo;

		public function clearRoast():void {
			roast$field = null;
		}

		public function get hasRoast():Boolean {
			return roast$field != null;
		}

		public function set roast(value:serverProto.ninjaSystem.ProtoEatExpItemInfo):void {
			roast$field = value;
		}

		public function get roast():serverProto.ninjaSystem.ProtoEatExpItemInfo {
			return roast$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.retInfo);
			if (hasCurrentProperty) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, current_property$field);
			}
			if (hasNextLevelPropery) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, next_level_propery$field);
			}
			if (hasCurrentExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, current_exp$field);
			}
			if (hasFullExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, full_exp$field);
			}
			if (hasBun) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, bun$field);
			}
			if (hasRamen) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ramen$field);
			}
			if (hasRoast) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, roast$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret_info$count:uint = 0;
			var current_property$count:uint = 0;
			var next_level_propery$count:uint = 0;
			var current_exp$count:uint = 0;
			var full_exp$count:uint = 0;
			var bun$count:uint = 0;
			var ramen$count:uint = 0;
			var roast$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetEatExpInfoResponse.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					if (current_property$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetEatExpInfoResponse.currentProperty cannot be set twice.');
					}
					++current_property$count;
					this.currentProperty = new serverProto.inc.ProtoNaurtoAllPropertyInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.currentProperty);
					break;
				case 3:
					if (next_level_propery$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetEatExpInfoResponse.nextLevelPropery cannot be set twice.');
					}
					++next_level_propery$count;
					this.nextLevelPropery = new serverProto.inc.ProtoNaurtoAllPropertyInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.nextLevelPropery);
					break;
				case 4:
					if (current_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetEatExpInfoResponse.currentExp cannot be set twice.');
					}
					++current_exp$count;
					this.currentExp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (full_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetEatExpInfoResponse.fullExp cannot be set twice.');
					}
					++full_exp$count;
					this.fullExp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (bun$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetEatExpInfoResponse.bun cannot be set twice.');
					}
					++bun$count;
					this.bun = new serverProto.ninjaSystem.ProtoEatExpItemInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.bun);
					break;
				case 7:
					if (ramen$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetEatExpInfoResponse.ramen cannot be set twice.');
					}
					++ramen$count;
					this.ramen = new serverProto.ninjaSystem.ProtoEatExpItemInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ramen);
					break;
				case 8:
					if (roast$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetEatExpInfoResponse.roast cannot be set twice.');
					}
					++roast$count;
					this.roast = new serverProto.ninjaSystem.ProtoEatExpItemInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.roast);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
