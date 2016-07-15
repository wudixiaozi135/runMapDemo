package serverProto.expedition {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.expedition.ProtoExpeditionAwardItem;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoExpeditionChestInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const COPPER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionChestInfo.copper", "copper", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var copper$field:int;

		private var hasField$0:uint = 0;

		public function clearCopper():void {
			hasField$0 &= 0xfffffffe;
			copper$field = new int();
		}

		public function get hasCopper():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set copper(value:int):void {
			hasField$0 |= 0x1;
			copper$field = value;
		}

		public function get copper():int {
			return copper$field;
		}

		/**
		 *  @private
		 */
		public static const SCORE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionChestInfo.score", "score", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var score$field:int;

		public function clearScore():void {
			hasField$0 &= 0xfffffffd;
			score$field = new int();
		}

		public function get hasScore():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set score(value:int):void {
			hasField$0 |= 0x2;
			score$field = value;
		}

		public function get score():int {
			return score$field;
		}

		/**
		 *  @private
		 */
		public static const ITEM_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoExpeditionChestInfo.item_list", "itemList", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.expedition.ProtoExpeditionAwardItem);

		[ArrayElementType("serverProto.expedition.ProtoExpeditionAwardItem")]
		public var itemList:Array = [];

		/**
		 *  @private
		 */
		public static const EXTRA_VIP_COPPER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionChestInfo.extra_vip_copper", "extraVipCopper", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var extra_vip_copper$field:int;

		public function clearExtraVipCopper():void {
			hasField$0 &= 0xfffffffb;
			extra_vip_copper$field = new int();
		}

		public function get hasExtraVipCopper():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set extraVipCopper(value:int):void {
			hasField$0 |= 0x4;
			extra_vip_copper$field = value;
		}

		public function get extraVipCopper():int {
			return extra_vip_copper$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasCopper) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, copper$field);
			}
			if (hasScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, score$field);
			}
			for (var itemList$index:uint = 0; itemList$index < this.itemList.length; ++itemList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.itemList[itemList$index]);
			}
			if (hasExtraVipCopper) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, extra_vip_copper$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var copper$count:uint = 0;
			var score$count:uint = 0;
			var extra_vip_copper$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (copper$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionChestInfo.copper cannot be set twice.');
					}
					++copper$count;
					this.copper = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionChestInfo.score cannot be set twice.');
					}
					++score$count;
					this.score = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					this.itemList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.expedition.ProtoExpeditionAwardItem()));
					break;
				case 4:
					if (extra_vip_copper$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExpeditionChestInfo.extraVipCopper cannot be set twice.');
					}
					++extra_vip_copper$count;
					this.extraVipCopper = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
