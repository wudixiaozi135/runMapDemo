package serverProto.npc {
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
	public  final class ProtoMapPitfallNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const UIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.npc.ProtoMapPitfallNotify.uin", "uin", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var uin:uint;

		/**
		 *  @private
		 */
		public static const NINJIA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.npc.ProtoMapPitfallNotify.ninjia", "ninjia", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjia:uint;

		/**
		 *  @private
		 */
		public static const PITFALL_CLIENT_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.npc.ProtoMapPitfallNotify.pitfall_client_id", "pitfallClientId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var pitfallClientId:uint;

		/**
		 *  @private
		 */
		public static const DAMAGE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.npc.ProtoMapPitfallNotify.damage", "damage", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var damage$field:uint;

		private var hasField$0:uint = 0;

		public function clearDamage():void {
			hasField$0 &= 0xfffffffe;
			damage$field = new uint();
		}

		public function get hasDamage():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set damage(value:uint):void {
			hasField$0 |= 0x1;
			damage$field = value;
		}

		public function get damage():uint {
			return damage$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.uin);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ninjia);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.pitfallClientId);
			if (hasDamage) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, damage$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var uin$count:uint = 0;
			var ninjia$count:uint = 0;
			var pitfall_client_id$count:uint = 0;
			var damage$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (uin$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMapPitfallNotify.uin cannot be set twice.');
					}
					++uin$count;
					this.uin = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (ninjia$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMapPitfallNotify.ninjia cannot be set twice.');
					}
					++ninjia$count;
					this.ninjia = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (pitfall_client_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMapPitfallNotify.pitfallClientId cannot be set twice.');
					}
					++pitfall_client_id$count;
					this.pitfallClientId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (damage$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMapPitfallNotify.damage cannot be set twice.');
					}
					++damage$count;
					this.damage = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
