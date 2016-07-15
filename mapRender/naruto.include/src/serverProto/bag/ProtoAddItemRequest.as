package serverProto.bag {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.bag.GridInfo;
	import serverProto.inc.ProtoItemInfo;
	import serverProto.inc.ProtoTetrad;
	import serverProto.inc.ProtoPlayerVipLevel;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoAddItemRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TETRAD_REASON:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoAddItemRequest.tetrad_reason", "tetradReason", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoTetrad);

		public var tetradReason:serverProto.inc.ProtoTetrad;

		/**
		 *  @private
		 */
		public static const ITEM_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoAddItemRequest.item_list", "itemList", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var itemList:Array = [];

		/**
		 *  @private
		 */
		public static const CHAKRA_ITEM_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoAddItemRequest.chakra_item_info", "chakraItemInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var chakraItemInfo:Array = [];

		/**
		 *  @private
		 */
		public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.bag.ProtoAddItemRequest.vip_level", "vipLevel", (4 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.ProtoPlayerVipLevel);

		private var vip_level$field:int;

		private var hasField$0:uint = 0;

		public function clearVipLevel():void {
			hasField$0 &= 0xfffffffe;
			vip_level$field = new int();
		}

		public function get hasVipLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set vipLevel(value:int):void {
			hasField$0 |= 0x1;
			vip_level$field = value;
		}

		public function get vipLevel():int {
			return vip_level$field;
		}

		/**
		 *  @private
		 */
		public static const ADD_DAY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoAddItemRequest.add_day", "addDay", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var add_day$field:uint;

		public function clearAddDay():void {
			hasField$0 &= 0xfffffffd;
			add_day$field = new uint();
		}

		public function get hasAddDay():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set addDay(value:uint):void {
			hasField$0 |= 0x2;
			add_day$field = value;
		}

		public function get addDay():uint {
			return add_day$field;
		}

		/**
		 *  @private
		 */
		public static const PROPORTION:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.bag.ProtoAddItemRequest.proportion", "proportion", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("int")]
		public var proportion:Array = [];

		/**
		 *  @private
		 */
		public static const GRID_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoAddItemRequest.grid_info", "gridInfo", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.GridInfo);

		[ArrayElementType("serverProto.bag.GridInfo")]
		public var gridInfo:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.tetradReason);
			for (var itemList$index:uint = 0; itemList$index < this.itemList.length; ++itemList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.itemList[itemList$index]);
			}
			for (var chakraItemInfo$index:uint = 0; chakraItemInfo$index < this.chakraItemInfo.length; ++chakraItemInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.chakraItemInfo[chakraItemInfo$index]);
			}
			if (hasVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, vip_level$field);
			}
			if (hasAddDay) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, add_day$field);
			}
			for (var proportion$index:uint = 0; proportion$index < this.proportion.length; ++proportion$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.proportion[proportion$index]);
			}
			for (var gridInfo$index:uint = 0; gridInfo$index < this.gridInfo.length; ++gridInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.gridInfo[gridInfo$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var tetrad_reason$count:uint = 0;
			var vip_level$count:uint = 0;
			var add_day$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (tetrad_reason$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAddItemRequest.tetradReason cannot be set twice.');
					}
					++tetrad_reason$count;
					this.tetradReason = new serverProto.inc.ProtoTetrad();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.tetradReason);
					break;
				case 2:
					this.itemList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 3:
					this.chakraItemInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 4:
					if (vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAddItemRequest.vipLevel cannot be set twice.');
					}
					++vip_level$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 5:
					if (add_day$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAddItemRequest.addDay cannot be set twice.');
					}
					++add_day$count;
					this.addDay = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_INT32, this.proportion);
						break;
					}
					this.proportion.push(com.netease.protobuf.ReadUtils.read$TYPE_INT32(input));
					break;
				case 7:
					this.gridInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.bag.GridInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
