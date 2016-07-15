package serverProto.expedition {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.expedition.ProtoAwardExpeditionInfo;
	import serverProto.expedition.ProtoAwardBoxInfo;
	import serverProto.expedition.ProtoExpeditionInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetExpeditionInfoResp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoGetExpeditionInfoResp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const EXPEDITION_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoGetExpeditionInfoResp.expedition_info", "expeditionInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.expedition.ProtoExpeditionInfo);

		private var expedition_info$field:serverProto.expedition.ProtoExpeditionInfo;

		public function clearExpeditionInfo():void {
			expedition_info$field = null;
		}

		public function get hasExpeditionInfo():Boolean {
			return expedition_info$field != null;
		}

		public function set expeditionInfo(value:serverProto.expedition.ProtoExpeditionInfo):void {
			expedition_info$field = value;
		}

		public function get expeditionInfo():serverProto.expedition.ProtoExpeditionInfo {
			return expedition_info$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD_EXPEDITION_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoGetExpeditionInfoResp.award_expedition_info", "awardExpeditionInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.expedition.ProtoAwardExpeditionInfo);

		private var award_expedition_info$field:serverProto.expedition.ProtoAwardExpeditionInfo;

		public function clearAwardExpeditionInfo():void {
			award_expedition_info$field = null;
		}

		public function get hasAwardExpeditionInfo():Boolean {
			return award_expedition_info$field != null;
		}

		public function set awardExpeditionInfo(value:serverProto.expedition.ProtoAwardExpeditionInfo):void {
			award_expedition_info$field = value;
		}

		public function get awardExpeditionInfo():serverProto.expedition.ProtoAwardExpeditionInfo {
			return award_expedition_info$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD_BOX_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoGetExpeditionInfoResp.award_box_info", "awardBoxInfo", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.expedition.ProtoAwardBoxInfo);

		private var award_box_info$field:serverProto.expedition.ProtoAwardBoxInfo;

		public function clearAwardBoxInfo():void {
			award_box_info$field = null;
		}

		public function get hasAwardBoxInfo():Boolean {
			return award_box_info$field != null;
		}

		public function set awardBoxInfo(value:serverProto.expedition.ProtoAwardBoxInfo):void {
			award_box_info$field = value;
		}

		public function get awardBoxInfo():serverProto.expedition.ProtoAwardBoxInfo {
			return award_box_info$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD_OPEN_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoGetExpeditionInfoResp.award_open_level", "awardOpenLevel", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var award_open_level$field:int;

		private var hasField$0:uint = 0;

		public function clearAwardOpenLevel():void {
			hasField$0 &= 0xfffffffe;
			award_open_level$field = new int();
		}

		public function get hasAwardOpenLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set awardOpenLevel(value:int):void {
			hasField$0 |= 0x1;
			award_open_level$field = value;
		}

		public function get awardOpenLevel():int {
			return award_open_level$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD_OPEN_STAGE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoGetExpeditionInfoResp.award_open_stage", "awardOpenStage", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var award_open_stage$field:int;

		public function clearAwardOpenStage():void {
			hasField$0 &= 0xfffffffd;
			award_open_stage$field = new int();
		}

		public function get hasAwardOpenStage():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set awardOpenStage(value:int):void {
			hasField$0 |= 0x2;
			award_open_stage$field = value;
		}

		public function get awardOpenStage():int {
			return award_open_stage$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasExpeditionInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, expedition_info$field);
			}
			if (hasAwardExpeditionInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, award_expedition_info$field);
			}
			if (hasAwardBoxInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, award_box_info$field);
			}
			if (hasAwardOpenLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, award_open_level$field);
			}
			if (hasAwardOpenStage) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, award_open_stage$field);
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
			var expedition_info$count:uint = 0;
			var award_expedition_info$count:uint = 0;
			var award_box_info$count:uint = 0;
			var award_open_level$count:uint = 0;
			var award_open_stage$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetExpeditionInfoResp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (expedition_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetExpeditionInfoResp.expeditionInfo cannot be set twice.');
					}
					++expedition_info$count;
					this.expeditionInfo = new serverProto.expedition.ProtoExpeditionInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.expeditionInfo);
					break;
				case 3:
					if (award_expedition_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetExpeditionInfoResp.awardExpeditionInfo cannot be set twice.');
					}
					++award_expedition_info$count;
					this.awardExpeditionInfo = new serverProto.expedition.ProtoAwardExpeditionInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.awardExpeditionInfo);
					break;
				case 4:
					if (award_box_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetExpeditionInfoResp.awardBoxInfo cannot be set twice.');
					}
					++award_box_info$count;
					this.awardBoxInfo = new serverProto.expedition.ProtoAwardBoxInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.awardBoxInfo);
					break;
				case 5:
					if (award_open_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetExpeditionInfoResp.awardOpenLevel cannot be set twice.');
					}
					++award_open_level$count;
					this.awardOpenLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 6:
					if (award_open_stage$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetExpeditionInfoResp.awardOpenStage cannot be set twice.');
					}
					++award_open_stage$count;
					this.awardOpenStage = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
