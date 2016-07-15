package serverProto.tabard {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.tabard.ProtoTabardPropertyInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTabardInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoTabardInfo.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var id$field:int;

		private var hasField$0:uint = 0;

		public function clearId():void {
			hasField$0 &= 0xfffffffe;
			id$field = new int();
		}

		public function get hasId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set id(value:int):void {
			hasField$0 |= 0x1;
			id$field = value;
		}

		public function get id():int {
			return id$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoTabardInfo.level", "level", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:int;

		public function clearLevel():void {
			hasField$0 &= 0xfffffffd;
			level$field = new int();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set level(value:int):void {
			hasField$0 |= 0x2;
			level$field = value;
		}

		public function get level():int {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const CURR_STEP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoTabardInfo.curr_step", "currStep", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var curr_step$field:int;

		public function clearCurrStep():void {
			hasField$0 &= 0xfffffffb;
			curr_step$field = new int();
		}

		public function get hasCurrStep():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set currStep(value:int):void {
			hasField$0 |= 0x4;
			curr_step$field = value;
		}

		public function get currStep():int {
			return curr_step$field;
		}

		/**
		 *  @private
		 */
		public static const SHOW_FLAG:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoTabardInfo.show_flag", "showFlag", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var show_flag$field:int;

		public function clearShowFlag():void {
			hasField$0 &= 0xfffffff7;
			show_flag$field = new int();
		}

		public function get hasShowFlag():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set showFlag(value:int):void {
			hasField$0 |= 0x8;
			show_flag$field = value;
		}

		public function get showFlag():int {
			return show_flag$field;
		}

		/**
		 *  @private
		 */
		public static const PROPERTY_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.tabard.ProtoTabardInfo.property_info", "propertyInfo", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.tabard.ProtoTabardPropertyInfo);

		private var property_info$field:serverProto.tabard.ProtoTabardPropertyInfo;

		public function clearPropertyInfo():void {
			property_info$field = null;
		}

		public function get hasPropertyInfo():Boolean {
			return property_info$field != null;
		}

		public function set propertyInfo(value:serverProto.tabard.ProtoTabardPropertyInfo):void {
			property_info$field = value;
		}

		public function get propertyInfo():serverProto.tabard.ProtoTabardPropertyInfo {
			return property_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, id$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, level$field);
			}
			if (hasCurrStep) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, curr_step$field);
			}
			if (hasShowFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, show_flag$field);
			}
			if (hasPropertyInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, property_info$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var id$count:uint = 0;
			var level$count:uint = 0;
			var curr_step$count:uint = 0;
			var show_flag$count:uint = 0;
			var property_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTabardInfo.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTabardInfo.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (curr_step$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTabardInfo.currStep cannot be set twice.');
					}
					++curr_step$count;
					this.currStep = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (show_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTabardInfo.showFlag cannot be set twice.');
					}
					++show_flag$count;
					this.showFlag = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (property_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTabardInfo.propertyInfo cannot be set twice.');
					}
					++property_info$count;
					this.propertyInfo = new serverProto.tabard.ProtoTabardPropertyInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.propertyInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
