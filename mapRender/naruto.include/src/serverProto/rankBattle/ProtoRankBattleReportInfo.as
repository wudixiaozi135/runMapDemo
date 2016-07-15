package serverProto.rankBattle {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.rankBattle.ProtoReportType;
	import serverProto.inc.ProtoPlayerKey;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoRankBattleReportInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.rankBattle.ProtoRankBattleReportInfo.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.rankBattle.ProtoReportType);

		private var type$field:int;

		private var hasField$0:uint = 0;

		public function clearType():void {
			hasField$0 &= 0xfffffffe;
			type$field = new int();
		}

		public function get hasType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set type(value:int):void {
			hasField$0 |= 0x1;
			type$field = value;
		}

		public function get type():int {
			return type$field;
		}

		/**
		 *  @private
		 */
		public static const RIVAL_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoRankBattleReportInfo.rival_id", "rivalId", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var rival_id$field:serverProto.inc.ProtoPlayerKey;

		public function clearRivalId():void {
			rival_id$field = null;
		}

		public function get hasRivalId():Boolean {
			return rival_id$field != null;
		}

		public function set rivalId(value:serverProto.inc.ProtoPlayerKey):void {
			rival_id$field = value;
		}

		public function get rivalId():serverProto.inc.ProtoPlayerKey {
			return rival_id$field;
		}

		/**
		 *  @private
		 */
		public static const RIVAL_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.rankBattle.ProtoRankBattleReportInfo.rival_name", "rivalName", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var rival_name$field:String;

		public function clearRivalName():void {
			rival_name$field = null;
		}

		public function get hasRivalName():Boolean {
			return rival_name$field != null;
		}

		public function set rivalName(value:String):void {
			rival_name$field = value;
		}

		public function get rivalName():String {
			return rival_name$field;
		}

		/**
		 *  @private
		 */
		public static const NEW_RANK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rankBattle.ProtoRankBattleReportInfo.new_rank", "newRank", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var new_rank$field:int;

		public function clearNewRank():void {
			hasField$0 &= 0xfffffffd;
			new_rank$field = new int();
		}

		public function get hasNewRank():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set newRank(value:int):void {
			hasField$0 |= 0x2;
			new_rank$field = value;
		}

		public function get newRank():int {
			return new_rank$field;
		}

		/**
		 *  @private
		 */
		public static const OLD_RANK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rankBattle.ProtoRankBattleReportInfo.old_rank", "oldRank", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var old_rank$field:int;

		public function clearOldRank():void {
			hasField$0 &= 0xfffffffb;
			old_rank$field = new int();
		}

		public function get hasOldRank():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set oldRank(value:int):void {
			hasField$0 |= 0x4;
			old_rank$field = value;
		}

		public function get oldRank():int {
			return old_rank$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, type$field);
			}
			if (hasRivalId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, rival_id$field);
			}
			if (hasRivalName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, rival_name$field);
			}
			if (hasNewRank) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, new_rank$field);
			}
			if (hasOldRank) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, old_rank$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var type$count:uint = 0;
			var rival_id$count:uint = 0;
			var rival_name$count:uint = 0;
			var new_rank$count:uint = 0;
			var old_rank$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattleReportInfo.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (rival_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattleReportInfo.rivalId cannot be set twice.');
					}
					++rival_id$count;
					this.rivalId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.rivalId);
					break;
				case 3:
					if (rival_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattleReportInfo.rivalName cannot be set twice.');
					}
					++rival_name$count;
					this.rivalName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 4:
					if (new_rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattleReportInfo.newRank cannot be set twice.');
					}
					++new_rank$count;
					this.newRank = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (old_rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRankBattleReportInfo.oldRank cannot be set twice.');
					}
					++old_rank$count;
					this.oldRank = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
