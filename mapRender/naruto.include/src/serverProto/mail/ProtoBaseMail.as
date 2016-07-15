package serverProto.mail {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoPlayerKey;
	import serverProto.inc.ProtoItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBaseMail extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.mail.ProtoBaseMail.sid", "sid", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var sid:uint;

		/**
		 *  @private
		 */
		public static const MAIL_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.mail.ProtoBaseMail.mail_type", "mailType", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var mailType:uint;

		/**
		 *  @private
		 */
		public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.mail.ProtoBaseMail.player_id", "playerId", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var player_id$field:serverProto.inc.ProtoPlayerKey;

		public function clearPlayerId():void {
			player_id$field = null;
		}

		public function get hasPlayerId():Boolean {
			return player_id$field != null;
		}

		public function set playerId(value:serverProto.inc.ProtoPlayerKey):void {
			player_id$field = value;
		}

		public function get playerId():serverProto.inc.ProtoPlayerKey {
			return player_id$field;
		}

		/**
		 *  @private
		 */
		public static const PLAYER_NICK:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.mail.ProtoBaseMail.player_nick", "playerNick", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var playerNick:String;

		/**
		 *  @private
		 */
		public static const REQUEST_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.mail.ProtoBaseMail.request_time", "requestTime", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		public var requestTime:uint;

		/**
		 *  @private
		 */
		public static const CONTENT_READ_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.mail.ProtoBaseMail.content_read_time", "contentReadTime", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		public var contentReadTime:uint;

		/**
		 *  @private
		 */
		public static const ANNEX_DRAW_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.mail.ProtoBaseMail.annex_draw_time", "annexDrawTime", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		public var annexDrawTime:uint;

		/**
		 *  @private
		 */
		public static const ANNEX_REMAIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.mail.ProtoBaseMail.annex_remain_time", "annexRemainTime", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		public var annexRemainTime:uint;

		/**
		 *  @private
		 */
		public static const ANNEX_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.mail.ProtoBaseMail.annex_num", "annexNum", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		public var annexNum:uint;

		/**
		 *  @private
		 */
		public static const TITLE:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.mail.ProtoBaseMail.title", "title", (10 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var title:String;

		/**
		 *  @private
		 */
		public static const CONTENT:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.mail.ProtoBaseMail.content", "content", (11 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var content$field:String;

		public function clearContent():void {
			content$field = null;
		}

		public function get hasContent():Boolean {
			return content$field != null;
		}

		public function set content(value:String):void {
			content$field = value;
		}

		public function get content():String {
			return content$field;
		}

		/**
		 *  @private
		 */
		public static const ANNEX_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.mail.ProtoBaseMail.annex_list", "annexList", (12 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var annexList:Array = [];

		/**
		 *  @private
		 */
		public static const IS_REPORTED:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.mail.ProtoBaseMail.is_reported", "isReported", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_reported$field:uint;

		private var hasField$0:uint = 0;

		public function clearIsReported():void {
			hasField$0 &= 0xfffffffe;
			is_reported$field = new uint();
		}

		public function get hasIsReported():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set isReported(value:uint):void {
			hasField$0 |= 0x1;
			is_reported$field = value;
		}

		public function get isReported():uint {
			return is_reported$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.sid);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.mailType);
			if (hasPlayerId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, player_id$field);
			}
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.playerNick);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.requestTime);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.contentReadTime);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.annexDrawTime);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.annexRemainTime);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.annexNum);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 10);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.title);
			if (hasContent) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, content$field);
			}
			for (var annexList$index:uint = 0; annexList$index < this.annexList.length; ++annexList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.annexList[annexList$index]);
			}
			if (hasIsReported) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, is_reported$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var sid$count:uint = 0;
			var mail_type$count:uint = 0;
			var player_id$count:uint = 0;
			var player_nick$count:uint = 0;
			var request_time$count:uint = 0;
			var content_read_time$count:uint = 0;
			var annex_draw_time$count:uint = 0;
			var annex_remain_time$count:uint = 0;
			var annex_num$count:uint = 0;
			var title$count:uint = 0;
			var content$count:uint = 0;
			var is_reported$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (sid$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMail.sid cannot be set twice.');
					}
					++sid$count;
					this.sid = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (mail_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMail.mailType cannot be set twice.');
					}
					++mail_type$count;
					this.mailType = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (player_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMail.playerId cannot be set twice.');
					}
					++player_id$count;
					this.playerId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerId);
					break;
				case 4:
					if (player_nick$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMail.playerNick cannot be set twice.');
					}
					++player_nick$count;
					this.playerNick = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 5:
					if (request_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMail.requestTime cannot be set twice.');
					}
					++request_time$count;
					this.requestTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (content_read_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMail.contentReadTime cannot be set twice.');
					}
					++content_read_time$count;
					this.contentReadTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (annex_draw_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMail.annexDrawTime cannot be set twice.');
					}
					++annex_draw_time$count;
					this.annexDrawTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (annex_remain_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMail.annexRemainTime cannot be set twice.');
					}
					++annex_remain_time$count;
					this.annexRemainTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (annex_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMail.annexNum cannot be set twice.');
					}
					++annex_num$count;
					this.annexNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 10:
					if (title$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMail.title cannot be set twice.');
					}
					++title$count;
					this.title = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 11:
					if (content$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMail.content cannot be set twice.');
					}
					++content$count;
					this.content = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 12:
					this.annexList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 13:
					if (is_reported$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseMail.isReported cannot be set twice.');
					}
					++is_reported$count;
					this.isReported = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
