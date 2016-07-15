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
	public  final class ProtoGuildAuditReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const AGREE_OR_REFUSE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildAuditReq.agree_or_refuse", "agreeOrRefuse", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var agree_or_refuse$field:uint;

		private var hasField$0:uint = 0;

		public function clearAgreeOrRefuse():void {
			hasField$0 &= 0xfffffffe;
			agree_or_refuse$field = new uint();
		}

		public function get hasAgreeOrRefuse():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set agreeOrRefuse(value:uint):void {
			hasField$0 |= 0x1;
			agree_or_refuse$field = value;
		}

		public function get agreeOrRefuse():uint {
			return agree_or_refuse$field;
		}

		/**
		 *  @private
		 */
		public static const APPLY_PLAYER_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildAuditReq.apply_player_list", "applyPlayerList", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		[ArrayElementType("serverProto.inc.ProtoPlayerKey")]
		public var applyPlayerList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasAgreeOrRefuse) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, agree_or_refuse$field);
			}
			for (var applyPlayerList$index:uint = 0; applyPlayerList$index < this.applyPlayerList.length; ++applyPlayerList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.applyPlayerList[applyPlayerList$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var agree_or_refuse$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (agree_or_refuse$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildAuditReq.agreeOrRefuse cannot be set twice.');
					}
					++agree_or_refuse$count;
					this.agreeOrRefuse = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					this.applyPlayerList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoPlayerKey()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
