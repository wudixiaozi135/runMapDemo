package serverProto.baseInfo {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.user.ProtoNinjaPropertyInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaDetailInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BIRTH_PLACE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaDetailInfo.birth_place", "birthPlace", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var birthPlace:uint;

		/**
		 *  @private
		 */
		public static const BIRTHDAY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaDetailInfo.birthday", "birthday", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var birthday:uint;

		/**
		 *  @private
		 */
		public static const LEADER_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaDetailInfo.leader_power", "leaderPower", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var leaderPower:uint;

		/**
		 *  @private
		 */
		public static const PROPERTY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaDetailInfo.property", "property", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.user.ProtoNinjaPropertyInfo);

		public var property:serverProto.user.ProtoNinjaPropertyInfo;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.birthPlace);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.birthday);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.leaderPower);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.property);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var birth_place$count:uint = 0;
			var birthday$count:uint = 0;
			var leader_power$count:uint = 0;
			var property$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 2:
					if (birth_place$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaDetailInfo.birthPlace cannot be set twice.');
					}
					++birth_place$count;
					this.birthPlace = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (birthday$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaDetailInfo.birthday cannot be set twice.');
					}
					++birthday$count;
					this.birthday = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (leader_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaDetailInfo.leaderPower cannot be set twice.');
					}
					++leader_power$count;
					this.leaderPower = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (property$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaDetailInfo.property cannot be set twice.');
					}
					++property$count;
					this.property = new serverProto.user.ProtoNinjaPropertyInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.property);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
