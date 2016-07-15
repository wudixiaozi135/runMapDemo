package serverProto.summonMonster {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.summonMonster.ProtoContractInfoList;
	import serverProto.summonMonster.ProtoPropertyBenefit;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetContractInfoResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoGetContractInfoResponse.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoGetContractInfoResponse.list", "list", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.summonMonster.ProtoContractInfoList);

		private var list$field:serverProto.summonMonster.ProtoContractInfoList;

		public function clearList():void {
			list$field = null;
		}

		public function get hasList():Boolean {
			return list$field != null;
		}

		public function set list(value:serverProto.summonMonster.ProtoContractInfoList):void {
			list$field = value;
		}

		public function get list():serverProto.summonMonster.ProtoContractInfoList {
			return list$field;
		}

		/**
		 *  @private
		 */
		public static const PROPERTY_BENEFIT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoGetContractInfoResponse.property_benefit", "propertyBenefit", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.summonMonster.ProtoPropertyBenefit);

		private var property_benefit$field:serverProto.summonMonster.ProtoPropertyBenefit;

		public function clearPropertyBenefit():void {
			property_benefit$field = null;
		}

		public function get hasPropertyBenefit():Boolean {
			return property_benefit$field != null;
		}

		public function set propertyBenefit(value:serverProto.summonMonster.ProtoPropertyBenefit):void {
			property_benefit$field = value;
		}

		public function get propertyBenefit():serverProto.summonMonster.ProtoPropertyBenefit {
			return property_benefit$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.retInfo);
			if (hasList) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, list$field);
			}
			if (hasPropertyBenefit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, property_benefit$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret_info$count:uint = 0;
			var list$count:uint = 0;
			var property_benefit$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetContractInfoResponse.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					if (list$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetContractInfoResponse.list cannot be set twice.');
					}
					++list$count;
					this.list = new serverProto.summonMonster.ProtoContractInfoList();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.list);
					break;
				case 3:
					if (property_benefit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetContractInfoResponse.propertyBenefit cannot be set twice.');
					}
					++property_benefit$count;
					this.propertyBenefit = new serverProto.summonMonster.ProtoPropertyBenefit();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.propertyBenefit);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
