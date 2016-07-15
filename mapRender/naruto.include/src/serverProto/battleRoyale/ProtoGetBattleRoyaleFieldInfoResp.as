package serverProto.battleRoyale {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.battleRoyale.ProtoBattleRoyaleCampInfo;
	import serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetBattleRoyaleFieldInfoResp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoGetBattleRoyaleFieldInfoResp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const SELF_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoGetBattleRoyaleFieldInfoResp.self_info", "selfInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo);

		private var self_info$field:serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo;

		public function clearSelfInfo():void {
			self_info$field = null;
		}

		public function get hasSelfInfo():Boolean {
			return self_info$field != null;
		}

		public function set selfInfo(value:serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo):void {
			self_info$field = value;
		}

		public function get selfInfo():serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo {
			return self_info$field;
		}

		/**
		 *  @private
		 */
		public static const CAMP_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoGetBattleRoyaleFieldInfoResp.camp_list", "campList", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.battleRoyale.ProtoBattleRoyaleCampInfo);

		[ArrayElementType("serverProto.battleRoyale.ProtoBattleRoyaleCampInfo")]
		public var campList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasSelfInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, self_info$field);
			}
			for (var campList$index:uint = 0; campList$index < this.campList.length; ++campList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.campList[campList$index]);
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
			var self_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetBattleRoyaleFieldInfoResp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (self_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetBattleRoyaleFieldInfoResp.selfInfo cannot be set twice.');
					}
					++self_info$count;
					this.selfInfo = new serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.selfInfo);
					break;
				case 3:
					this.campList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.battleRoyale.ProtoBattleRoyaleCampInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
