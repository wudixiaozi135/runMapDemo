package serverProto.basePvp {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBaseAllowAttackResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBaseAllowAttackResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const BUILDING:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAllowAttackResponse.building", "building", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var building:int;

		/**
		 *  @private
		 */
		public static const CAN_ATTACK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAllowAttackResponse.can_attack", "canAttack", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var canAttack:int;

		/**
		 *  @private
		 */
		public static const LAST_BUILDING:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAllowAttackResponse.last_building", "lastBuilding", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var last_building$field:int;

		private var hasField$0:uint = 0;

		public function clearLastBuilding():void {
			hasField$0 &= 0xfffffffe;
			last_building$field = new int();
		}

		public function get hasLastBuilding():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set lastBuilding(value:int):void {
			hasField$0 |= 0x1;
			last_building$field = value;
		}

		public function get lastBuilding():int {
			return last_building$field;
		}

		/**
		 *  @private
		 */
		public static const ROBBED_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAllowAttackResponse.robbed_money", "robbedMoney", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var robbed_money$field:int;

		public function clearRobbedMoney():void {
			hasField$0 &= 0xfffffffd;
			robbed_money$field = new int();
		}

		public function get hasRobbedMoney():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set robbedMoney(value:int):void {
			hasField$0 |= 0x2;
			robbed_money$field = value;
		}

		public function get robbedMoney():int {
			return robbed_money$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.building);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.canAttack);
			if (hasLastBuilding) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, last_building$field);
			}
			if (hasRobbedMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, robbed_money$field);
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
			var building$count:uint = 0;
			var can_attack$count:uint = 0;
			var last_building$count:uint = 0;
			var robbed_money$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAllowAttackResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (building$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAllowAttackResponse.building cannot be set twice.');
					}
					++building$count;
					this.building = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (can_attack$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAllowAttackResponse.canAttack cannot be set twice.');
					}
					++can_attack$count;
					this.canAttack = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (last_building$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAllowAttackResponse.lastBuilding cannot be set twice.');
					}
					++last_building$count;
					this.lastBuilding = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (robbed_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseAllowAttackResponse.robbedMoney cannot be set twice.');
					}
					++robbed_money$count;
					this.robbedMoney = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
