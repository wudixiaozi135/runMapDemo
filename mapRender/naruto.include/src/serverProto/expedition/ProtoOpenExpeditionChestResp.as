package serverProto.expedition {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.expedition.ProtoExpeditionAwardItem;
	import serverProto.expedition.ProtoAwardBoxInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoOpenExpeditionChestResp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoOpenExpeditionChestResp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const COPPER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoOpenExpeditionChestResp.copper", "copper", (2 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const SCORE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoOpenExpeditionChestResp.score", "score", (3 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const AWARD_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoOpenExpeditionChestResp.award_list", "awardList", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.expedition.ProtoExpeditionAwardItem);

		[ArrayElementType("serverProto.expedition.ProtoExpeditionAwardItem")]
		public var awardList:Array = [];

		/**
		 *  @private
		 */
		public static const EXTRA_VIP_COPPER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoOpenExpeditionChestResp.extra_vip_copper", "extraVipCopper", (5 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const AWARD_BOX:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoOpenExpeditionChestResp.award_box", "awardBox", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.expedition.ProtoExpeditionAwardItem);

		private var award_box$field:serverProto.expedition.ProtoExpeditionAwardItem;

		public function clearAwardBox():void {
			award_box$field = null;
		}

		public function get hasAwardBox():Boolean {
			return award_box$field != null;
		}

		public function set awardBox(value:serverProto.expedition.ProtoExpeditionAwardItem):void {
			award_box$field = value;
		}

		public function get awardBox():serverProto.expedition.ProtoExpeditionAwardItem {
			return award_box$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD_BOX_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoOpenExpeditionChestResp.award_box_info", "awardBoxInfo", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.expedition.ProtoAwardBoxInfo);

		private var award_box_info$field:serverProto.expedition.ProtoAwardBoxInfo;

		public function clearAwardBoxInfo():void {
			award_box_info$field = null;
		}

		public function get hasAwardBoxInfo():Boolean {
			return award_box_info$field != null;
		}

		public function set awardBoxInfo(value:serverProto.expedition.ProtoAwardBoxInfo):void {
			award_box_info$field = value;
		}

		public function get awardBoxInfo():serverProto.expedition.ProtoAwardBoxInfo {
			return award_box_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasCopper) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, copper$field);
			}
			if (hasScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, score$field);
			}
			for (var awardList$index:uint = 0; awardList$index < this.awardList.length; ++awardList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.awardList[awardList$index]);
			}
			if (hasExtraVipCopper) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, extra_vip_copper$field);
			}
			if (hasAwardBox) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, award_box$field);
			}
			if (hasAwardBoxInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, award_box_info$field);
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
			var copper$count:uint = 0;
			var score$count:uint = 0;
			var extra_vip_copper$count:uint = 0;
			var award_box$count:uint = 0;
			var award_box_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenExpeditionChestResp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (copper$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenExpeditionChestResp.copper cannot be set twice.');
					}
					++copper$count;
					this.copper = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenExpeditionChestResp.score cannot be set twice.');
					}
					++score$count;
					this.score = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					this.awardList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.expedition.ProtoExpeditionAwardItem()));
					break;
				case 5:
					if (extra_vip_copper$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenExpeditionChestResp.extraVipCopper cannot be set twice.');
					}
					++extra_vip_copper$count;
					this.extraVipCopper = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 6:
					if (award_box$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenExpeditionChestResp.awardBox cannot be set twice.');
					}
					++award_box$count;
					this.awardBox = new serverProto.expedition.ProtoExpeditionAwardItem();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.awardBox);
					break;
				case 7:
					if (award_box_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenExpeditionChestResp.awardBoxInfo cannot be set twice.');
					}
					++award_box_info$count;
					this.awardBoxInfo = new serverProto.expedition.ProtoAwardBoxInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.awardBoxInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
