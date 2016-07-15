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
	import serverProto.supershadow.ProtoSuperShadowInfo;
	import serverProto.cardpack.ProtoCardPacketInfo;
	import serverProto.cardpack.ProtoCardPackPayInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetCardPacketInfoRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoGetCardPacketInfoRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const CARD_PACKET:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoGetCardPacketInfoRsp.card_packet", "cardPacket", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.cardpack.ProtoCardPacketInfo);

		[ArrayElementType("serverProto.cardpack.ProtoCardPacketInfo")]
		public var cardPacket:Array = [];

		/**
		 *  @private
		 */
		public static const PAY_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoGetCardPacketInfoRsp.pay_info", "payInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.cardpack.ProtoCardPackPayInfo);

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
		public static const SUPER_SHADOW_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoGetCardPacketInfoRsp.super_shadow_info", "superShadowInfo", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.supershadow.ProtoSuperShadowInfo);

		private var super_shadow_info$field:serverProto.supershadow.ProtoSuperShadowInfo;

		public function clearSuperShadowInfo():void {
			super_shadow_info$field = null;
		}

		public function get hasSuperShadowInfo():Boolean {
			return super_shadow_info$field != null;
		}

		public function set superShadowInfo(value:serverProto.supershadow.ProtoSuperShadowInfo):void {
			super_shadow_info$field = value;
		}

		public function get superShadowInfo():serverProto.supershadow.ProtoSuperShadowInfo {
			return super_shadow_info$field;
		}

		/**
		 *  @private
		 */
		public static const QUILT_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoGetCardPacketInfoRsp.quilt_count", "quiltCount", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var quilt_count$field:uint;

		private var hasField$0:uint = 0;

		public function clearQuiltCount():void {
			hasField$0 &= 0xfffffffe;
			quilt_count$field = new uint();
		}

		public function get hasQuiltCount():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set quiltCount(value:uint):void {
			hasField$0 |= 0x1;
			quilt_count$field = value;
		}

		public function get quiltCount():uint {
			return quilt_count$field;
		}

		/**
		 *  @private
		 */
		public static const PRE_OPEN_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoGetCardPacketInfoRsp.pre_open_count", "preOpenCount", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var pre_open_count$field:uint;

		public function clearPreOpenCount():void {
			hasField$0 &= 0xfffffffd;
			pre_open_count$field = new uint();
		}

		public function get hasPreOpenCount():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set preOpenCount(value:uint):void {
			hasField$0 |= 0x2;
			pre_open_count$field = value;
		}

		public function get preOpenCount():uint {
			return pre_open_count$field;
		}

		/**
		 *  @private
		 */
		public static const OPEN_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoGetCardPacketInfoRsp.open_count", "openCount", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var open_count$field:uint;

		public function clearOpenCount():void {
			hasField$0 &= 0xfffffffb;
			open_count$field = new uint();
		}

		public function get hasOpenCount():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set openCount(value:uint):void {
			hasField$0 |= 0x4;
			open_count$field = value;
		}

		public function get openCount():uint {
			return open_count$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			for (var cardPacket$index:uint = 0; cardPacket$index < this.cardPacket.length; ++cardPacket$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.cardPacket[cardPacket$index]);
			}
			if (hasPayInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, pay_info$field);
			}
			if (hasSuperShadowInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, super_shadow_info$field);
			}
			if (hasQuiltCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, quilt_count$field);
			}
			if (hasPreOpenCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, pre_open_count$field);
			}
			if (hasOpenCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, open_count$field);
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
			var pay_info$count:uint = 0;
			var super_shadow_info$count:uint = 0;
			var quilt_count$count:uint = 0;
			var pre_open_count$count:uint = 0;
			var open_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetCardPacketInfoRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					this.cardPacket.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.cardpack.ProtoCardPacketInfo()));
					break;
				case 3:
					if (pay_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetCardPacketInfoRsp.payInfo cannot be set twice.');
					}
					++pay_info$count;
					this.payInfo = new serverProto.cardpack.ProtoCardPackPayInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.payInfo);
					break;
				case 4:
					if (super_shadow_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetCardPacketInfoRsp.superShadowInfo cannot be set twice.');
					}
					++super_shadow_info$count;
					this.superShadowInfo = new serverProto.supershadow.ProtoSuperShadowInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.superShadowInfo);
					break;
				case 5:
					if (quilt_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetCardPacketInfoRsp.quiltCount cannot be set twice.');
					}
					++quilt_count$count;
					this.quiltCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (pre_open_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetCardPacketInfoRsp.preOpenCount cannot be set twice.');
					}
					++pre_open_count$count;
					this.preOpenCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (open_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetCardPacketInfoRsp.openCount cannot be set twice.');
					}
					++open_count$count;
					this.openCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
