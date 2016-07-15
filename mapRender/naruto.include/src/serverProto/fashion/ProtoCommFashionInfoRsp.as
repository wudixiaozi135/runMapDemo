package serverProto.fashion {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.fashion.ProtoFashionPropertyInfo;
	import serverProto.inc.ProtoItemInfo;
	import serverProto.fashion.ProtoFashionInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoCommFashionInfoRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fashion.ProtoCommFashionInfoRsp.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const SHOW_FLAG:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fashion.ProtoCommFashionInfoRsp.show_flag", "showFlag", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var show_flag$field:int;

		private var hasField$0:uint = 0;

		public function clearShowFlag():void {
			hasField$0 &= 0xfffffffe;
			show_flag$field = new int();
		}

		public function get hasShowFlag():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set showFlag(value:int):void {
			hasField$0 |= 0x1;
			show_flag$field = value;
		}

		public function get showFlag():int {
			return show_flag$field;
		}

		/**
		 *  @private
		 */
		public static const CURR_FASHION:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fashion.ProtoCommFashionInfoRsp.curr_fashion", "currFashion", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var curr_fashion$field:int;

		public function clearCurrFashion():void {
			hasField$0 &= 0xfffffffd;
			curr_fashion$field = new int();
		}

		public function get hasCurrFashion():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set currFashion(value:int):void {
			hasField$0 |= 0x2;
			curr_fashion$field = value;
		}

		public function get currFashion():int {
			return curr_fashion$field;
		}

		/**
		 *  @private
		 */
		public static const FASHION_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fashion.ProtoCommFashionInfoRsp.fashion_list", "fashionList", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fashion.ProtoFashionInfo);

		[ArrayElementType("serverProto.fashion.ProtoFashionInfo")]
		public var fashionList:Array = [];

		/**
		 *  @private
		 */
		public static const PROPERTY_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fashion.ProtoCommFashionInfoRsp.property_info", "propertyInfo", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fashion.ProtoFashionPropertyInfo);

		private var property_info$field:serverProto.fashion.ProtoFashionPropertyInfo;

		public function clearPropertyInfo():void {
			property_info$field = null;
		}

		public function get hasPropertyInfo():Boolean {
			return property_info$field != null;
		}

		public function set propertyInfo(value:serverProto.fashion.ProtoFashionPropertyInfo):void {
			property_info$field = value;
		}

		public function get propertyInfo():serverProto.fashion.ProtoFashionPropertyInfo {
			return property_info$field;
		}

		/**
		 *  @private
		 */
		public static const CHIP_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fashion.ProtoCommFashionInfoRsp.chip_list", "chipList", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var chipList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.retInfo);
			if (hasShowFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, show_flag$field);
			}
			if (hasCurrFashion) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, curr_fashion$field);
			}
			for (var fashionList$index:uint = 0; fashionList$index < this.fashionList.length; ++fashionList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.fashionList[fashionList$index]);
			}
			if (hasPropertyInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, property_info$field);
			}
			for (var chipList$index:uint = 0; chipList$index < this.chipList.length; ++chipList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.chipList[chipList$index]);
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
			var show_flag$count:uint = 0;
			var curr_fashion$count:uint = 0;
			var property_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCommFashionInfoRsp.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					if (show_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCommFashionInfoRsp.showFlag cannot be set twice.');
					}
					++show_flag$count;
					this.showFlag = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (curr_fashion$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCommFashionInfoRsp.currFashion cannot be set twice.');
					}
					++curr_fashion$count;
					this.currFashion = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					this.fashionList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fashion.ProtoFashionInfo()));
					break;
				case 5:
					if (property_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCommFashionInfoRsp.propertyInfo cannot be set twice.');
					}
					++property_info$count;
					this.propertyInfo = new serverProto.fashion.ProtoFashionPropertyInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.propertyInfo);
					break;
				case 6:
					this.chipList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
