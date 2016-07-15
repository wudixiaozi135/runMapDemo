package tactic.utils 
{
	import com.tencent.morefun.naruto.i18n.I18n;
    import serverProto.tactic.ProtoTacticAddtionType;
	
	/**
	 * ...
	 * @author larryhou
	 * @createTime 2015/4/22 11:38
	 */
	public function getTacticAdditionTypeName(type:int):String
	{
		switch(type)
		{
			case ProtoTacticAddtionType.PROTO_TACTIC_ADDTION_TYPE_HP:return I18n.lang("as_include_1451031572_3518");
			case ProtoTacticAddtionType.PROTO_TACTIC_ADDTION_TYPE_BODY_ATTACK:return I18n.lang("as_include_1451031572_3519");
			case ProtoTacticAddtionType.PROTO_TACTIC_ADDTION_TYPE_BODY_DEFENSE:return I18n.lang("as_include_1451031572_3520");
			case ProtoTacticAddtionType.PROTO_TACTIC_ADDTION_TYPE_NINJA_ATTACK:return I18n.lang("as_include_1451031572_3521");
			case ProtoTacticAddtionType.PROTO_TACTIC_ADDTION_TYPE_NINJA_DEFENSE:return I18n.lang("as_include_1451031572_3522");
			case ProtoTacticAddtionType.PROTO_TACTIC_ADDTION_TYPE_CRIT_VALUE:return I18n.lang("as_include_1451031572_3523");
			case ProtoTacticAddtionType.PROTO_TACTIC_ADDTION_TYPE_CRIT_DAMAGE_VALUE:return I18n.lang("as_include_1451031572_3524");
			case ProtoTacticAddtionType.PROTO_TACTIC_ADDTION_TYPE_SPEED:return I18n.lang("as_include_1451031572_3525");
			case ProtoTacticAddtionType.PROTO_TACTIC_ADDTION_TYPE_COMBO_VALUE:return I18n.lang("as_include_1451031572_3526");
			case ProtoTacticAddtionType.PROTO_TACTIC_ADDTION_TYPE_CONTROL_VALUE:return I18n.lang("as_include_1451031572_3527");
		}
		
		return I18n.lang("as_include_1451031572_3528");
	}
}