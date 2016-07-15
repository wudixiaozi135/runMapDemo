package serverProto.practice {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.practice.ProtoPracticePayInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoPracticeTimeInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const HOUR:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticeTimeInfo.hour", "hour", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hour$field:int;

		private var hasField$0:uint = 0;

		public function clearHour():void {
			hasField$0 &= 0xfffffffe;
			hour$field = new int();
		}

		public function get hasHour():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set hour(value:int):void {
			hasField$0 |= 0x1;
			hour$field = value;
		}

		public function get hour():int {
			return hour$field;
		}

		/**
		 *  @private
		 */
		public static const COST_MONEY:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticeTimeInfo.cost_money", "costMoney", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var cost_money$field:int;

		public function clearCostMoney():void {
			hasField$0 &= 0xfffffffd;
			cost_money$field = new int();
		}

		public function get hasCostMoney():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set costMoney(value:int):void {
			hasField$0 |= 0x2;
			cost_money$field = value;
		}

		public function get costMoney():int {
			return cost_money$field;
		}

		/**
		 *  @private
		 */
		public static const EXP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticeTimeInfo.exp", "exp", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var exp$field:int;

		public function clearExp():void {
			hasField$0 &= 0xfffffffb;
			exp$field = new int();
		}

		public function get hasExp():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set exp(value:int):void {
			hasField$0 |= 0x4;
			exp$field = value;
		}

		public function get exp():int {
			return exp$field;
		}

		/**
		 *  @private
		 */
		public static const SPARRING_EXP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticeTimeInfo.sparring_exp", "sparringExp", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var sparring_exp$field:int;

		public function clearSparringExp():void {
			hasField$0 &= 0xfffffff7;
			sparring_exp$field = new int();
		}

		public function get hasSparringExp():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set sparringExp(value:int):void {
			hasField$0 |= 0x8;
			sparring_exp$field = value;
		}

		public function get sparringExp():int {
			return sparring_exp$field;
		}

		/**
		 *  @private
		 */
		public static const PAY_EXP:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoPracticeTimeInfo.pay_exp", "payExp", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.practice.ProtoPracticePayInfo);

		[ArrayElementType("serverProto.practice.ProtoPracticePayInfo")]
		public var payExp:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasHour) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, hour$field);
			}
			if (hasCostMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, cost_money$field);
			}
			if (hasExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, exp$field);
			}
			if (hasSparringExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, sparring_exp$field);
			}
			for (var payExp$index:uint = 0; payExp$index < this.payExp.length; ++payExp$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.payExp[payExp$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var hour$count:uint = 0;
			var cost_money$count:uint = 0;
			var exp$count:uint = 0;
			var sparring_exp$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (hour$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticeTimeInfo.hour cannot be set twice.');
					}
					++hour$count;
					this.hour = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (cost_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticeTimeInfo.costMoney cannot be set twice.');
					}
					++cost_money$count;
					this.costMoney = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticeTimeInfo.exp cannot be set twice.');
					}
					++exp$count;
					this.exp = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (sparring_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticeTimeInfo.sparringExp cannot be set twice.');
					}
					++sparring_exp$count;
					this.sparringExp = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 5:
					this.payExp.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.practice.ProtoPracticePayInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
