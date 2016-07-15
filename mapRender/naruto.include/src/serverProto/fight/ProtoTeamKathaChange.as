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
	public  final class ProtoTeamKathaChange extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TEAM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoTeamKathaChange.team_id", "teamId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var teamId:uint;

		/**
		 *  @private
		 */
		public static const KATHA_CHANGE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoTeamKathaChange.katha_change", "kathaChange", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var kathaChange:int;

		/**
		 *  @private
		 */
		public static const NINJA_POS:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoTeamKathaChange.ninja_pos", "ninjaPos", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_pos$field:int;

		private var hasField$0:uint = 0;

		public function clearNinjaPos():void {
			hasField$0 &= 0xfffffffe;
			ninja_pos$field = new int();
		}

		public function get hasNinjaPos():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set ninjaPos(value:int):void {
			hasField$0 |= 0x1;
			ninja_pos$field = value;
		}

		public function get ninjaPos():int {
			return ninja_pos$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.teamId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, this.kathaChange);
			if (hasNinjaPos) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, ninja_pos$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var team_id$count:uint = 0;
			var katha_change$count:uint = 0;
			var ninja_pos$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (team_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamKathaChange.teamId cannot be set twice.');
					}
					++team_id$count;
					this.teamId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (katha_change$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamKathaChange.kathaChange cannot be set twice.');
					}
					++katha_change$count;
					this.kathaChange = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (ninja_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamKathaChange.ninjaPos cannot be set twice.');
					}
					++ninja_pos$count;
					this.ninjaPos = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
