package serverProto.user {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.user.ProtoTransferRolePositionInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoOpenTransferRoleResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoOpenTransferRoleResponse.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const POSITION_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoOpenTransferRoleResponse.position_list", "positionList", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.user.ProtoTransferRolePositionInfo);

		[ArrayElementType("serverProto.user.ProtoTransferRolePositionInfo")]
		public var positionList:Array = [];

		/**
		 *  @private
		 */
		public static const CHOOSE_INDEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoOpenTransferRoleResponse.choose_index", "chooseIndex", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var choose_index$field:int;

		private var hasField$0:uint = 0;

		public function clearChooseIndex():void {
			hasField$0 &= 0xfffffffe;
			choose_index$field = new int();
		}

		public function get hasChooseIndex():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set chooseIndex(value:int):void {
			hasField$0 |= 0x1;
			choose_index$field = value;
		}

		public function get chooseIndex():int {
			return choose_index$field;
		}

		/**
		 *  @private
		 */
		public static const CD_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoOpenTransferRoleResponse.cd_time", "cdTime", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var cd_time$field:int;

		public function clearCdTime():void {
			hasField$0 &= 0xfffffffd;
			cd_time$field = new int();
		}

		public function get hasCdTime():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set cdTime(value:int):void {
			hasField$0 |= 0x2;
			cd_time$field = value;
		}

		public function get cdTime():int {
			return cd_time$field;
		}

		/**
		 *  @private
		 */
		public static const NEED_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoOpenTransferRoleResponse.need_money", "needMoney", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var need_money$field:int;

		public function clearNeedMoney():void {
			hasField$0 &= 0xfffffffb;
			need_money$field = new int();
		}

		public function get hasNeedMoney():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set needMoney(value:int):void {
			hasField$0 |= 0x4;
			need_money$field = value;
		}

		public function get needMoney():int {
			return need_money$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.retInfo);
			for (var positionList$index:uint = 0; positionList$index < this.positionList.length; ++positionList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.positionList[positionList$index]);
			}
			if (hasChooseIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, choose_index$field);
			}
			if (hasCdTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, cd_time$field);
			}
			if (hasNeedMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, need_money$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret_info$count:uint = 0;
			var choose_index$count:uint = 0;
			var cd_time$count:uint = 0;
			var need_money$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenTransferRoleResponse.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					this.positionList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.user.ProtoTransferRolePositionInfo()));
					break;
				case 3:
					if (choose_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenTransferRoleResponse.chooseIndex cannot be set twice.');
					}
					++choose_index$count;
					this.chooseIndex = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (cd_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenTransferRoleResponse.cdTime cannot be set twice.');
					}
					++cd_time$count;
					this.cdTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (need_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenTransferRoleResponse.needMoney cannot be set twice.');
					}
					++need_money$count;
					this.needMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
