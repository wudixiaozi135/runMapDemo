package serverProto.activity {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoMysticChestPackageBox extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BOX_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMysticChestPackageBox.box_id", "boxId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var box_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearBoxId():void {
			hasField$0 &= 0xfffffffe;
			box_id$field = new uint();
		}

		public function get hasBoxId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set boxId(value:uint):void {
			hasField$0 |= 0x1;
			box_id$field = value;
		}

		public function get boxId():uint {
			return box_id$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMysticChestPackageBox.award_status", "awardStatus", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var award_status$field:uint;

		public function clearAwardStatus():void {
			hasField$0 &= 0xfffffffd;
			award_status$field = new uint();
		}

		public function get hasAwardStatus():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set awardStatus(value:uint):void {
			hasField$0 |= 0x2;
			award_status$field = value;
		}

		public function get awardStatus():uint {
			return award_status$field;
		}

		/**
		 *  @private
		 */
		public static const MUST_AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMysticChestPackageBox.must_award", "mustAward", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var mustAward:Array = [];

		/**
		 *  @private
		 */
		public static const PROB_AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMysticChestPackageBox.prob_award", "probAward", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var probAward:Array = [];

		/**
		 *  @private
		 */
		public static const VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMysticChestPackageBox.value", "value", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var value$field:uint;

		public function clearValue():void {
			hasField$0 &= 0xfffffffb;
			value$field = new uint();
		}

		public function get hasValue():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set value(value:uint):void {
			hasField$0 |= 0x4;
			value$field = value;
		}

		public function get value():uint {
			return value$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasBoxId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, box_id$field);
			}
			if (hasAwardStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, award_status$field);
			}
			for (var mustAward$index:uint = 0; mustAward$index < this.mustAward.length; ++mustAward$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.mustAward[mustAward$index]);
			}
			for (var probAward$index:uint = 0; probAward$index < this.probAward.length; ++probAward$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.probAward[probAward$index]);
			}
			if (hasValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, value$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var box_id$count:uint = 0;
			var award_status$count:uint = 0;
			var value$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (box_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMysticChestPackageBox.boxId cannot be set twice.');
					}
					++box_id$count;
					this.boxId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (award_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMysticChestPackageBox.awardStatus cannot be set twice.');
					}
					++award_status$count;
					this.awardStatus = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					this.mustAward.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 4:
					this.probAward.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 5:
					if (value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMysticChestPackageBox.value cannot be set twice.');
					}
					++value$count;
					this.value = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
