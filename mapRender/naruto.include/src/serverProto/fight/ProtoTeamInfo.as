package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.ProtoNinja;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTeamInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TEAM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoTeamInfo.team_id", "teamId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var teamId:uint;

		/**
		 *  @private
		 */
		public static const KATHA_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoTeamInfo.katha_value", "kathaValue", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var katha_value$field:uint;

		private var hasField$0:uint = 0;

		public function clearKathaValue():void {
			hasField$0 &= 0xfffffffe;
			katha_value$field = new uint();
		}

		public function get hasKathaValue():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set kathaValue(value:uint):void {
			hasField$0 |= 0x1;
			katha_value$field = value;
		}

		public function get kathaValue():uint {
			return katha_value$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoTeamInfo.ninja", "ninja", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoNinja);

		[ArrayElementType("serverProto.fight.ProtoNinja")]
		public var ninja:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.teamId);
			if (hasKathaValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, katha_value$field);
			}
			for (var ninja$index:uint = 0; ninja$index < this.ninja.length; ++ninja$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninja[ninja$index]);
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
			var katha_value$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (team_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamInfo.teamId cannot be set twice.');
					}
					++team_id$count;
					this.teamId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (katha_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamInfo.kathaValue cannot be set twice.');
					}
					++katha_value$count;
					this.kathaValue = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					this.ninja.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoNinja()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
