package serverProto.chest {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.chest.ProtoChestPayInfo;
	import serverProto.chest.ProtoChestItemInfo;
	import serverProto.chest.ProtoChestInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoQuiltChestRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.chest.ProtoQuiltChestRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const CHEST_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.chest.ProtoQuiltChestRsp.chest_info", "chestInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.chest.ProtoChestInfo);

		private var chest_info$field:serverProto.chest.ProtoChestInfo;

		public function clearChestInfo():void {
			chest_info$field = null;
		}

		public function get hasChestInfo():Boolean {
			return chest_info$field != null;
		}

		public function set chestInfo(value:serverProto.chest.ProtoChestInfo):void {
			chest_info$field = value;
		}

		public function get chestInfo():serverProto.chest.ProtoChestInfo {
			return chest_info$field;
		}

		/**
		 *  @private
		 */
		public static const ITEM_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.chest.ProtoQuiltChestRsp.item_info", "itemInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.chest.ProtoChestItemInfo);

		[ArrayElementType("serverProto.chest.ProtoChestItemInfo")]
		public var itemInfo:Array = [];

		/**
		 *  @private
		 */
		public static const PAY_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.chest.ProtoQuiltChestRsp.pay_info", "payInfo", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.chest.ProtoChestPayInfo);

		private var pay_info$field:serverProto.chest.ProtoChestPayInfo;

		public function clearPayInfo():void {
			pay_info$field = null;
		}

		public function get hasPayInfo():Boolean {
			return pay_info$field != null;
		}

		public function set payInfo(value:serverProto.chest.ProtoChestPayInfo):void {
			pay_info$field = value;
		}

		public function get payInfo():serverProto.chest.ProtoChestPayInfo {
			return pay_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasChestInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, chest_info$field);
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
			var chest_info$count:uint = 0;
			var pay_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuiltChestRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (chest_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuiltChestRsp.chestInfo cannot be set twice.');
					}
					++chest_info$count;
					this.chestInfo = new serverProto.chest.ProtoChestInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.chestInfo);
					break;
				case 3:
					this.itemInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.chest.ProtoChestItemInfo()));
					break;
				case 4:
					if (pay_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuiltChestRsp.payInfo cannot be set twice.');
					}
					++pay_info$count;
					this.payInfo = new serverProto.chest.ProtoChestPayInfo();
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
