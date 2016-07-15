package serverProto.rankBattle {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.rankBattle.ProtoMatchedRivalInfo;
	import serverProto.rankBattle.ProtoRankBattleReportInfo;
	import serverProto.rankBattle.ProtoRankBattlePlayerInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetRankBattleInfoRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoGetRankBattleInfoRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const PLAYER_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoGetRankBattleInfoRsp.player_info", "playerInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.rankBattle.ProtoRankBattlePlayerInfo);

		private var player_info$field:serverProto.rankBattle.ProtoRankBattlePlayerInfo;

		public function clearPlayerInfo():void {
			player_info$field = null;
		}

		public function get hasPlayerInfo():Boolean {
			return player_info$field != null;
		}

		public function set playerInfo(value:serverProto.rankBattle.ProtoRankBattlePlayerInfo):void {
			player_info$field = value;
		}

		public function get playerInfo():serverProto.rankBattle.ProtoRankBattlePlayerInfo {
			return player_info$field;
		}

		/**
		 *  @private
		 */
		public static const LOCAL_RIVAL_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoGetRankBattleInfoRsp.local_rival_info", "localRivalInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.rankBattle.ProtoMatchedRivalInfo);

		private var local_rival_info$field:serverProto.rankBattle.ProtoMatchedRivalInfo;

		public function clearLocalRivalInfo():void {
			local_rival_info$field = null;
		}

		public function get hasLocalRivalInfo():Boolean {
			return local_rival_info$field != null;
		}

		public function set localRivalInfo(value:serverProto.rankBattle.ProtoMatchedRivalInfo):void {
			local_rival_info$field = value;
		}

		public function get localRivalInfo():serverProto.rankBattle.ProtoMatchedRivalInfo {
			return local_rival_info$field;
		}

		/**
		 *  @private
		 */
		public static const GLOBAL_RIVAL_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoGetRankBattleInfoRsp.global_rival_info", "globalRivalInfo", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.rankBattle.ProtoMatchedRivalInfo);

		private var global_rival_info$field:serverProto.rankBattle.ProtoMatchedRivalInfo;

		public function clearGlobalRivalInfo():void {
			global_rival_info$field = null;
		}

		public function get hasGlobalRivalInfo():Boolean {
			return global_rival_info$field != null;
		}

		public function set globalRivalInfo(value:serverProto.rankBattle.ProtoMatchedRivalInfo):void {
			global_rival_info$field = value;
		}

		public function get globalRivalInfo():serverProto.rankBattle.ProtoMatchedRivalInfo {
			return global_rival_info$field;
		}

		/**
		 *  @private
		 */
		public static const LOCAL_REPORT_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoGetRankBattleInfoRsp.local_report_list", "localReportList", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.rankBattle.ProtoRankBattleReportInfo);

		[ArrayElementType("serverProto.rankBattle.ProtoRankBattleReportInfo")]
		public var localReportList:Array = [];

		/**
		 *  @private
		 */
		public static const GLOBAL_REPORT_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoGetRankBattleInfoRsp.global_report_list", "globalReportList", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.rankBattle.ProtoRankBattleReportInfo);

		[ArrayElementType("serverProto.rankBattle.ProtoRankBattleReportInfo")]
		public var globalReportList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasPlayerInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, player_info$field);
			}
			if (hasLocalRivalInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, local_rival_info$field);
			}
			if (hasGlobalRivalInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, global_rival_info$field);
			}
			for (var localReportList$index:uint = 0; localReportList$index < this.localReportList.length; ++localReportList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.localReportList[localReportList$index]);
			}
			for (var globalReportList$index:uint = 0; globalReportList$index < this.globalReportList.length; ++globalReportList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.globalReportList[globalReportList$index]);
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
			var player_info$count:uint = 0;
			var local_rival_info$count:uint = 0;
			var global_rival_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRankBattleInfoRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (player_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRankBattleInfoRsp.playerInfo cannot be set twice.');
					}
					++player_info$count;
					this.playerInfo = new serverProto.rankBattle.ProtoRankBattlePlayerInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerInfo);
					break;
				case 3:
					if (local_rival_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRankBattleInfoRsp.localRivalInfo cannot be set twice.');
					}
					++local_rival_info$count;
					this.localRivalInfo = new serverProto.rankBattle.ProtoMatchedRivalInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.localRivalInfo);
					break;
				case 4:
					if (global_rival_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRankBattleInfoRsp.globalRivalInfo cannot be set twice.');
					}
					++global_rival_info$count;
					this.globalRivalInfo = new serverProto.rankBattle.ProtoMatchedRivalInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.globalRivalInfo);
					break;
				case 5:
					this.localReportList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.rankBattle.ProtoRankBattleReportInfo()));
					break;
				case 6:
					this.globalReportList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.rankBattle.ProtoRankBattleReportInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
