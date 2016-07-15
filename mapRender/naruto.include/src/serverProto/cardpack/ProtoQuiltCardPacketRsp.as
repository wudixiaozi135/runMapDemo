package serverProto.cardpack {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.cardpack.ProtoCardPacketInfo;
	import serverProto.cardpack.ProtoCardPackPayInfo;
	import serverProto.cardpack.ProtoCardPackItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoQuiltCardPacketRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoQuiltCardPacketRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const CARD_PACKET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoQuiltCardPacketRsp.card_packet", "cardPacket", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.cardpack.ProtoCardPacketInfo);

		private var card_packet$field:serverProto.cardpack.ProtoCardPacketInfo;

		public function clearCardPacket():void {
			card_packet$field = null;
		}

		public function get hasCardPacket():Boolean {
			return card_packet$field != null;
		}

		public function set cardPacket(value:serverProto.cardpack.ProtoCardPacketInfo):void {
			card_packet$field = value;
		}

		public function get cardPacket():serverProto.cardpack.ProtoCardPacketInfo {
			return card_packet$field;
		}

		/**
		 *  @private
		 */
		public static const ITEM_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoQuiltCardPacketRsp.item_info", "itemInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.cardpack.ProtoCardPackItemInfo);

		[ArrayElementType("serverProto.cardpack.ProtoCardPackItemInfo")]
		public var itemInfo:Array = [];

		/**
		 *  @private
		 */
		public static const PAY_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoQuiltCardPacketRsp.pay_info", "payInfo", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.cardpack.ProtoCardPackPayInfo);

		private var pay_info$field:serverProto.cardpack.ProtoCardPackPayInfo;

		public function clearPayInfo():void {
			pay_info$field = null;
		}

		public function get hasPayInfo():Boolean {
			return pay_info$field != null;
		}

		public function set payInfo(value:serverProto.cardpack.ProtoCardPackPayInfo):void {
			pay_info$field = value;
		}

		public function get payInfo():serverProto.cardpack.ProtoCardPackPayInfo {
			return pay_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasCardPacket) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, card_packet$field);
			}
			for (var itemInfo$index:uint = 0; itemInfo$index < this.itemInfo.length; ++itemInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.itemInfo[itemInfo$index]);
			}
			if (hasPayInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, pay_info$field);
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
			var card_packet$count:uint = 0;
			var pay_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuiltCardPacketRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (card_packet$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuiltCardPacketRsp.cardPacket cannot be set twice.');
					}
					++card_packet$count;
					this.cardPacket = new serverProto.cardpack.ProtoCardPacketInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.cardPacket);
					break;
				case 3:
					this.itemInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.cardpack.ProtoCardPackItemInfo()));
					break;
				case 4:
					if (pay_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuiltCardPacketRsp.payInfo cannot be set twice.');
					}
					++pay_info$count;
					this.payInfo = new serverProto.cardpack.ProtoCardPackPayInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.payInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
