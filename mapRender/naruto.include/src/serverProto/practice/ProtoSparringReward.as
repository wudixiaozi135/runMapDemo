package serverProto.practice {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoPlayerKey;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoSparringReward extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const FRIEND:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoSparringReward.friend", "friend", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var friend$field:serverProto.inc.ProtoPlayerKey;

		public function clearFriend():void {
			friend$field = null;
		}

		public function get hasFriend():Boolean {
			return friend$field != null;
		}

		public function set friend(value:serverProto.inc.ProtoPlayerKey):void {
			friend$field = value;
		}

		public function get friend():serverProto.inc.ProtoPlayerKey {
			return friend$field;
		}

		/**
		 *  @private
		 */
		public static const MONEY:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoSparringReward.money", "money", (2 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const HAS_GET:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoSparringReward.has_get", "hasGet", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var has_get$field:int;

		public function clearHasGet():void {
			hasField$0 &= 0xfffffffd;
			has_get$field = new int();
		}

		public function get hasHasGet():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set hasGet(value:int):void {
			hasField$0 |= 0x2;
			has_get$field = value;
		}

		public function get hasGet():int {
			return has_get$field;
		}

		/**
		 *  @private
		 */
		public static const TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.practice.ProtoSparringReward.time", "time", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var time$field:uint;

		public function clearTime():void {
			hasField$0 &= 0xfffffffb;
			time$field = new uint();
		}

		public function get hasTime():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set time(value:uint):void {
			hasField$0 |= 0x4;
			time$field = value;
		}

		public function get time():uint {
			return time$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasFriend) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, friend$field);
			}
			if (hasMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, money$field);
			}
			if (hasHasGet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, has_get$field);
			}
			if (hasTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, time$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var friend$count:uint = 0;
			var money$count:uint = 0;
			var has_get$count:uint = 0;
			var time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (friend$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSparringReward.friend cannot be set twice.');
					}
					++friend$count;
					this.friend = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.friend);
					break;
				case 2:
					if (money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSparringReward.money cannot be set twice.');
					}
					++money$count;
					this.money = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (has_get$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSparringReward.hasGet cannot be set twice.');
					}
					++has_get$count;
					this.hasGet = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSparringReward.time cannot be set twice.');
					}
					++time$count;
					this.time = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
