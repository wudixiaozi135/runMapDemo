package serverProto.activity {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.activity.ProtoAwardPackageBox;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBringinMoneyQueryRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoBringinMoneyQueryRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		private var ret$field:serverProto.inc.ProtoRetInfo;

		public function clearRet():void {
			ret$field = null;
		}

		public function get hasRet():Boolean {
			return ret$field != null;
		}

		public function set ret(value:serverProto.inc.ProtoRetInfo):void {
			ret$field = value;
		}

		public function get ret():serverProto.inc.ProtoRetInfo {
			return ret$field;
		}

		/**
		 *  @private
		 */
		public static const BRINGIN_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoBringinMoneyQueryRsp.bringin_times", "bringinTimes", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var bringin_times$field:int;

		private var hasField$0:uint = 0;

		public function clearBringinTimes():void {
			hasField$0 &= 0xfffffffe;
			bringin_times$field = new int();
		}

		public function get hasBringinTimes():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set bringinTimes(value:int):void {
			hasField$0 |= 0x1;
			bringin_times$field = value;
		}

		public function get bringinTimes():int {
			return bringin_times$field;
		}

		/**
		 *  @private
		 */
		public static const LEFT_BRINGIN_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoBringinMoneyQueryRsp.left_bringin_times", "leftBringinTimes", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var left_bringin_times$field:int;

		public function clearLeftBringinTimes():void {
			hasField$0 &= 0xfffffffd;
			left_bringin_times$field = new int();
		}

		public function get hasLeftBringinTimes():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set leftBringinTimes(value:int):void {
			hasField$0 |= 0x2;
			left_bringin_times$field = value;
		}

		public function get leftBringinTimes():int {
			return left_bringin_times$field;
		}

		/**
		 *  @private
		 */
		public static const GOLDINGOT_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoBringinMoneyQueryRsp.goldingot_num", "goldingotNum", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var goldingot_num$field:int;

		public function clearGoldingotNum():void {
			hasField$0 &= 0xfffffffb;
			goldingot_num$field = new int();
		}

		public function get hasGoldingotNum():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set goldingotNum(value:int):void {
			hasField$0 |= 0x4;
			goldingot_num$field = value;
		}

		public function get goldingotNum():int {
			return goldingot_num$field;
		}

		/**
		 *  @private
		 */
		public static const MONEY_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoBringinMoneyQueryRsp.money_num", "moneyNum", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var money_num$field:int;

		public function clearMoneyNum():void {
			hasField$0 &= 0xfffffff7;
			money_num$field = new int();
		}

		public function get hasMoneyNum():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set moneyNum(value:int):void {
			hasField$0 |= 0x8;
			money_num$field = value;
		}

		public function get moneyNum():int {
			return money_num$field;
		}

		/**
		 *  @private
		 */
		public static const PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoBringinMoneyQueryRsp.package_boxes", "packageBoxes", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoAwardPackageBox);

		[ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
		public var packageBoxes:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasBringinTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, bringin_times$field);
			}
			if (hasLeftBringinTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, left_bringin_times$field);
			}
			if (hasGoldingotNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, goldingot_num$field);
			}
			if (hasMoneyNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, money_num$field);
			}
			for (var packageBoxes$index:uint = 0; packageBoxes$index < this.packageBoxes.length; ++packageBoxes$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.packageBoxes[packageBoxes$index]);
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
			var bringin_times$count:uint = 0;
			var left_bringin_times$count:uint = 0;
			var goldingot_num$count:uint = 0;
			var money_num$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBringinMoneyQueryRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (bringin_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBringinMoneyQueryRsp.bringinTimes cannot be set twice.');
					}
					++bringin_times$count;
					this.bringinTimes = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (left_bringin_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBringinMoneyQueryRsp.leftBringinTimes cannot be set twice.');
					}
					++left_bringin_times$count;
					this.leftBringinTimes = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (goldingot_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBringinMoneyQueryRsp.goldingotNum cannot be set twice.');
					}
					++goldingot_num$count;
					this.goldingotNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (money_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBringinMoneyQueryRsp.moneyNum cannot be set twice.');
					}
					++money_num$count;
					this.moneyNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					this.packageBoxes.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoAwardPackageBox()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
