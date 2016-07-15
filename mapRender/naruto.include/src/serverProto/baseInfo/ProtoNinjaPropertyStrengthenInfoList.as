package serverProto.baseInfo {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaPropertyStrengthenInfoList extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const HP:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfoList.hp", "hp", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo);

		public var hp:serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo;

		/**
		 *  @private
		 */
		public static const ATTACK:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfoList.attack", "attack", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo);

		public var attack:serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo;

		/**
		 *  @private
		 */
		public static const DEFENSE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfoList.defense", "defense", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo);

		public var defense:serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo;

		/**
		 *  @private
		 */
		public static const NINJA_ATTACK:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfoList.ninja_attack", "ninjaAttack", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo);

		public var ninjaAttack:serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo;

		/**
		 *  @private
		 */
		public static const NINJA_DEFENSE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfoList.ninja_defense", "ninjaDefense", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo);

		public var ninjaDefense:serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.hp);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.attack);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.defense);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaAttack);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaDefense);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var hp$count:uint = 0;
			var attack$count:uint = 0;
			var defense$count:uint = 0;
			var ninja_attack$count:uint = 0;
			var ninja_defense$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyStrengthenInfoList.hp cannot be set twice.');
					}
					++hp$count;
					this.hp = new serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.hp);
					break;
				case 2:
					if (attack$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyStrengthenInfoList.attack cannot be set twice.');
					}
					++attack$count;
					this.attack = new serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.attack);
					break;
				case 3:
					if (defense$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyStrengthenInfoList.defense cannot be set twice.');
					}
					++defense$count;
					this.defense = new serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.defense);
					break;
				case 4:
					if (ninja_attack$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyStrengthenInfoList.ninjaAttack cannot be set twice.');
					}
					++ninja_attack$count;
					this.ninjaAttack = new serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaAttack);
					break;
				case 5:
					if (ninja_defense$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyStrengthenInfoList.ninjaDefense cannot be set twice.');
					}
					++ninja_defense$count;
					this.ninjaDefense = new serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaDefense);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
