package serverProto.guild {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGuildActivityBenefit extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const GUILD_CONTRIBUTION:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildActivityBenefit.guild_contribution", "guildContribution", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guild_contribution$field:int;

		private var hasField$0:uint = 0;

		public function clearGuildContribution():void {
			hasField$0 &= 0xfffffffe;
			guild_contribution$field = new int();
		}

		public function get hasGuildContribution():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set guildContribution(value:int):void {
			hasField$0 |= 0x1;
			guild_contribution$field = value;
		}

		public function get guildContribution():int {
			return guild_contribution$field;
		}

		/**
		 *  @private
		 */
		public static const COPPER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildActivityBenefit.copper", "copper", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var copper$field:int;

		public function clearCopper():void {
			hasField$0 &= 0xfffffffd;
			copper$field = new int();
		}

		public function get hasCopper():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set copper(value:int):void {
			hasField$0 |= 0x2;
			copper$field = value;
		}

		public function get copper():int {
			return copper$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_FUND:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildActivityBenefit.guild_fund", "guildFund", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guild_fund$field:int;

		public function clearGuildFund():void {
			hasField$0 &= 0xfffffffb;
			guild_fund$field = new int();
		}

		public function get hasGuildFund():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set guildFund(value:int):void {
			hasField$0 |= 0x4;
			guild_fund$field = value;
		}

		public function get guildFund():int {
			return guild_fund$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasGuildContribution) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, guild_contribution$field);
			}
			if (hasCopper) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, copper$field);
			}
			if (hasGuildFund) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, guild_fund$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var guild_contribution$count:uint = 0;
			var copper$count:uint = 0;
			var guild_fund$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (guild_contribution$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildActivityBenefit.guildContribution cannot be set twice.');
					}
					++guild_contribution$count;
					this.guildContribution = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (copper$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildActivityBenefit.copper cannot be set twice.');
					}
					++copper$count;
					this.copper = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (guild_fund$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildActivityBenefit.guildFund cannot be set twice.');
					}
					++guild_fund$count;
					this.guildFund = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
