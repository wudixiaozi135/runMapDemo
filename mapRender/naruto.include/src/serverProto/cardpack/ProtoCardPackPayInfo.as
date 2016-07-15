package serverProto.cardpack {
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
	public  final class ProtoCardPackPayInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const MONEY_JIBAN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoCardPackPayInfo.money_jiban", "moneyJiban", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var moneyJiban:uint;

		/**
		 *  @private
		 */
		public static const MONEY_FENGYIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoCardPackPayInfo.money_fengyin", "moneyFengyin", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var moneyFengyin:uint;

		/**
		 *  @private
		 */
		public static const MONEY_DIANQUAN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoCardPackPayInfo.money_dianquan", "moneyDianquan", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var moneyDianquan:uint;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.moneyJiban);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.moneyFengyin);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.moneyDianquan);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var money_jiban$count:uint = 0;
			var money_fengyin$count:uint = 0;
			var money_dianquan$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (money_jiban$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCardPackPayInfo.moneyJiban cannot be set twice.');
					}
					++money_jiban$count;
					this.moneyJiban = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (money_fengyin$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCardPackPayInfo.moneyFengyin cannot be set twice.');
					}
					++money_fengyin$count;
					this.moneyFengyin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (money_dianquan$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCardPackPayInfo.moneyDianquan cannot be set twice.');
					}
					++money_dianquan$count;
					this.moneyDianquan = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
