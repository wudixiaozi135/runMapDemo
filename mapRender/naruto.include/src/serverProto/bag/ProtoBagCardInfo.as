package serverProto.bag {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.bag.ProtoBagCardRecruitStatus;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBagCardInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoBagCardInfo.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var id:uint;

		/**
		 *  @private
		 */
		public static const NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoBagCardInfo.num", "num", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var num:uint;

		/**
		 *  @private
		 */
		public static const COMBAT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoBagCardInfo.combat", "combat", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var combat$field:uint;

		private var hasField$0:uint = 0;

		public function clearCombat():void {
			hasField$0 &= 0xfffffffe;
			combat$field = new uint();
		}

		public function get hasCombat():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set combat(value:uint):void {
			hasField$0 |= 0x1;
			combat$field = value;
		}

		public function get combat():uint {
			return combat$field;
		}

		/**
		 *  @private
		 */
		public static const INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoBagCardInfo.index", "index", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var index:uint;

		/**
		 *  @private
		 */
		public static const RECRUIT_STATUS:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.bag.ProtoBagCardInfo.recruit_status", "recruitStatus", (5 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.bag.ProtoBagCardRecruitStatus);

		private var recruit_status$field:int;

		public function clearRecruitStatus():void {
			hasField$0 &= 0xfffffffd;
			recruit_status$field = new int();
		}

		public function get hasRecruitStatus():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set recruitStatus(value:int):void {
			hasField$0 |= 0x2;
			recruit_status$field = value;
		}

		public function get recruitStatus():int {
			return recruit_status$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.id);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.num);
			if (hasCombat) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, combat$field);
			}
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.index);
			if (hasRecruitStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, recruit_status$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var id$count:uint = 0;
			var num$count:uint = 0;
			var combat$count:uint = 0;
			var index$count:uint = 0;
			var recruit_status$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBagCardInfo.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBagCardInfo.num cannot be set twice.');
					}
					++num$count;
					this.num = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (combat$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBagCardInfo.combat cannot be set twice.');
					}
					++combat$count;
					this.combat = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBagCardInfo.index cannot be set twice.');
					}
					++index$count;
					this.index = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (recruit_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBagCardInfo.recruitStatus cannot be set twice.');
					}
					++recruit_status$count;
					this.recruitStatus = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
