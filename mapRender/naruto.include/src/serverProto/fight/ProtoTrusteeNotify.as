package serverProto.fight {
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
	public  final class ProtoTrusteeNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TEAM_POS:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoTrusteeNotify.team_pos", "teamPos", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var teamPos:int;

		/**
		 *  @private
		 */
		public static const TRUSTEE_STATE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoTrusteeNotify.trustee_state", "trusteeState", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var trustee_state$field:int;

		private var hasField$0:uint = 0;

		public function clearTrusteeState():void {
			hasField$0 &= 0xfffffffe;
			trustee_state$field = new int();
		}

		public function get hasTrusteeState():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set trusteeState(value:int):void {
			hasField$0 |= 0x1;
			trustee_state$field = value;
		}

		public function get trusteeState():int {
			return trustee_state$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.teamPos);
			if (hasTrusteeState) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, trustee_state$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var team_pos$count:uint = 0;
			var trustee_state$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (team_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTrusteeNotify.teamPos cannot be set twice.');
					}
					++team_pos$count;
					this.teamPos = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (trustee_state$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTrusteeNotify.trusteeState cannot be set twice.');
					}
					++trustee_state$count;
					this.trusteeState = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
