package serverProto.formation {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.formationBase.FormationCommands;
	import serverProto.formation.FormationType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoOperateFormationNinjaRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CMD_ID:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.formation.ProtoOperateFormationNinjaRequest.cmd_id", "cmdId", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.formationBase.FormationCommands);

		public var cmdId:int;

		/**
		 *  @private
		 */
		public static const NINJA_SEQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formation.ProtoOperateFormationNinjaRequest.ninja_seq", "ninjaSeq", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaSeq:uint;

		/**
		 *  @private
		 */
		public static const FORMATION_ID:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.formation.ProtoOperateFormationNinjaRequest.formation_id", "formationId", (3 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.formation.FormationType);

		public var formationId:int;

		/**
		 *  @private
		 */
		public static const LOCATION:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formation.ProtoOperateFormationNinjaRequest.location", "location", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var location$field:int;

		private var hasField$0:uint = 0;

		public function clearLocation():void {
			hasField$0 &= 0xfffffffe;
			location$field = new int();
		}

		public function get hasLocation():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set location(value:int):void {
			hasField$0 |= 0x1;
			location$field = value;
		}

		public function get location():int {
			return location$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.cmdId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ninjaSeq);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.formationId);
			if (hasLocation) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, location$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var cmd_id$count:uint = 0;
			var ninja_seq$count:uint = 0;
			var formation_id$count:uint = 0;
			var location$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (cmd_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateFormationNinjaRequest.cmdId cannot be set twice.');
					}
					++cmd_id$count;
					this.cmdId = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (ninja_seq$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateFormationNinjaRequest.ninjaSeq cannot be set twice.');
					}
					++ninja_seq$count;
					this.ninjaSeq = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (formation_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateFormationNinjaRequest.formationId cannot be set twice.');
					}
					++formation_id$count;
					this.formationId = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 4:
					if (location$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateFormationNinjaRequest.location cannot be set twice.');
					}
					++location$count;
					this.location = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
