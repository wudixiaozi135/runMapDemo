package serverProto.redPackage {
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
	public  final class ProtoRedPackageInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RECHARGE_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoRedPackageInfo.recharge_money", "rechargeMoney", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var rechargeMoney:int;

		/**
		 *  @private
		 */
		public static const BEGIN_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoRedPackageInfo.begin_time", "beginTime", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var begin_time$field:int;

		private var hasField$0:uint = 0;

		public function clearBeginTime():void {
			hasField$0 &= 0xfffffffe;
			begin_time$field = new int();
		}

		public function get hasBeginTime():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set beginTime(value:int):void {
			hasField$0 |= 0x1;
			begin_time$field = value;
		}

		public function get beginTime():int {
			return begin_time$field;
		}

		/**
		 *  @private
		 */
		public static const END_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoRedPackageInfo.end_time", "endTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var end_time$field:int;

		public function clearEndTime():void {
			hasField$0 &= 0xfffffffd;
			end_time$field = new int();
		}

		public function get hasEndTime():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set endTime(value:int):void {
			hasField$0 |= 0x2;
			end_time$field = value;
		}

		public function get endTime():int {
			return end_time$field;
		}

		/**
		 *  @private
		 */
		public static const RETURN_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoRedPackageInfo.return_money", "returnMoney", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var return_money$field:int;

		public function clearReturnMoney():void {
			hasField$0 &= 0xfffffffb;
			return_money$field = new int();
		}

		public function get hasReturnMoney():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set returnMoney(value:int):void {
			hasField$0 |= 0x4;
			return_money$field = value;
		}

		public function get returnMoney():int {
			return return_money$field;
		}

		/**
		 *  @private
		 */
		public static const SEND_DIRECT_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoRedPackageInfo.send_direct_count", "sendDirectCount", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var send_direct_count$field:int;

		public function clearSendDirectCount():void {
			hasField$0 &= 0xfffffff7;
			send_direct_count$field = new int();
		}

		public function get hasSendDirectCount():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set sendDirectCount(value:int):void {
			hasField$0 |= 0x8;
			send_direct_count$field = value;
		}

		public function get sendDirectCount():int {
			return send_direct_count$field;
		}

		/**
		 *  @private
		 */
		public static const RECV_DIRECT_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoRedPackageInfo.recv_direct_count", "recvDirectCount", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var recv_direct_count$field:int;

		public function clearRecvDirectCount():void {
			hasField$0 &= 0xffffffef;
			recv_direct_count$field = new int();
		}

		public function get hasRecvDirectCount():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set recvDirectCount(value:int):void {
			hasField$0 |= 0x10;
			recv_direct_count$field = value;
		}

		public function get recvDirectCount():int {
			return recv_direct_count$field;
		}

		/**
		 *  @private
		 */
		public static const SEND_WHOLE_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoRedPackageInfo.send_whole_count", "sendWholeCount", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var send_whole_count$field:int;

		public function clearSendWholeCount():void {
			hasField$0 &= 0xffffffdf;
			send_whole_count$field = new int();
		}

		public function get hasSendWholeCount():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set sendWholeCount(value:int):void {
			hasField$0 |= 0x20;
			send_whole_count$field = value;
		}

		public function get sendWholeCount():int {
			return send_whole_count$field;
		}

		/**
		 *  @private
		 */
		public static const RECV_WHOLE_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoRedPackageInfo.recv_whole_count", "recvWholeCount", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var recv_whole_count$field:int;

		public function clearRecvWholeCount():void {
			hasField$0 &= 0xffffffbf;
			recv_whole_count$field = new int();
		}

		public function get hasRecvWholeCount():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set recvWholeCount(value:int):void {
			hasField$0 |= 0x40;
			recv_whole_count$field = value;
		}

		public function get recvWholeCount():int {
			return recv_whole_count$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.rechargeMoney);
			if (hasBeginTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, begin_time$field);
			}
			if (hasEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, end_time$field);
			}
			if (hasReturnMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, return_money$field);
			}
			if (hasSendDirectCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, send_direct_count$field);
			}
			if (hasRecvDirectCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, recv_direct_count$field);
			}
			if (hasSendWholeCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, send_whole_count$field);
			}
			if (hasRecvWholeCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, recv_whole_count$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var recharge_money$count:uint = 0;
			var begin_time$count:uint = 0;
			var end_time$count:uint = 0;
			var return_money$count:uint = 0;
			var send_direct_count$count:uint = 0;
			var recv_direct_count$count:uint = 0;
			var send_whole_count$count:uint = 0;
			var recv_whole_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (recharge_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRedPackageInfo.rechargeMoney cannot be set twice.');
					}
					++recharge_money$count;
					this.rechargeMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (begin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRedPackageInfo.beginTime cannot be set twice.');
					}
					++begin_time$count;
					this.beginTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRedPackageInfo.endTime cannot be set twice.');
					}
					++end_time$count;
					this.endTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (return_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRedPackageInfo.returnMoney cannot be set twice.');
					}
					++return_money$count;
					this.returnMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (send_direct_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRedPackageInfo.sendDirectCount cannot be set twice.');
					}
					++send_direct_count$count;
					this.sendDirectCount = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (recv_direct_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRedPackageInfo.recvDirectCount cannot be set twice.');
					}
					++recv_direct_count$count;
					this.recvDirectCount = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (send_whole_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRedPackageInfo.sendWholeCount cannot be set twice.');
					}
					++send_whole_count$count;
					this.sendWholeCount = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (recv_whole_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRedPackageInfo.recvWholeCount cannot be set twice.');
					}
					++recv_whole_count$count;
					this.recvWholeCount = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
