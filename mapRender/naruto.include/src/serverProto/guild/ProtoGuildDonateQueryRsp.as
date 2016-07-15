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
	import serverProto.guild.ProtoGuildDonationRank;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGuildDonateQueryRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildDonateQueryRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const MY_COUNTRI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDonateQueryRsp.my_countri", "myCountri", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var my_countri$field:uint;

		private var hasField$0:uint = 0;

		public function clearMyCountri():void {
			hasField$0 &= 0xfffffffe;
			my_countri$field = new uint();
		}

		public function get hasMyCountri():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set myCountri(value:uint):void {
			hasField$0 |= 0x1;
			my_countri$field = value;
		}

		public function get myCountri():uint {
			return my_countri$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_FUNDS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDonateQueryRsp.guild_funds", "guildFunds", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guild_funds$field:uint;

		public function clearGuildFunds():void {
			hasField$0 &= 0xfffffffd;
			guild_funds$field = new uint();
		}

		public function get hasGuildFunds():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set guildFunds(value:uint):void {
			hasField$0 |= 0x2;
			guild_funds$field = value;
		}

		public function get guildFunds():uint {
			return guild_funds$field;
		}

		/**
		 *  @private
		 */
		public static const TODAY_RANK:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildDonateQueryRsp.today_rank", "todayRank", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGuildDonationRank);

		[ArrayElementType("serverProto.guild.ProtoGuildDonationRank")]
		public var todayRank:Array = [];

		/**
		 *  @private
		 */
		public static const HISTORY_RANK:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildDonateQueryRsp.history_rank", "historyRank", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.guild.ProtoGuildDonationRank);

		[ArrayElementType("serverProto.guild.ProtoGuildDonationRank")]
		public var historyRank:Array = [];

		/**
		 *  @private
		 */
		public static const DAILY_MONEY_DONATE_GUILD_CONTRI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDonateQueryRsp.daily_money_donate_guild_contri", "dailyMoneyDonateGuildContri", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var daily_money_donate_guild_contri$field:uint;

		public function clearDailyMoneyDonateGuildContri():void {
			hasField$0 &= 0xfffffffb;
			daily_money_donate_guild_contri$field = new uint();
		}

		public function get hasDailyMoneyDonateGuildContri():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set dailyMoneyDonateGuildContri(value:uint):void {
			hasField$0 |= 0x4;
			daily_money_donate_guild_contri$field = value;
		}

		public function get dailyMoneyDonateGuildContri():uint {
			return daily_money_donate_guild_contri$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_DAILY_MONEY_DONATE_GUILD_CONTRI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDonateQueryRsp.max_daily_money_donate_guild_contri", "maxDailyMoneyDonateGuildContri", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_daily_money_donate_guild_contri$field:uint;

		public function clearMaxDailyMoneyDonateGuildContri():void {
			hasField$0 &= 0xfffffff7;
			max_daily_money_donate_guild_contri$field = new uint();
		}

		public function get hasMaxDailyMoneyDonateGuildContri():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set maxDailyMoneyDonateGuildContri(value:uint):void {
			hasField$0 |= 0x8;
			max_daily_money_donate_guild_contri$field = value;
		}

		public function get maxDailyMoneyDonateGuildContri():uint {
			return max_daily_money_donate_guild_contri$field;
		}

		/**
		 *  @private
		 */
		public static const DAILY_GOLDINGOT_DONATE_GUILD_CONTRI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDonateQueryRsp.daily_goldingot_donate_guild_contri", "dailyGoldingotDonateGuildContri", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var daily_goldingot_donate_guild_contri$field:uint;

		public function clearDailyGoldingotDonateGuildContri():void {
			hasField$0 &= 0xffffffef;
			daily_goldingot_donate_guild_contri$field = new uint();
		}

		public function get hasDailyGoldingotDonateGuildContri():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set dailyGoldingotDonateGuildContri(value:uint):void {
			hasField$0 |= 0x10;
			daily_goldingot_donate_guild_contri$field = value;
		}

		public function get dailyGoldingotDonateGuildContri():uint {
			return daily_goldingot_donate_guild_contri$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_DAILY_GOLDINGOT_DONATE_GUILD_CONTRI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDonateQueryRsp.max_daily_goldingot_donate_guild_contri", "maxDailyGoldingotDonateGuildContri", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_daily_goldingot_donate_guild_contri$field:uint;

		public function clearMaxDailyGoldingotDonateGuildContri():void {
			hasField$0 &= 0xffffffdf;
			max_daily_goldingot_donate_guild_contri$field = new uint();
		}

		public function get hasMaxDailyGoldingotDonateGuildContri():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set maxDailyGoldingotDonateGuildContri(value:uint):void {
			hasField$0 |= 0x20;
			max_daily_goldingot_donate_guild_contri$field = value;
		}

		public function get maxDailyGoldingotDonateGuildContri():uint {
			return max_daily_goldingot_donate_guild_contri$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasMyCountri) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, my_countri$field);
			}
			if (hasGuildFunds) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, guild_funds$field);
			}
			for (var todayRank$index:uint = 0; todayRank$index < this.todayRank.length; ++todayRank$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.todayRank[todayRank$index]);
			}
			for (var historyRank$index:uint = 0; historyRank$index < this.historyRank.length; ++historyRank$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.historyRank[historyRank$index]);
			}
			if (hasDailyMoneyDonateGuildContri) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, daily_money_donate_guild_contri$field);
			}
			if (hasMaxDailyMoneyDonateGuildContri) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, max_daily_money_donate_guild_contri$field);
			}
			if (hasDailyGoldingotDonateGuildContri) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, daily_goldingot_donate_guild_contri$field);
			}
			if (hasMaxDailyGoldingotDonateGuildContri) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, max_daily_goldingot_donate_guild_contri$field);
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
			var my_countri$count:uint = 0;
			var guild_funds$count:uint = 0;
			var daily_money_donate_guild_contri$count:uint = 0;
			var max_daily_money_donate_guild_contri$count:uint = 0;
			var daily_goldingot_donate_guild_contri$count:uint = 0;
			var max_daily_goldingot_donate_guild_contri$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDonateQueryRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (my_countri$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDonateQueryRsp.myCountri cannot be set twice.');
					}
					++my_countri$count;
					this.myCountri = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (guild_funds$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDonateQueryRsp.guildFunds cannot be set twice.');
					}
					++guild_funds$count;
					this.guildFunds = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					this.todayRank.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.guild.ProtoGuildDonationRank()));
					break;
				case 5:
					this.historyRank.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.guild.ProtoGuildDonationRank()));
					break;
				case 6:
					if (daily_money_donate_guild_contri$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDonateQueryRsp.dailyMoneyDonateGuildContri cannot be set twice.');
					}
					++daily_money_donate_guild_contri$count;
					this.dailyMoneyDonateGuildContri = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (max_daily_money_donate_guild_contri$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDonateQueryRsp.maxDailyMoneyDonateGuildContri cannot be set twice.');
					}
					++max_daily_money_donate_guild_contri$count;
					this.maxDailyMoneyDonateGuildContri = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (daily_goldingot_donate_guild_contri$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDonateQueryRsp.dailyGoldingotDonateGuildContri cannot be set twice.');
					}
					++daily_goldingot_donate_guild_contri$count;
					this.dailyGoldingotDonateGuildContri = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (max_daily_goldingot_donate_guild_contri$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDonateQueryRsp.maxDailyGoldingotDonateGuildContri cannot be set twice.');
					}
					++max_daily_goldingot_donate_guild_contri$count;
					this.maxDailyGoldingotDonateGuildContri = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
