package serverProto.guild {
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
	public  final class ProtoGvGPackageFenpeiDoReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const FENPEI_PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGPackageFenpeiDoReq.fenpei_player_id", "fenpeiPlayerId", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var fenpei_player_id$field:serverProto.inc.ProtoPlayerKey;

		public function clearFenpeiPlayerId():void {
			fenpei_player_id$field = null;
		}

		public function get hasFenpeiPlayerId():Boolean {
			return fenpei_player_id$field != null;
		}

		public function set fenpeiPlayerId(value:serverProto.inc.ProtoPlayerKey):void {
			fenpei_player_id$field = value;
		}

		public function get fenpeiPlayerId():serverProto.inc.ProtoPlayerKey {
			return fenpei_player_id$field;
		}

		/**
		 *  @private
		 */
		public static const FENPEI_PACKAGE_SEQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGPackageFenpeiDoReq.fenpei_package_seq", "fenpeiPackageSeq", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var fenpei_package_seq$field:uint;

		private var hasField$0:uint = 0;

		public function clearFenpeiPackageSeq():void {
			hasField$0 &= 0xfffffffe;
			fenpei_package_seq$field = new uint();
		}

		public function get hasFenpeiPackageSeq():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set fenpeiPackageSeq(value:uint):void {
			hasField$0 |= 0x1;
			fenpei_package_seq$field = value;
		}

		public function get fenpeiPackageSeq():uint {
			return fenpei_package_seq$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasFenpeiPlayerId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, fenpei_player_id$field);
			}
			if (hasFenpeiPackageSeq) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, fenpei_package_seq$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var fenpei_player_id$count:uint = 0;
			var fenpei_package_seq$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (fenpei_player_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGPackageFenpeiDoReq.fenpeiPlayerId cannot be set twice.');
					}
					++fenpei_player_id$count;
					this.fenpeiPlayerId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.fenpeiPlayerId);
					break;
				case 2:
					if (fenpei_package_seq$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGPackageFenpeiDoReq.fenpeiPackageSeq cannot be set twice.');
					}
					++fenpei_package_seq$count;
					this.fenpeiPackageSeq = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
