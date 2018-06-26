package com.mcip.bus.orb;
/**
<p>
<ul>
<li> <b>Java Class</b> com.mcip.bus.orb.BusinessManagerHolder
<li> <b>Source File</b> com/mcip/bus/orb/BusinessManagerHolder.java
<li> <b>IDL Source File</b> businessManage.idl
<li> <b>IDL Absolute Name</b> ::com::mcip::bus::orb::BusinessManager
<li> <b>Repository Identifier</b> IDL:com/mcip/bus/orb/BusinessManager:1.0
</ul>
<b>IDL definition:</b>
<pre>
    #pragma prefix "com/mcip/bus/orb"
    interface BusinessManager {
      boolean isAlive();
      ::com::mcip::orb::Stringss queryPlyNetList(
        in wstring in_opr_cde,
        in string in_prnt_flg,
        in string in_ply_no,
        in string frm_plyapp_tm,
        in string to_plyapp_tm,
        in wstring frm_insrnc_cde,
        in wstring to_insrnc_cde,
        in ::com::mcip::orb::Strings dpt_array
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss queryPlyNetInfo(
        in ::com::mcip::orb::Strings ply_no_array
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean updatePrintInfo(
        in ::com::mcip::orb::Strings ply_no_array,
        in wstring in_opr_cde
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean acceptPlyAssign(
        in string in_ply_no,
        in wstring in_assign_emp,
        in string in_assign_tm,
        in string in_sended_tm,
        in string in_feedbk_tm
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean acceptPlySended(
        in string in_ply_no,
        in string in_sended_tm
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean acceptPlyFreebk(
        in string in_ply_no,
        in string in_freebk_tm
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss queryPlyNetAbleEmp(
        in wstring in_dpt_cde,
        in wstring in_opr_cde
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss queryPlyDealList(
        in string in_deal_type,
        in string in_deal_flg,
        in string in_ply_no,
        in string frm_plyapp_tm,
        in string to_plyapp_tm,
        in wstring frm_insrnc_cde,
        in wstring to_insrnc_cde,
        in ::com::mcip::orb::Strings dpt_array,
        in wstring in_opr_cde
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss queryRptFlwUpList(
        in string in_deal_type,
        in string in_deal_flg,
        in string in_ply_no,
        in string in_rpt_no,
        in string frm_rpt_tm,
        in string to_rpt_tm,
        in wstring frm_insrnc_cde,
        in wstring to_insrnc_cde,
        in ::com::mcip::orb::Strings dpt_array,
        in wstring in_opr_cde
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean acceptRptFlwUpEmp(
        in string in_rpt_no,
        in wstring in_emp_cde,
        in wstring auth_opr_cde
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss queryEventTypeList(
        in wstring in_event_cde
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss queryEventCountList(
        in string frm_log_tm,
        in string to_log_tm,
        in wstring in_event_typ,
        in wstring in_event_cde,
        in wstring in_opr_cde
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean acceptGuideInfo(
        in ::com::mcip::bus::orb::InsrncGuideInfo guideinfoobj,
        in wstring in_opr_cnm
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean updateGuideInfo(
        in ::com::mcip::bus::orb::InsrncGuideInfo guideinfoobj,
        in wstring in_opr_cnm
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean deleteGuideInfo(
        in wstring in_info_no,
        in wstring in_opr_cnm
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss queryGuideList(
        in wstring in_info_no,
        in wstring in_opr_cnm
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss queryGuideInfo(
        in wstring in_info_no,
        in wstring in_opr_cnm
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean acceptConsultInfo(
        in ::com::mcip::bus::orb::InsrncFaqInfo insrncfaqinfoobj,
        in wstring in_opr_cnm
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean updateConsultInfo(
        in ::com::mcip::bus::orb::InsrncFaqInfo insrncfaqinfoobj,
        in wstring in_opr_cnm
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean deleteConsultInfo(
        in wstring in_faq_no,
        in wstring in_opr_cnm
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss queryConsultList(
        in wstring in_topic_no,
        in wstring in_opr_cnm
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss queryConsultInfo(
        in wstring in_faq_no,
        in wstring in_opr_cnm
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean acceptFaqInfo(
        in ::com::mcip::bus::orb::CustFaqInfo custfaqinfoobj,
        in wstring in_opr_cnm
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean updateFaqInfo(
        in ::com::mcip::bus::orb::CustFaqInfo custfaqinfoobj,
        in wstring in_opr_cnm
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean deleteFaqInfo(
        in wstring in_faq_no,
        in wstring in_opr_cnm
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss queryFaqList(
        in wstring in_faq_no,
        in wstring in_opr_cnm
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss queryFaqInfo(
        in wstring in_faq_no,
        in wstring in_opr_cnm
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss getPlyAppStatictics(
        in string frm_plyapp_tm,
        in string to_plyapp_tm,
        in ::com::mcip::orb::Strings owned_dpt,
        in wstring frm_dpt,
        in wstring to_dpt,
        in wstring frm_insrnc_cde,
        in wstring to_insrnc_cde,
        in wstring in_cur_cde,
        in wstring in_site_cde,
        in wstring in_stat_type,
        in wstring in_opr_cde
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss getPolicyStatictics(
        in string frm_plyapp_tm,
        in string to_plyapp_tm,
        in ::com::mcip::orb::Strings owned_dpt,
        in wstring frm_dpt,
        in wstring to_dpt,
        in wstring frm_insrnc_cde,
        in wstring to_insrnc_cde,
        in wstring in_cur_cde,
        in wstring in_site_cde,
        in wstring in_opr_cde
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss getEdrPlcyStatictics(
        in string frm_edrapp_tm,
        in string to_edrapp_tm,
        in ::com::mcip::orb::Strings owned_dpt,
        in wstring frm_dpt,
        in wstring to_dpt,
        in wstring frm_insrnc_cde,
        in wstring to_insrnc_cde,
        in wstring in_cur_cde,
        in wstring in_site_cde,
        in wstring in_opr_cde
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss getProposalStatictics(
        in string frm_plyapp_tm,
        in string to_plyapp_tm,
        in ::com::mcip::orb::Strings owned_dpt,
        in wstring frm_dpt,
        in wstring to_dpt,
        in wstring frm_insrnc_cde,
        in wstring to_insrnc_cde,
        in wstring in_cur_cde,
        in wstring in_site_cde,
        in wstring in_opr_cde
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss getCaseRptStatictics(
        in string frm_plyapp_tm,
        in string to_plyapp_tm,
        in ::com::mcip::orb::Strings owned_dpt,
        in wstring frm_dpt,
        in wstring to_dpt,
        in wstring frm_insrnc_cde,
        in wstring to_insrnc_cde,
        in wstring in_cur_cde,
        in wstring in_site_cde,
        in wstring in_opr_cde
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss getCustStatictics(
        in string frm_crt_tm,
        in string to_crt_tm,
        in ::com::mcip::orb::Strings owned_dpt,
        in wstring frm_dpt,
        in wstring to_dpt,
        in wstring in_opr_cde
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean acceptClmDgst(
        in ::com::mcip::bus::orb::ClmDgstInfo clmdgstinfoobj,
        in wstring in_opr_cde
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean updateClmDgst(
        in ::com::mcip::bus::orb::ClmDgstInfo clmdgstinfoobj,
        in wstring in_opr_cde
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean deleteClmDgst(
        in wstring in_rpt_no,
        in wstring in_ply_no,
        in wstring in_info_no,
        in wstring in_opr_cde
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss queryClmDgstInfo(
        in wstring in_rpt_no,
        in wstring in_ply_no,
        in wstring in_opr_cde
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean acceptChatCntnt(
        in wstring in_bgn_tm,
        in wstring in_end_tm,
        in wstring in_chat_ttl,
        in ::com::mcip::orb::Strings chat_cntnt,
        in wstring in_chat_nme,
        in wstring in_chat_mrk
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss queryChatCntnt(
        in wstring in_chat_ttl,
        in wstring in_chat_mrk
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss getCustPlyAppList(
        in wstring in_user_id
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss getCustPlySum(
        in wstring in_user_id,
        in ::com::mcip::orb::Strings in_insrnc_cde,
        in wstring in_sum_tm
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss getChatRight(
        in wstring in_emp_cde
      )
      raises(
        ::com::mcip::orb::CoException
      );
    };
</pre>
</p>
*/
final public class BusinessManagerHolder implements org.omg.CORBA.portable.Streamable {
  public com.mcip.bus.orb.BusinessManager value;
  public BusinessManagerHolder() {
  }
  public BusinessManagerHolder(com.mcip.bus.orb.BusinessManager value) {
    this.value = value;
  }
  public void _read(org.omg.CORBA.portable.InputStream input) {
    value = com.mcip.bus.orb.BusinessManagerHelper.read(input);
  }
  public void _write(org.omg.CORBA.portable.OutputStream output) {
    com.mcip.bus.orb.BusinessManagerHelper.write(output, value);
  }
  public org.omg.CORBA.TypeCode _type() {
    return com.mcip.bus.orb.BusinessManagerHelper.type();
  }
}
