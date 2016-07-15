package serverProto.serverPtlogin {
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
	public  final class ProtoSkeyRenewalReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SKEY:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.serverPtlogin.ProtoSkeyRenewalReq.skey", "skey", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var skey$field:String;

		public function clearSkey():void {
			skey$field = null;
		}

		public function get hasSkey():Boolean {
			return skey$field != null;
		}

		public function set skey(value:String):void {
			skey$field = value;
		}

		public function get skey():String {
			return skey$field;
		}

		/**
		 *  @private
		 */
		public static const SEPERATE_SKEY:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.serverPtlogin.ProtoSkeyRenewalReq.seperate_skey", "seperateSkey", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var seperate_skey$field:String;

		public function clearSeperateSkey():void {
			seperate_skey$field = null;
		}

		public function get hasSeperateSkey():Boolean {
			return seperate_skey$field != null;
		}

		public function set seperateSkey(value:String):void {
			seperate_skey$field = value;
		}

		public function get seperateSkey():String {
			return seperate_skey$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasSkey) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, skey$field);
			}
			if (hasSeperateSkey) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, seperate_skey$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var skey$count:uint = 0;
			var seperate_skey$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (skey$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSkeyRenewalReq.skey cannot be set twice.');
					}
					++skey$count;
					this.skey = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 2:
					if (seperate_skey$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSkeyRenewalReq.seperateSkey cannot be set twice.');
					}
					++seperate_skey$count;
					this.seperateSkey = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
