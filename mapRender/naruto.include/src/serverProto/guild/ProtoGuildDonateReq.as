package serverProto.guild {
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
	public  final class ProtoGuildDonateReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const COIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDonateReq.coin", "coin", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var coin$field:uint;

		private var hasField$0:uint = 0;

		public function clearCoin():void {
			hasField$0 &= 0xfffffffe;
			coin$field = new uint();
		}

		public function get hasCoin():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set coin(value:uint):void {
			hasField$0 |= 0x1;
			coin$field = value;
		}

		public function get coin():uint {
			return coin$field;
		}

		/**
		 *  @private
		 */
		public static const INGOT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDonateReq.ingot", "ingot", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ingot$field:uint;

		public function clearIngot():void {
			hasField$0 &= 0xfffffffd;
			ingot$field = new uint();
		}

		public function get hasIngot():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set ingot(value:uint):void {
			hasField$0 |= 0x2;
			ingot$field = value;
		}

		public function get ingot():uint {
			return ingot$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasCoin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, coin$field);
			}
			if (hasIngot) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, ingot$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var coin$count:uint = 0;
			var ingot$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (coin$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDonateReq.coin cannot be set twice.');
					}
					++coin$count;
					this.coin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (ingot$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDonateReq.ingot cannot be set twice.');
					}
					++ingot$count;
					this.ingot = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
