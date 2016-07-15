package serverProto.bag {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.bag.ProtoEquipInfo;
	import serverProto.bag.ProtoBagItemInfo;
	import serverProto.bag.ProtoTaskItemInfo;
	import serverProto.bag.ProtoBagRuneInfo;
	import serverProto.bag.ProtoBagCardInfo;
	import serverProto.bag.ProtoBagSummonMonsterCardInfo;
	import serverProto.bag.ProtoBagTreasureMapInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBagInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ITEM_CELL_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoBagInfo.item_cell_num", "itemCellNum", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var itemCellNum:uint;

		/**
		 *  @private
		 */
		public static const ITEM:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoBagInfo.item", "item", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.ProtoBagItemInfo);

		[ArrayElementType("serverProto.bag.ProtoBagItemInfo")]
		public var item:Array = [];

		/**
		 *  @private
		 */
		public static const TASK_ITEM:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoBagInfo.task_item", "taskItem", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.ProtoTaskItemInfo);

		[ArrayElementType("serverProto.bag.ProtoTaskItemInfo")]
		public var taskItem:Array = [];

		/**
		 *  @private
		 */
		public static const EQUIP:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoBagInfo.equip", "equip", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.ProtoEquipInfo);

		[ArrayElementType("serverProto.bag.ProtoEquipInfo")]
		public var equip:Array = [];

		/**
		 *  @private
		 */
		public static const CARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoBagInfo.card", "card", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.ProtoBagCardInfo);

		[ArrayElementType("serverProto.bag.ProtoBagCardInfo")]
		public var card:Array = [];

		/**
		 *  @private
		 */
		public static const SUMMOM_MONSTER_CARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoBagInfo.summom_monster_card", "summomMonsterCard", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.ProtoBagSummonMonsterCardInfo);

		[ArrayElementType("serverProto.bag.ProtoBagSummonMonsterCardInfo")]
		public var summomMonsterCard:Array = [];

		/**
		 *  @private
		 */
		public static const RUNE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoBagInfo.rune", "rune", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.ProtoBagRuneInfo);

		[ArrayElementType("serverProto.bag.ProtoBagRuneInfo")]
		public var rune:Array = [];

		/**
		 *  @private
		 */
		public static const TREASURE_MAP:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoBagInfo.treasure_map", "treasureMap", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.bag.ProtoBagTreasureMapInfo);

		[ArrayElementType("serverProto.bag.ProtoBagTreasureMapInfo")]
		public var treasureMap:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.itemCellNum);
			for (var item$index:uint = 0; item$index < this.item.length; ++item$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.item[item$index]);
			}
			for (var taskItem$index:uint = 0; taskItem$index < this.taskItem.length; ++taskItem$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.taskItem[taskItem$index]);
			}
			for (var equip$index:uint = 0; equip$index < this.equip.length; ++equip$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.equip[equip$index]);
			}
			for (var card$index:uint = 0; card$index < this.card.length; ++card$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.card[card$index]);
			}
			for (var summomMonsterCard$index:uint = 0; summomMonsterCard$index < this.summomMonsterCard.length; ++summomMonsterCard$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.summomMonsterCard[summomMonsterCard$index]);
			}
			for (var rune$index:uint = 0; rune$index < this.rune.length; ++rune$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.rune[rune$index]);
			}
			for (var treasureMap$index:uint = 0; treasureMap$index < this.treasureMap.length; ++treasureMap$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.treasureMap[treasureMap$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var item_cell_num$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (item_cell_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBagInfo.itemCellNum cannot be set twice.');
					}
					++item_cell_num$count;
					this.itemCellNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					this.item.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.bag.ProtoBagItemInfo()));
					break;
				case 3:
					this.taskItem.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.bag.ProtoTaskItemInfo()));
					break;
				case 4:
					this.equip.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.bag.ProtoEquipInfo()));
					break;
				case 5:
					this.card.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.bag.ProtoBagCardInfo()));
					break;
				case 6:
					this.summomMonsterCard.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.bag.ProtoBagSummonMonsterCardInfo()));
					break;
				case 7:
					this.rune.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.bag.ProtoBagRuneInfo()));
					break;
				case 9:
					this.treasureMap.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.bag.ProtoBagTreasureMapInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
