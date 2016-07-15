package serverProto.guild {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.guild.ProtoGuildDungeonChapter;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGuildDungeonQueryRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildDungeonQueryRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		private var ret$field:serverProto.inc.ProtoRetInfo;

		public function clearRet():void {
			ret$field = null;
		}

		public function get hasRet():Boolean {
			return ret$field != null;
		}

		public function set ret(value:serverProto.inc.ProtoRetInfo):void {
			ret$field = value;
		}

		public function get ret():serverProto.inc.ProtoRetInfo {
			return ret$field;
		}

		/**
		 *  @private
		 */
		public static const CHAPTER:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildDungeonQueryRsp.chapter", "chapter", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGuildDungeonChapter);

		[ArrayElementType("serverProto.guild.ProtoGuildDungeonChapter")]
		public var chapter:Array = [];

		/**
		 *  @private
		 */
		public static const CUR_CHALLANGE_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonQueryRsp.cur_challange_count", "curChallangeCount", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var cur_challange_count$field:uint;

		private var hasField$0:uint = 0;

		public function clearCurChallangeCount():void {
			hasField$0 &= 0xfffffffe;
			cur_challange_count$field = new uint();
		}

		public function get hasCurChallangeCount():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set curChallangeCount(value:uint):void {
			hasField$0 |= 0x1;
			cur_challange_count$field = value;
		}

		public function get curChallangeCount():uint {
			return cur_challange_count$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_CHALLANGE_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonQueryRsp.max_challange_count", "maxChallangeCount", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_challange_count$field:uint;

		public function clearMaxChallangeCount():void {
			hasField$0 &= 0xfffffffd;
			max_challange_count$field = new uint();
		}

		public function get hasMaxChallangeCount():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set maxChallangeCount(value:uint):void {
			hasField$0 |= 0x2;
			max_challange_count$field = value;
		}

		public function get maxChallangeCount():uint {
			return max_challange_count$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			for (var chapter$index:uint = 0; chapter$index < this.chapter.length; ++chapter$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.chapter[chapter$index]);
			}
			if (hasCurChallangeCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, cur_challange_count$field);
			}
			if (hasMaxChallangeCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, max_challange_count$field);
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
			var cur_challange_count$count:uint = 0;
			var max_challange_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonQueryRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					this.chapter.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.guild.ProtoGuildDungeonChapter()));
					break;
				case 3:
					if (cur_challange_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonQueryRsp.curChallangeCount cannot be set twice.');
					}
					++cur_challange_count$count;
					this.curChallangeCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (max_challange_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonQueryRsp.maxChallangeCount cannot be set twice.');
					}
					++max_challange_count$count;
					this.maxChallangeCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
