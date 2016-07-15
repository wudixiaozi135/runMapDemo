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
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGuildUpgradeRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildUpgradeRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const UPGRADE_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildUpgradeRsp.upgrade_type", "upgradeType", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var upgrade_type$field:uint;

		private var hasField$0:uint = 0;

		public function clearUpgradeType():void {
			hasField$0 &= 0xfffffffe;
			upgrade_type$field = new uint();
		}

		public function get hasUpgradeType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set upgradeType(value:uint):void {
			hasField$0 |= 0x1;
			upgrade_type$field = value;
		}

		public function get upgradeType():uint {
			return upgrade_type$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildUpgradeRsp.level", "level", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:uint;

		public function clearLevel():void {
			hasField$0 &= 0xfffffffd;
			level$field = new uint();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set level(value:uint):void {
			hasField$0 |= 0x2;
			level$field = value;
		}

		public function get level():uint {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const LIMIT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildUpgradeRsp.limit", "limit", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var limit$field:uint;

		public function clearLimit():void {
			hasField$0 &= 0xfffffffb;
			limit$field = new uint();
		}

		public function get hasLimit():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set limit(value:uint):void {
			hasField$0 |= 0x4;
			limit$field = value;
		}

		public function get limit():uint {
			return limit$field;
		}

		/**
		 *  @private
		 */
		public static const COST:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildUpgradeRsp.cost", "cost", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var cost$field:uint;

		public function clearCost():void {
			hasField$0 &= 0xfffffff7;
			cost$field = new uint();
		}

		public function get hasCost():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set cost(value:uint):void {
			hasField$0 |= 0x8;
			cost$field = value;
		}

		public function get cost():uint {
			return cost$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasUpgradeType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, upgrade_type$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, level$field);
			}
			if (hasLimit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, limit$field);
			}
			if (hasCost) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, cost$field);
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
			var upgrade_type$count:uint = 0;
			var level$count:uint = 0;
			var limit$count:uint = 0;
			var cost$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildUpgradeRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (upgrade_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildUpgradeRsp.upgradeType cannot be set twice.');
					}
					++upgrade_type$count;
					this.upgradeType = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildUpgradeRsp.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (limit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildUpgradeRsp.limit cannot be set twice.');
					}
					++limit$count;
					this.limit = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (cost$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildUpgradeRsp.cost cannot be set twice.');
					}
					++cost$count;
					this.cost = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
