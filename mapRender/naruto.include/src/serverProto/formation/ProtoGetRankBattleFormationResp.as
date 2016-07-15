package serverProto.formation {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.formationBase.ProtoFormationInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetRankBattleFormationResp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoGetRankBattleFormationResp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const MID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoGetRankBattleFormationResp.mid", "mid", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.formationBase.ProtoFormationInfo);

		private var mid$field:serverProto.formationBase.ProtoFormationInfo;

		public function clearMid():void {
			mid$field = null;
		}

		public function get hasMid():Boolean {
			return mid$field != null;
		}

		public function set mid(value:serverProto.formationBase.ProtoFormationInfo):void {
			mid$field = value;
		}

		public function get mid():serverProto.formationBase.ProtoFormationInfo {
			return mid$field;
		}

		/**
		 *  @private
		 */
		public static const DOWN:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoGetRankBattleFormationResp.down", "down", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.formationBase.ProtoFormationInfo);

		private var down$field:serverProto.formationBase.ProtoFormationInfo;

		public function clearDown():void {
			down$field = null;
		}

		public function get hasDown():Boolean {
			return down$field != null;
		}

		public function set down(value:serverProto.formationBase.ProtoFormationInfo):void {
			down$field = value;
		}

		public function get down():serverProto.formationBase.ProtoFormationInfo {
			return down$field;
		}

		/**
		 *  @private
		 */
		public static const UP:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoGetRankBattleFormationResp.up", "up", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.formationBase.ProtoFormationInfo);

		private var up$field:serverProto.formationBase.ProtoFormationInfo;

		public function clearUp():void {
			up$field = null;
		}

		public function get hasUp():Boolean {
			return up$field != null;
		}

		public function set up(value:serverProto.formationBase.ProtoFormationInfo):void {
			up$field = value;
		}

		public function get up():serverProto.formationBase.ProtoFormationInfo {
			return up$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasMid) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, mid$field);
			}
			if (hasDown) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, down$field);
			}
			if (hasUp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, up$field);
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
			var mid$count:uint = 0;
			var down$count:uint = 0;
			var up$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRankBattleFormationResp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (mid$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRankBattleFormationResp.mid cannot be set twice.');
					}
					++mid$count;
					this.mid = new serverProto.formationBase.ProtoFormationInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.mid);
					break;
				case 3:
					if (down$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRankBattleFormationResp.down cannot be set twice.');
					}
					++down$count;
					this.down = new serverProto.formationBase.ProtoFormationInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.down);
					break;
				case 4:
					if (up$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetRankBattleFormationResp.up cannot be set twice.');
					}
					++up$count;
					this.up = new serverProto.formationBase.ProtoFormationInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.up);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
