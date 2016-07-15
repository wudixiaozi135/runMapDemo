package serverProto.supershadow {
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
	import serverProto.supershadow.ProtoSuperShadowItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoQuiltSuperShadowRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.supershadow.ProtoQuiltSuperShadowRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const ITEM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.supershadow.ProtoQuiltSuperShadowRsp.item_info", "itemInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.supershadow.ProtoSuperShadowItemInfo);

		private var item_info$field:serverProto.supershadow.ProtoSuperShadowItemInfo;

		public function clearItemInfo():void {
			item_info$field = null;
		}

		public function get hasItemInfo():Boolean {
			return item_info$field != null;
		}

		public function set itemInfo(value:serverProto.supershadow.ProtoSuperShadowItemInfo):void {
			item_info$field = value;
		}

		public function get itemInfo():serverProto.supershadow.ProtoSuperShadowItemInfo {
			return item_info$field;
		}

		/**
		 *  @private
		 */
		public static const SUPER_SHADOW_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.supershadow.ProtoQuiltSuperShadowRsp.super_shadow_info", "superShadowInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.supershadow.ProtoSuperShadowInfo);

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
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasItemInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, item_info$field);
			}
			if (hasSuperShadowInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, super_shadow_info$field);
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
			var item_info$count:uint = 0;
			var super_shadow_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuiltSuperShadowRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (item_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuiltSuperShadowRsp.itemInfo cannot be set twice.');
					}
					++item_info$count;
					this.itemInfo = new serverProto.supershadow.ProtoSuperShadowItemInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.itemInfo);
					break;
				case 3:
					if (super_shadow_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuiltSuperShadowRsp.superShadowInfo cannot be set twice.');
					}
					++super_shadow_info$count;
					this.superShadowInfo = new serverProto.supershadow.ProtoSuperShadowInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.superShadowInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
