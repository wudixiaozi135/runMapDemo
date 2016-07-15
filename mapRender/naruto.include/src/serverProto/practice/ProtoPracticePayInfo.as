package serverProto.practice {
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
	public  final class ProtoPracticePayInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RATE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePayInfo.rate", "rate", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rate$field:int;

		private var hasField$0:uint = 0;

		public function clearRate():void {
			hasField$0 &= 0xfffffffe;
			rate$field = new int();
		}

		public function get hasRate():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set rate(value:int):void {
			hasField$0 |= 0x1;
			rate$field = value;
		}

		public function get rate():int {
			return rate$field;
		}

		/**
		 *  @private
		 */
		public static const COST_GOLD:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePayInfo.cost_gold", "costGold", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var cost_gold$field:int;

		public function clearCostGold():void {
			hasField$0 &= 0xfffffffd;
			cost_gold$field = new int();
		}

		public function get hasCostGold():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set costGold(value:int):void {
			hasField$0 |= 0x2;
			cost_gold$field = value;
		}

		public function get costGold():int {
			return cost_gold$field;
		}

		/**
		 *  @private
		 */
		public static const EXP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePayInfo.exp", "exp", (3 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const EXPECT_NINJA_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePayInfo.expect_ninja_level", "expectNinjaLevel", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var expect_ninja_level$field:int;

		public function clearExpectNinjaLevel():void {
			hasField$0 &= 0xfffffff7;
			expect_ninja_level$field = new int();
		}

		public function get hasExpectNinjaLevel():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set expectNinjaLevel(value:int):void {
			hasField$0 |= 0x8;
			expect_ninja_level$field = value;
		}

		public function get expectNinjaLevel():int {
			return expect_ninja_level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRate) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, rate$field);
			}
			if (hasCostGold) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, cost_gold$field);
			}
			if (hasExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, exp$field);
			}
			if (hasExpectNinjaLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, expect_ninja_level$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var rate$count:uint = 0;
			var cost_gold$count:uint = 0;
			var exp$count:uint = 0;
			var expect_ninja_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (rate$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticePayInfo.rate cannot be set twice.');
					}
					++rate$count;
					this.rate = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (cost_gold$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticePayInfo.costGold cannot be set twice.');
					}
					++cost_gold$count;
					this.costGold = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticePayInfo.exp cannot be set twice.');
					}
					++exp$count;
					this.exp = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (expect_ninja_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPracticePayInfo.expectNinjaLevel cannot be set twice.');
					}
					++expect_ninja_level$count;
					this.expectNinjaLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
