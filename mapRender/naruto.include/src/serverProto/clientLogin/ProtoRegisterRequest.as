package serverProto.clientLogin {
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
	public  final class ProtoRegisterRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ROLE_CATEGORY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.clientLogin.ProtoRegisterRequest.role_category", "roleCategory", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var roleCategory:int;

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.clientLogin.ProtoRegisterRequest.name", "name", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var name:String;

		/**
		 *  @private
		 */
		public static const PORTRAIT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.clientLogin.ProtoRegisterRequest.portrait", "portrait", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var portrait:int;

		/**
		 *  @private
		 */
		public static const VIA:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.clientLogin.ProtoRegisterRequest.via", "via", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var via:String;

		/**
		 *  @private
		 */
		public static const INVITER_UIN_LIST:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.clientLogin.ProtoRegisterRequest.inviter_uin_list", "inviterUinList", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var inviterUinList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.roleCategory);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.name);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.portrait);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.via);
			for (var inviterUinList$index:uint = 0; inviterUinList$index < this.inviterUinList.length; ++inviterUinList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.inviterUinList[inviterUinList$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var role_category$count:uint = 0;
			var name$count:uint = 0;
			var portrait$count:uint = 0;
			var via$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (role_category$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRegisterRequest.roleCategory cannot be set twice.');
					}
					++role_category$count;
					this.roleCategory = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRegisterRequest.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (portrait$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRegisterRequest.portrait cannot be set twice.');
					}
					++portrait$count;
					this.portrait = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (via$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRegisterRequest.via cannot be set twice.');
					}
					++via$count;
					this.via = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 5:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.inviterUinList);
						break;
					}
					this.inviterUinList.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
