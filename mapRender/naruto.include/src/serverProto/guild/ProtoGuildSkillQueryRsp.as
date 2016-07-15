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
	import serverProto.guild.GuildSkillParam;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGuildSkillQueryRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildSkillQueryRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const CURRENT_CONTRI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildSkillQueryRsp.current_contri", "currentContri", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_contri$field:uint;

		private var hasField$0:uint = 0;

		public function clearCurrentContri():void {
			hasField$0 &= 0xfffffffe;
			current_contri$field = new uint();
		}

		public function get hasCurrentContri():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set currentContri(value:uint):void {
			hasField$0 |= 0x1;
			current_contri$field = value;
		}

		public function get currentContri():uint {
			return current_contri$field;
		}

		/**
		 *  @private
		 */
		public static const SKILL_LVL_LIMIT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildSkillQueryRsp.skill_lvl_limit", "skillLvlLimit", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var skill_lvl_limit$field:uint;

		public function clearSkillLvlLimit():void {
			hasField$0 &= 0xfffffffd;
			skill_lvl_limit$field = new uint();
		}

		public function get hasSkillLvlLimit():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set skillLvlLimit(value:uint):void {
			hasField$0 |= 0x2;
			skill_lvl_limit$field = value;
		}

		public function get skillLvlLimit():uint {
			return skill_lvl_limit$field;
		}

		/**
		 *  @private
		 */
		public static const LAST_LEARN_IDX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildSkillQueryRsp.last_learn_idx", "lastLearnIdx", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var last_learn_idx$field:int;

		public function clearLastLearnIdx():void {
			hasField$0 &= 0xfffffffb;
			last_learn_idx$field = new int();
		}

		public function get hasLastLearnIdx():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set lastLearnIdx(value:int):void {
			hasField$0 |= 0x4;
			last_learn_idx$field = value;
		}

		public function get lastLearnIdx():int {
			return last_learn_idx$field;
		}

		/**
		 *  @private
		 */
		public static const REMAIN_CD:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildSkillQueryRsp.remain_cd", "remainCd", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remain_cd$field:uint;

		public function clearRemainCd():void {
			hasField$0 &= 0xfffffff7;
			remain_cd$field = new uint();
		}

		public function get hasRemainCd():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set remainCd(value:uint):void {
			hasField$0 |= 0x8;
			remain_cd$field = value;
		}

		public function get remainCd():uint {
			return remain_cd$field;
		}

		/**
		 *  @private
		 */
		public static const SKILL_PARAM:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildSkillQueryRsp.skill_param", "skillParam", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.GuildSkillParam);

		[ArrayElementType("serverProto.guild.GuildSkillParam")]
		public var skillParam:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasCurrentContri) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, current_contri$field);
			}
			if (hasSkillLvlLimit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, skill_lvl_limit$field);
			}
			if (hasLastLearnIdx) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, last_learn_idx$field);
			}
			if (hasRemainCd) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, remain_cd$field);
			}
			for (var skillParam$index:uint = 0; skillParam$index < this.skillParam.length; ++skillParam$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.skillParam[skillParam$index]);
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
			var current_contri$count:uint = 0;
			var skill_lvl_limit$count:uint = 0;
			var last_learn_idx$count:uint = 0;
			var remain_cd$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildSkillQueryRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (current_contri$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildSkillQueryRsp.currentContri cannot be set twice.');
					}
					++current_contri$count;
					this.currentContri = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (skill_lvl_limit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildSkillQueryRsp.skillLvlLimit cannot be set twice.');
					}
					++skill_lvl_limit$count;
					this.skillLvlLimit = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (last_learn_idx$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildSkillQueryRsp.lastLearnIdx cannot be set twice.');
					}
					++last_learn_idx$count;
					this.lastLearnIdx = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 5:
					if (remain_cd$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildSkillQueryRsp.remainCd cannot be set twice.');
					}
					++remain_cd$count;
					this.remainCd = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					this.skillParam.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.guild.GuildSkillParam()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
