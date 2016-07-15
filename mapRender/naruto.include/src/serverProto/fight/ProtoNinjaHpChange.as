package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.ProtoHpChangeDescribe;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaHpChange extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_POS:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoNinjaHpChange.ninja_pos", "ninjaPos", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaPos:int;

		/**
		 *  @private
		 */
		public static const HP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoNinjaHpChange.hp", "hp", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var hp:int;

		/**
		 *  @private
		 */
		public static const HP_CHANGE_DESCRIBE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoNinjaHpChange.hp_change_describe", "hpChangeDescribe", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoHpChangeDescribe);

		[ArrayElementType("serverProto.fight.ProtoHpChangeDescribe")]
		public var hpChangeDescribe:Array = [];

		/**
		 *  @private
		 */
		public static const MONEY:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoNinjaHpChange.money", "money", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var money$field:int;

		private var hasField$0:uint = 0;

		public function clearMoney():void {
			hasField$0 &= 0xfffffffe;
			money$field = new int();
		}

		public function get hasMoney():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set money(value:int):void {
			hasField$0 |= 0x1;
			money$field = value;
		}

		public function get money():int {
			return money$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.ninjaPos);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.hp);
			for (var hpChangeDescribe$index:uint = 0; hpChangeDescribe$index < this.hpChangeDescribe.length; ++hpChangeDescribe$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.hpChangeDescribe[hpChangeDescribe$index]);
			}
			if (hasMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, money$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ninja_pos$count:uint = 0;
			var hp$count:uint = 0;
			var money$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ninja_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaHpChange.ninjaPos cannot be set twice.');
					}
					++ninja_pos$count;
					this.ninjaPos = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaHpChange.hp cannot be set twice.');
					}
					++hp$count;
					this.hp = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					this.hpChangeDescribe.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoHpChangeDescribe()));
					break;
				case 4:
					if (money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaHpChange.money cannot be set twice.');
					}
					++money$count;
					this.money = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
