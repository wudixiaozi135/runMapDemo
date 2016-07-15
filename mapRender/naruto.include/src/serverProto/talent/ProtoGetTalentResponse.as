package serverProto.talent {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.talent.ProtoGetTalentPage;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetTalentResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.talent.ProtoGetTalentResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const TALENT_PAGES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.talent.ProtoGetTalentResponse.talent_pages", "talentPages", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.talent.ProtoGetTalentPage);

		[ArrayElementType("serverProto.talent.ProtoGetTalentPage")]
		public var talentPages:Array = [];

		/**
		 *  @private
		 */
		public static const CURRENT_TALENT_PAGE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.talent.ProtoGetTalentResponse.current_talent_page", "currentTalentPage", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_talent_page$field:uint;

		private var hasField$0:uint = 0;

		public function clearCurrentTalentPage():void {
			hasField$0 &= 0xfffffffe;
			current_talent_page$field = new uint();
		}

		public function get hasCurrentTalentPage():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set currentTalentPage(value:uint):void {
			hasField$0 |= 0x1;
			current_talent_page$field = value;
		}

		public function get currentTalentPage():uint {
			return current_talent_page$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			for (var talentPages$index:uint = 0; talentPages$index < this.talentPages.length; ++talentPages$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.talentPages[talentPages$index]);
			}
			if (hasCurrentTalentPage) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, current_talent_page$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret$count:uint = 0;
			var current_talent_page$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetTalentResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					this.talentPages.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.talent.ProtoGetTalentPage()));
					break;
				case 3:
					if (current_talent_page$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetTalentResponse.currentTalentPage cannot be set twice.');
					}
					++current_talent_page$count;
					this.currentTalentPage = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
