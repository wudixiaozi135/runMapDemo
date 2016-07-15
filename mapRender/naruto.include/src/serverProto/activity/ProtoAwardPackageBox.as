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
	public  final class ProtoAwardPackageBox extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BOX_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoAwardPackageBox.box_id", "boxId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const AWARD_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoAwardPackageBox.award_status", "awardStatus", (2 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoAwardPackageBox.award", "award", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var award:Array = [];

		/**
		 *  @private
		 */
		public static const VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoAwardPackageBox.value", "value", (4 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const BOX_DESC:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.activity.ProtoAwardPackageBox.box_desc", "boxDesc", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var box_desc$field:String;

		public function clearBoxDesc():void {
			box_desc$field = null;
		}

		public function get hasBoxDesc():Boolean {
			return box_desc$field != null;
		}

		public function set boxDesc(value:String):void {
			box_desc$field = value;
		}

		public function get boxDesc():String {
			return box_desc$field;
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
			for (var award$index:uint = 0; award$index < this.award.length; ++award$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.award[award$index]);
			}
			if (hasValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, value$field);
			}
			if (hasBoxDesc) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, box_desc$field);
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
			var box_desc$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (box_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAwardPackageBox.boxId cannot be set twice.');
					}
					++box_id$count;
					this.boxId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (award_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAwardPackageBox.awardStatus cannot be set twice.');
					}
					++award_status$count;
					this.awardStatus = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					this.award.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 4:
					if (value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAwardPackageBox.value cannot be set twice.');
					}
					++value$count;
					this.value = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (box_desc$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAwardPackageBox.boxDesc cannot be set twice.');
					}
					++box_desc$count;
					this.boxDesc = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
