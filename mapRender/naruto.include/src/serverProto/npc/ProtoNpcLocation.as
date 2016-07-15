package serverProto.npc {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.npc.NpcStatus;
	import serverProto.inc.ProtoPoint;
	import serverProto.npc.NpcType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNpcLocation extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.npc.ProtoNpcLocation.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var id:uint;

		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.npc.ProtoNpcLocation.type", "type", (2 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.npc.NpcType);

		public var type:int;

		/**
		 *  @private
		 */
		public static const BORN_POINT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.npc.ProtoNpcLocation.born_point", "bornPoint", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPoint);

		public var bornPoint:serverProto.inc.ProtoPoint;

		/**
		 *  @private
		 */
		public static const STATUS:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.npc.ProtoNpcLocation.status", "status", (4 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.npc.NpcStatus);

		public var status:int;

		/**
		 *  @private
		 */
		public static const NPC_REAL_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.npc.ProtoNpcLocation.npc_real_id", "npcRealId", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var npc_real_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearNpcRealId():void {
			hasField$0 &= 0xfffffffe;
			npc_real_id$field = new uint();
		}

		public function get hasNpcRealId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set npcRealId(value:uint):void {
			hasField$0 |= 0x1;
			npc_real_id$field = value;
		}

		public function get npcRealId():uint {
			return npc_real_id$field;
		}

		/**
		 *  @private
		 */
		public static const IS_FIGHT:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.npc.ProtoNpcLocation.is_fight", "isFight", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_fight$field:Boolean;

		public function clearIsFight():void {
			hasField$0 &= 0xfffffffd;
			is_fight$field = new Boolean();
		}

		public function get hasIsFight():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set isFight(value:Boolean):void {
			hasField$0 |= 0x2;
			is_fight$field = value;
		}

		public function get isFight():Boolean {
			return is_fight$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.id);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.type);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.bornPoint);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.status);
			if (hasNpcRealId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, npc_real_id$field);
			}
			if (hasIsFight) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, is_fight$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var id$count:uint = 0;
			var type$count:uint = 0;
			var born_point$count:uint = 0;
			var status$count:uint = 0;
			var npc_real_id$count:uint = 0;
			var is_fight$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNpcLocation.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNpcLocation.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 3:
					if (born_point$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNpcLocation.bornPoint cannot be set twice.');
					}
					++born_point$count;
					this.bornPoint = new serverProto.inc.ProtoPoint();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.bornPoint);
					break;
				case 4:
					if (status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNpcLocation.status cannot be set twice.');
					}
					++status$count;
					this.status = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 5:
					if (npc_real_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNpcLocation.npcRealId cannot be set twice.');
					}
					++npc_real_id$count;
					this.npcRealId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (is_fight$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNpcLocation.isFight cannot be set twice.');
					}
					++is_fight$count;
					this.isFight = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
