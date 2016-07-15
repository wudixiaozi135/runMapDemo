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
	public  final class ProtoGvGCheerReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CHEER_STRING:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGvGCheerReq.cheer_string", "cheerString", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var cheer_string$field:String;

		public function clearCheerString():void {
			cheer_string$field = null;
		}

		public function get hasCheerString():Boolean {
			return cheer_string$field != null;
		}

		public function set cheerString(value:String):void {
			cheer_string$field = value;
		}

		public function get cheerString():String {
			return cheer_string$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasCheerString) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, cheer_string$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var cheer_string$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (cheer_string$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGvGCheerReq.cheerString cannot be set twice.');
					}
					++cheer_string$count;
					this.cheerString = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
