package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.CahootNinjaAttackType;
	import serverProto.fight.ProtoActiveNinjaInfo;
	import serverProto.fight.ProtoTeamKathaChange;
	import serverProto.fight.ProtoPassiveNinjaInfo;
	import serverProto.fight.ProtoNinjaHpChange;
	import serverProto.fight.ProtoNinjaHintInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNormalAction extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const IS_FOLLOW_ACTION:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.fight.ProtoNormalAction.is_follow_action", "isFollowAction", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var isFollowAction:Boolean;

		/**
		 *  @private
		 */
		public static const ACTIVE_NINJA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoNormalAction.active_ninja", "activeNinja", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoActiveNinjaInfo);

		public var activeNinja:serverProto.fight.ProtoActiveNinjaInfo;

		/**
		 *  @private
		 */
		public static const CAHOOT_NINJA:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoNormalAction.cahoot_ninja", "cahootNinja", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoActiveNinjaInfo);

		[ArrayElementType("serverProto.fight.ProtoActiveNinjaInfo")]
		public var cahootNinja:Array = [];

		/**
		 *  @private
		 */
		public static const PASSIVE_NINJA:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoNormalAction.passive_ninja", "passiveNinja", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoPassiveNinjaInfo);

		[ArrayElementType("serverProto.fight.ProtoPassiveNinjaInfo")]
		public var passiveNinja:Array = [];

		/**
		 *  @private
		 */
		public static const NINJA_ATTACK_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoNormalAction.ninja_attack_type", "ninjaAttackType", (5 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.fight.CahootNinjaAttackType);

		private var ninja_attack_type$field:int;

		private var hasField$0:uint = 0;

		public function clearNinjaAttackType():void {
			hasField$0 &= 0xfffffffe;
			ninja_attack_type$field = new int();
		}

		public function get hasNinjaAttackType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set ninjaAttackType(value:int):void {
			hasField$0 |= 0x1;
			ninja_attack_type$field = value;
		}

		public function get ninjaAttackType():int {
			return ninja_attack_type$field;
		}

		/**
		 *  @private
		 */
		public static const TEAM_KATHA_CHANGE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoNormalAction.team_katha_change", "teamKathaChange", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoTeamKathaChange);

		[ArrayElementType("serverProto.fight.ProtoTeamKathaChange")]
		public var teamKathaChange:Array = [];

		/**
		 *  @private
		 */
		public static const NINJA_HP_CHANGE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoNormalAction.ninja_hp_change", "ninjaHpChange", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoNinjaHpChange);

		[ArrayElementType("serverProto.fight.ProtoNinjaHpChange")]
		public var ninjaHpChange:Array = [];

		/**
		 *  @private
		 */
		public static const IS_REVERT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoNormalAction.is_revert", "isRevert", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_revert$field:uint;

		public function clearIsRevert():void {
			hasField$0 &= 0xfffffffd;
			is_revert$field = new uint();
		}

		public function get hasIsRevert():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set isRevert(value:uint):void {
			hasField$0 |= 0x2;
			is_revert$field = value;
		}

		public function get isRevert():uint {
			return is_revert$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_HINT_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoNormalAction.ninja_hint_info", "ninjaHintInfo", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoNinjaHintInfo);

		[ArrayElementType("serverProto.fight.ProtoNinjaHintInfo")]
		public var ninjaHintInfo:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, this.isFollowAction);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.activeNinja);
			for (var cahootNinja$index:uint = 0; cahootNinja$index < this.cahootNinja.length; ++cahootNinja$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.cahootNinja[cahootNinja$index]);
			}
			for (var passiveNinja$index:uint = 0; passiveNinja$index < this.passiveNinja.length; ++passiveNinja$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.passiveNinja[passiveNinja$index]);
			}
			if (hasNinjaAttackType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, ninja_attack_type$field);
			}
			for (var teamKathaChange$index:uint = 0; teamKathaChange$index < this.teamKathaChange.length; ++teamKathaChange$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.teamKathaChange[teamKathaChange$index]);
			}
			for (var ninjaHpChange$index:uint = 0; ninjaHpChange$index < this.ninjaHpChange.length; ++ninjaHpChange$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaHpChange[ninjaHpChange$index]);
			}
			if (hasIsRevert) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, is_revert$field);
			}
			for (var ninjaHintInfo$index:uint = 0; ninjaHintInfo$index < this.ninjaHintInfo.length; ++ninjaHintInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaHintInfo[ninjaHintInfo$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var is_follow_action$count:uint = 0;
			var active_ninja$count:uint = 0;
			var ninja_attack_type$count:uint = 0;
			var is_revert$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (is_follow_action$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNormalAction.isFollowAction cannot be set twice.');
					}
					++is_follow_action$count;
					this.isFollowAction = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 2:
					if (active_ninja$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNormalAction.activeNinja cannot be set twice.');
					}
					++active_ninja$count;
					this.activeNinja = new serverProto.fight.ProtoActiveNinjaInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.activeNinja);
					break;
				case 3:
					this.cahootNinja.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoActiveNinjaInfo()));
					break;
				case 4:
					this.passiveNinja.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoPassiveNinjaInfo()));
					break;
				case 5:
					if (ninja_attack_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNormalAction.ninjaAttackType cannot be set twice.');
					}
					++ninja_attack_type$count;
					this.ninjaAttackType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 6:
					this.teamKathaChange.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoTeamKathaChange()));
					break;
				case 7:
					this.ninjaHpChange.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoNinjaHpChange()));
					break;
				case 8:
					if (is_revert$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNormalAction.isRevert cannot be set twice.');
					}
					++is_revert$count;
					this.isRevert = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					this.ninjaHintInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.fight.ProtoNinjaHintInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
