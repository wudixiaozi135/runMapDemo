package serverProto.user {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoNinjaKey;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoEquipEvolveImportantOperate extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const EQUIP_SEQ:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.user.ProtoEquipEvolveImportantOperate.equip_seq", "equipSeq", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var equipSeq:UInt64;

		/**
		 *  @private
		 */
		public static const EQUIP_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoEquipEvolveImportantOperate.equip_id", "equipId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var equipId:int;

		/**
		 *  @private
		 */
		public static const NINJA_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoEquipEvolveImportantOperate.ninja_key", "ninjaKey", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoNinjaKey);

		private var ninja_key$field:serverProto.inc.ProtoNinjaKey;

		public function clearNinjaKey():void {
			ninja_key$field = null;
		}

		public function get hasNinjaKey():Boolean {
			return ninja_key$field != null;
		}

		public function set ninjaKey(value:serverProto.inc.ProtoNinjaKey):void {
			ninja_key$field = value;
		}

		public function get ninjaKey():serverProto.inc.ProtoNinjaKey {
			return ninja_key$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, this.equipSeq);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.equipId);
			if (hasNinjaKey) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_key$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var equip_seq$count:uint = 0;
			var equip_id$count:uint = 0;
			var ninja_key$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (equip_seq$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEquipEvolveImportantOperate.equipSeq cannot be set twice.');
					}
					++equip_seq$count;
					this.equipSeq = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 2:
					if (equip_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEquipEvolveImportantOperate.equipId cannot be set twice.');
					}
					++equip_id$count;
					this.equipId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (ninja_key$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEquipEvolveImportantOperate.ninjaKey cannot be set twice.');
					}
					++ninja_key$count;
					this.ninjaKey = new serverProto.inc.ProtoNinjaKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaKey);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
