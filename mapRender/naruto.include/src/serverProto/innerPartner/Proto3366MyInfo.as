package serverProto.innerPartner {
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
	public  final class Proto3366MyInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const GROW_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPartner.Proto3366MyInfo.grow_value", "growValue", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var grow_value$field:uint;

		private var hasField$0:uint = 0;

		public function clearGrowValue():void {
			hasField$0 &= 0xfffffffe;
			grow_value$field = new uint();
		}

		public function get hasGrowValue():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set growValue(value:uint):void {
			hasField$0 |= 0x1;
			grow_value$field = value;
		}

		public function get growValue():uint {
			return grow_value$field;
		}

		/**
		 *  @private
		 */
		public static const NEXT_GROWVALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPartner.Proto3366MyInfo.next_growvalue", "nextGrowvalue", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var next_growvalue$field:uint;

		public function clearNextGrowvalue():void {
			hasField$0 &= 0xfffffffd;
			next_growvalue$field = new uint();
		}

		public function get hasNextGrowvalue():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set nextGrowvalue(value:uint):void {
			hasField$0 |= 0x2;
			next_growvalue$field = value;
		}

		public function get nextGrowvalue():uint {
			return next_growvalue$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPartner.Proto3366MyInfo.level", "level", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:uint;

		public function clearLevel():void {
			hasField$0 &= 0xfffffffb;
			level$field = new uint();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set level(value:uint):void {
			hasField$0 |= 0x4;
			level$field = value;
		}

		public function get level():uint {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const ICON_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPartner.Proto3366MyInfo.icon_status", "iconStatus", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var icon_status$field:uint;

		public function clearIconStatus():void {
			hasField$0 &= 0xfffffff7;
			icon_status$field = new uint();
		}

		public function get hasIconStatus():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set iconStatus(value:uint):void {
			hasField$0 |= 0x8;
			icon_status$field = value;
		}

		public function get iconStatus():uint {
			return icon_status$field;
		}

		/**
		 *  @private
		 */
		public static const ICON_GROWVALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPartner.Proto3366MyInfo.icon_growvalue", "iconGrowvalue", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var icon_growvalue$field:uint;

		public function clearIconGrowvalue():void {
			hasField$0 &= 0xffffffef;
			icon_growvalue$field = new uint();
		}

		public function get hasIconGrowvalue():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set iconGrowvalue(value:uint):void {
			hasField$0 |= 0x10;
			icon_growvalue$field = value;
		}

		public function get iconGrowvalue():uint {
			return icon_growvalue$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasGrowValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, grow_value$field);
			}
			if (hasNextGrowvalue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, next_growvalue$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, level$field);
			}
			if (hasIconStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, icon_status$field);
			}
			if (hasIconGrowvalue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, icon_growvalue$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var grow_value$count:uint = 0;
			var next_growvalue$count:uint = 0;
			var level$count:uint = 0;
			var icon_status$count:uint = 0;
			var icon_growvalue$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 2:
					if (grow_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: Proto3366MyInfo.growValue cannot be set twice.');
					}
					++grow_value$count;
					this.growValue = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (next_growvalue$count != 0) {
						throw new flash.errors.IOError('Bad data format: Proto3366MyInfo.nextGrowvalue cannot be set twice.');
					}
					++next_growvalue$count;
					this.nextGrowvalue = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: Proto3366MyInfo.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (icon_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: Proto3366MyInfo.iconStatus cannot be set twice.');
					}
					++icon_status$count;
					this.iconStatus = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (icon_growvalue$count != 0) {
						throw new flash.errors.IOError('Bad data format: Proto3366MyInfo.iconGrowvalue cannot be set twice.');
					}
					++icon_growvalue$count;
					this.iconGrowvalue = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
