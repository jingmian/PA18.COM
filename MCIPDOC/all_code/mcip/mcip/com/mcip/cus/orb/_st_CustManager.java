package com.mcip.cus.orb;
/**
<p>
<ul>
<li> <b>Java Class</b> com.mcip.cus.orb._st_CustManager
<li> <b>Source File</b> com/mcip/cus/orb/_st_CustManager.java
<li> <b>IDL Source File</b> custManage.idl
<li> <b>IDL Absolute Name</b> ::com::mcip::cus::orb::CustManager
<li> <b>Repository Identifier</b> IDL:com/mcip/cus/orb/CustManager:1.0
</ul>
<b>IDL definition:</b>
<pre>
    #pragma prefix "com/mcip/cus/orb"
    interface CustManager {
      ::com::mcip::orb::Stringss customerLogin(
        in wstring usrname,
        in wstring passwd
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean acceptOrgaCust(
        in string in_register_mrk,
        in ::com::mcip::cus::orb::CustOrgn custorgnobj,
        in ::com::mcip::cus::orb::CustEntity custentityobj
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean acceptPrsnCust(
        in string in_register_mrk,
        in ::com::mcip::cus::orb::CustPrsn custprsnobj,
        in ::com::mcip::cus::orb::CustEntity custentityobj
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean deleteIllegalUser(
        in string user_id
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean acceptAgntCust(
        in ::com::mcip::cus::orb::CustEntity custentityobj
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean updateOrgaCust(
        in ::com::mcip::cus::orb::CustOrgn custorgnobj,
        in wstring cust_user_id
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean updatePrsnCust(
        in ::com::mcip::cus::orb::CustPrsn custprsnobj,
        in wstring cust_user_id
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean updateEnttCust(
        in ::com::mcip::cus::orb::CustEntity custentityobj
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss queryCustEntt(
        in wstring in_account_info
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss queryCustOrgn(
        in wstring in_account_info
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss queryCustPrsn(
        in wstring in_account_info
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss queryCustAgnt(
        in wstring in_account_info
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss requireCust(
        in string in_user_mrk,
        in wstring in_user_id,
        in wstring in_register_id
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean checkProposal(
        in wstring user_id,
        in string cust_type
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss queryAgencyInfo(
        in wstring in_agent_cde
      )
      raises(
        ::com::mcip::orb::CoException
      );
      ::com::mcip::orb::Stringss queryOCcustInfo(
        in wstring in_clnt_cde
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean acceptOCCust(
        in string in_register_mrk,
        in ::com::mcip::cus::orb::CustOrgn custorgnobj,
        in ::com::mcip::cus::orb::CustEntity custentityobj
      )
      raises(
        ::com::mcip::orb::CoException
      );
      boolean acceptAGCust(
        in string in_register_mrk,
        in ::com::mcip::cus::orb::CustOrgn custorgnobj,
        in ::com::mcip::cus::orb::CustEntity custentityobj
      )
      raises(
        ::com::mcip::orb::CoException
      );
    };
</pre>
</p>
*/
public class _st_CustManager extends com.inprise.vbroker.CORBA.portable.ObjectImpl implements com.mcip.cus.orb.CustManager {
  protected com.mcip.cus.orb.CustManager _wrapper = null;
  public com.mcip.cus.orb.CustManager _this() {
    return this;
  }
  public java.lang.String[] _ids() {
    return __ids;
  }
  private static java.lang.String[] __ids = {
    "IDL:com/mcip/cus/orb/CustManager:1.0"
  };
  /**
  <p>
  Operation: <b>::com::mcip::cus::orb::CustManager::customerLogin</b>.
  <pre>
    #pragma prefix "com/mcip/cus/orb/CustManager"
    ::com::mcip::orb::Stringss customerLogin(
      in wstring usrname,
      in wstring passwd
    )
    raises(
      ::com::mcip::orb::CoException
    );
  </pre>
  </p>
  */
  public java.lang.String[][] customerLogin(
    java.lang.String usrname,
    java.lang.String passwd
  ) throws
    com.mcip.orb.CoException {
    org.omg.CORBA.portable.OutputStream _output;
    org.omg.CORBA.portable.InputStream _input;
    java.lang.String[][] _result;
    while(true) {
      _output = this._request("customerLogin", true);
      _output.write_wstring(usrname);
      _output.write_wstring(passwd);
      org.omg.CORBA.StringHolder _exception_id = new org.omg.CORBA.StringHolder();
      try {
        _input = this._invoke(_output, _exception_id);
        if(_exception_id.value != null) {
          if(_exception_id.value.equals(com.mcip.orb.CoExceptionHelper.id())) {
            throw com.mcip.orb.CoExceptionHelper.read(_input);
          }
          throw new org.omg.CORBA.MARSHAL
            ("Unexpected User Exception: " + _exception_id.value);
        }
        _result = com.mcip.orb.StringssHelper.read(_input);
      }
      catch(org.omg.CORBA.TRANSIENT _exception) {
        continue;
      }
      break;
    }
    return _result;
  }
  /**
  <p>
  Operation: <b>::com::mcip::cus::orb::CustManager::acceptOrgaCust</b>.
  <pre>
    #pragma prefix "com/mcip/cus/orb/CustManager"
    boolean acceptOrgaCust(
      in string in_register_mrk,
      in ::com::mcip::cus::orb::CustOrgn custorgnobj,
      in ::com::mcip::cus::orb::CustEntity custentityobj
    )
    raises(
      ::com::mcip::orb::CoException
    );
  </pre>
  </p>
  */
  public boolean acceptOrgaCust(
    java.lang.String in_register_mrk,
    com.mcip.cus.orb.CustOrgn custorgnobj,
    com.mcip.cus.orb.CustEntity custentityobj
  ) throws
    com.mcip.orb.CoException {
    org.omg.CORBA.portable.OutputStream _output;
    org.omg.CORBA.portable.InputStream _input;
    boolean _result;
    while(true) {
      _output = this._request("acceptOrgaCust", true);
      _output.write_string(in_register_mrk);
      com.mcip.cus.orb.CustOrgnHelper.write(_output, custorgnobj);
      com.mcip.cus.orb.CustEntityHelper.write(_output, custentityobj);
      org.omg.CORBA.StringHolder _exception_id = new org.omg.CORBA.StringHolder();
      try {
        _input = this._invoke(_output, _exception_id);
        if(_exception_id.value != null) {
          if(_exception_id.value.equals(com.mcip.orb.CoExceptionHelper.id())) {
            throw com.mcip.orb.CoExceptionHelper.read(_input);
          }
          throw new org.omg.CORBA.MARSHAL
            ("Unexpected User Exception: " + _exception_id.value);
        }
        _result = _input.read_boolean();
      }
      catch(org.omg.CORBA.TRANSIENT _exception) {
        continue;
      }
      break;
    }
    return _result;
  }
  /**
  <p>
  Operation: <b>::com::mcip::cus::orb::CustManager::acceptPrsnCust</b>.
  <pre>
    #pragma prefix "com/mcip/cus/orb/CustManager"
    boolean acceptPrsnCust(
      in string in_register_mrk,
      in ::com::mcip::cus::orb::CustPrsn custprsnobj,
      in ::com::mcip::cus::orb::CustEntity custentityobj
    )
    raises(
      ::com::mcip::orb::CoException
    );
  </pre>
  </p>
  */
  public boolean acceptPrsnCust(
    java.lang.String in_register_mrk,
    com.mcip.cus.orb.CustPrsn custprsnobj,
    com.mcip.cus.orb.CustEntity custentityobj
  ) throws
    com.mcip.orb.CoException {
    org.omg.CORBA.portable.OutputStream _output;
    org.omg.CORBA.portable.InputStream _input;
    boolean _result;
    while(true) {
      _output = this._request("acceptPrsnCust", true);
      _output.write_string(in_register_mrk);
      com.mcip.cus.orb.CustPrsnHelper.write(_output, custprsnobj);
      com.mcip.cus.orb.CustEntityHelper.write(_output, custentityobj);
      org.omg.CORBA.StringHolder _exception_id = new org.omg.CORBA.StringHolder();
      try {
        _input = this._invoke(_output, _exception_id);
        if(_exception_id.value != null) {
          if(_exception_id.value.equals(com.mcip.orb.CoExceptionHelper.id())) {
            throw com.mcip.orb.CoExceptionHelper.read(_input);
          }
          throw new org.omg.CORBA.MARSHAL
            ("Unexpected User Exception: " + _exception_id.value);
        }
        _result = _input.read_boolean();
      }
      catch(org.omg.CORBA.TRANSIENT _exception) {
        continue;
      }
      break;
    }
    return _result;
  }
  /**
  <p>
  Operation: <b>::com::mcip::cus::orb::CustManager::deleteIllegalUser</b>.
  <pre>
    #pragma prefix "com/mcip/cus/orb/CustManager"
    boolean deleteIllegalUser(
      in string user_id
    )
    raises(
      ::com::mcip::orb::CoException
    );
  </pre>
  </p>
  */
  public boolean deleteIllegalUser(
    java.lang.String user_id
  ) throws
    com.mcip.orb.CoException {
    org.omg.CORBA.portable.OutputStream _output;
    org.omg.CORBA.portable.InputStream _input;
    boolean _result;
    while(true) {
      _output = this._request("deleteIllegalUser", true);
      _output.write_string(user_id);
      org.omg.CORBA.StringHolder _exception_id = new org.omg.CORBA.StringHolder();
      try {
        _input = this._invoke(_output, _exception_id);
        if(_exception_id.value != null) {
          if(_exception_id.value.equals(com.mcip.orb.CoExceptionHelper.id())) {
            throw com.mcip.orb.CoExceptionHelper.read(_input);
          }
          throw new org.omg.CORBA.MARSHAL
            ("Unexpected User Exception: " + _exception_id.value);
        }
        _result = _input.read_boolean();
      }
      catch(org.omg.CORBA.TRANSIENT _exception) {
        continue;
      }
      break;
    }
    return _result;
  }
  /**
  <p>
  Operation: <b>::com::mcip::cus::orb::CustManager::acceptAgntCust</b>.
  <pre>
    #pragma prefix "com/mcip/cus/orb/CustManager"
    boolean acceptAgntCust(
      in ::com::mcip::cus::orb::CustEntity custentityobj
    )
    raises(
      ::com::mcip::orb::CoException
    );
  </pre>
  </p>
  */
  public boolean acceptAgntCust(
    com.mcip.cus.orb.CustEntity custentityobj
  ) throws
    com.mcip.orb.CoException {
    org.omg.CORBA.portable.OutputStream _output;
    org.omg.CORBA.portable.InputStream _input;
    boolean _result;
    while(true) {
      _output = this._request("acceptAgntCust", true);
      com.mcip.cus.orb.CustEntityHelper.write(_output, custentityobj);
      org.omg.CORBA.StringHolder _exception_id = new org.omg.CORBA.StringHolder();
      try {
        _input = this._invoke(_output, _exception_id);
        if(_exception_id.value != null) {
          if(_exception_id.value.equals(com.mcip.orb.CoExceptionHelper.id())) {
            throw com.mcip.orb.CoExceptionHelper.read(_input);
          }
          throw new org.omg.CORBA.MARSHAL
            ("Unexpected User Exception: " + _exception_id.value);
        }
        _result = _input.read_boolean();
      }
      catch(org.omg.CORBA.TRANSIENT _exception) {
        continue;
      }
      break;
    }
    return _result;
  }
  /**
  <p>
  Operation: <b>::com::mcip::cus::orb::CustManager::updateOrgaCust</b>.
  <pre>
    #pragma prefix "com/mcip/cus/orb/CustManager"
    boolean updateOrgaCust(
      in ::com::mcip::cus::orb::CustOrgn custorgnobj,
      in wstring cust_user_id
    )
    raises(
      ::com::mcip::orb::CoException
    );
  </pre>
  </p>
  */
  public boolean updateOrgaCust(
    com.mcip.cus.orb.CustOrgn custorgnobj,
    java.lang.String cust_user_id
  ) throws
    com.mcip.orb.CoException {
    org.omg.CORBA.portable.OutputStream _output;
    org.omg.CORBA.portable.InputStream _input;
    boolean _result;
    while(true) {
      _output = this._request("updateOrgaCust", true);
      com.mcip.cus.orb.CustOrgnHelper.write(_output, custorgnobj);
      _output.write_wstring(cust_user_id);
      org.omg.CORBA.StringHolder _exception_id = new org.omg.CORBA.StringHolder();
      try {
        _input = this._invoke(_output, _exception_id);
        if(_exception_id.value != null) {
          if(_exception_id.value.equals(com.mcip.orb.CoExceptionHelper.id())) {
            throw com.mcip.orb.CoExceptionHelper.read(_input);
          }
          throw new org.omg.CORBA.MARSHAL
            ("Unexpected User Exception: " + _exception_id.value);
        }
        _result = _input.read_boolean();
      }
      catch(org.omg.CORBA.TRANSIENT _exception) {
        continue;
      }
      break;
    }
    return _result;
  }
  /**
  <p>
  Operation: <b>::com::mcip::cus::orb::CustManager::updatePrsnCust</b>.
  <pre>
    #pragma prefix "com/mcip/cus/orb/CustManager"
    boolean updatePrsnCust(
      in ::com::mcip::cus::orb::CustPrsn custprsnobj,
      in wstring cust_user_id
    )
    raises(
      ::com::mcip::orb::CoException
    );
  </pre>
  </p>
  */
  public boolean updatePrsnCust(
    com.mcip.cus.orb.CustPrsn custprsnobj,
    java.lang.String cust_user_id
  ) throws
    com.mcip.orb.CoException {
    org.omg.CORBA.portable.OutputStream _output;
    org.omg.CORBA.portable.InputStream _input;
    boolean _result;
    while(true) {
      _output = this._request("updatePrsnCust", true);
      com.mcip.cus.orb.CustPrsnHelper.write(_output, custprsnobj);
      _output.write_wstring(cust_user_id);
      org.omg.CORBA.StringHolder _exception_id = new org.omg.CORBA.StringHolder();
      try {
        _input = this._invoke(_output, _exception_id);
        if(_exception_id.value != null) {
          if(_exception_id.value.equals(com.mcip.orb.CoExceptionHelper.id())) {
            throw com.mcip.orb.CoExceptionHelper.read(_input);
          }
          throw new org.omg.CORBA.MARSHAL
            ("Unexpected User Exception: " + _exception_id.value);
        }
        _result = _input.read_boolean();
      }
      catch(org.omg.CORBA.TRANSIENT _exception) {
        continue;
      }
      break;
    }
    return _result;
  }
  /**
  <p>
  Operation: <b>::com::mcip::cus::orb::CustManager::updateEnttCust</b>.
  <pre>
    #pragma prefix "com/mcip/cus/orb/CustManager"
    boolean updateEnttCust(
      in ::com::mcip::cus::orb::CustEntity custentityobj
    )
    raises(
      ::com::mcip::orb::CoException
    );
  </pre>
  </p>
  */
  public boolean updateEnttCust(
    com.mcip.cus.orb.CustEntity custentityobj
  ) throws
    com.mcip.orb.CoException {
    org.omg.CORBA.portable.OutputStream _output;
    org.omg.CORBA.portable.InputStream _input;
    boolean _result;
    while(true) {
      _output = this._request("updateEnttCust", true);
      com.mcip.cus.orb.CustEntityHelper.write(_output, custentityobj);
      org.omg.CORBA.StringHolder _exception_id = new org.omg.CORBA.StringHolder();
      try {
        _input = this._invoke(_output, _exception_id);
        if(_exception_id.value != null) {
          if(_exception_id.value.equals(com.mcip.orb.CoExceptionHelper.id())) {
            throw com.mcip.orb.CoExceptionHelper.read(_input);
          }
          throw new org.omg.CORBA.MARSHAL
            ("Unexpected User Exception: " + _exception_id.value);
        }
        _result = _input.read_boolean();
      }
      catch(org.omg.CORBA.TRANSIENT _exception) {
        continue;
      }
      break;
    }
    return _result;
  }
  /**
  <p>
  Operation: <b>::com::mcip::cus::orb::CustManager::queryCustEntt</b>.
  <pre>
    #pragma prefix "com/mcip/cus/orb/CustManager"
    ::com::mcip::orb::Stringss queryCustEntt(
      in wstring in_account_info
    )
    raises(
      ::com::mcip::orb::CoException
    );
  </pre>
  </p>
  */
  public java.lang.String[][] queryCustEntt(
    java.lang.String in_account_info
  ) throws
    com.mcip.orb.CoException {
    org.omg.CORBA.portable.OutputStream _output;
    org.omg.CORBA.portable.InputStream _input;
    java.lang.String[][] _result;
    while(true) {
      _output = this._request("queryCustEntt", true);
      _output.write_wstring(in_account_info);
      org.omg.CORBA.StringHolder _exception_id = new org.omg.CORBA.StringHolder();
      try {
        _input = this._invoke(_output, _exception_id);
        if(_exception_id.value != null) {
          if(_exception_id.value.equals(com.mcip.orb.CoExceptionHelper.id())) {
            throw com.mcip.orb.CoExceptionHelper.read(_input);
          }
          throw new org.omg.CORBA.MARSHAL
            ("Unexpected User Exception: " + _exception_id.value);
        }
        _result = com.mcip.orb.StringssHelper.read(_input);
      }
      catch(org.omg.CORBA.TRANSIENT _exception) {
        continue;
      }
      break;
    }
    return _result;
  }
  /**
  <p>
  Operation: <b>::com::mcip::cus::orb::CustManager::queryCustOrgn</b>.
  <pre>
    #pragma prefix "com/mcip/cus/orb/CustManager"
    ::com::mcip::orb::Stringss queryCustOrgn(
      in wstring in_account_info
    )
    raises(
      ::com::mcip::orb::CoException
    );
  </pre>
  </p>
  */
  public java.lang.String[][] queryCustOrgn(
    java.lang.String in_account_info
  ) throws
    com.mcip.orb.CoException {
    org.omg.CORBA.portable.OutputStream _output;
    org.omg.CORBA.portable.InputStream _input;
    java.lang.String[][] _result;
    while(true) {
      _output = this._request("queryCustOrgn", true);
      _output.write_wstring(in_account_info);
      org.omg.CORBA.StringHolder _exception_id = new org.omg.CORBA.StringHolder();
      try {
        _input = this._invoke(_output, _exception_id);
        if(_exception_id.value != null) {
          if(_exception_id.value.equals(com.mcip.orb.CoExceptionHelper.id())) {
            throw com.mcip.orb.CoExceptionHelper.read(_input);
          }
          throw new org.omg.CORBA.MARSHAL
            ("Unexpected User Exception: " + _exception_id.value);
        }
        _result = com.mcip.orb.StringssHelper.read(_input);
      }
      catch(org.omg.CORBA.TRANSIENT _exception) {
        continue;
      }
      break;
    }
    return _result;
  }
  /**
  <p>
  Operation: <b>::com::mcip::cus::orb::CustManager::queryCustPrsn</b>.
  <pre>
    #pragma prefix "com/mcip/cus/orb/CustManager"
    ::com::mcip::orb::Stringss queryCustPrsn(
      in wstring in_account_info
    )
    raises(
      ::com::mcip::orb::CoException
    );
  </pre>
  </p>
  */
  public java.lang.String[][] queryCustPrsn(
    java.lang.String in_account_info
  ) throws
    com.mcip.orb.CoException {
    org.omg.CORBA.portable.OutputStream _output;
    org.omg.CORBA.portable.InputStream _input;
    java.lang.String[][] _result;
    while(true) {
      _output = this._request("queryCustPrsn", true);
      _output.write_wstring(in_account_info);
      org.omg.CORBA.StringHolder _exception_id = new org.omg.CORBA.StringHolder();
      try {
        _input = this._invoke(_output, _exception_id);
        if(_exception_id.value != null) {
          if(_exception_id.value.equals(com.mcip.orb.CoExceptionHelper.id())) {
            throw com.mcip.orb.CoExceptionHelper.read(_input);
          }
          throw new org.omg.CORBA.MARSHAL
            ("Unexpected User Exception: " + _exception_id.value);
        }
        _result = com.mcip.orb.StringssHelper.read(_input);
      }
      catch(org.omg.CORBA.TRANSIENT _exception) {
        continue;
      }
      break;
    }
    return _result;
  }
  /**
  <p>
  Operation: <b>::com::mcip::cus::orb::CustManager::queryCustAgnt</b>.
  <pre>
    #pragma prefix "com/mcip/cus/orb/CustManager"
    ::com::mcip::orb::Stringss queryCustAgnt(
      in wstring in_account_info
    )
    raises(
      ::com::mcip::orb::CoException
    );
  </pre>
  </p>
  */
  public java.lang.String[][] queryCustAgnt(
    java.lang.String in_account_info
  ) throws
    com.mcip.orb.CoException {
    org.omg.CORBA.portable.OutputStream _output;
    org.omg.CORBA.portable.InputStream _input;
    java.lang.String[][] _result;
    while(true) {
      _output = this._request("queryCustAgnt", true);
      _output.write_wstring(in_account_info);
      org.omg.CORBA.StringHolder _exception_id = new org.omg.CORBA.StringHolder();
      try {
        _input = this._invoke(_output, _exception_id);
        if(_exception_id.value != null) {
          if(_exception_id.value.equals(com.mcip.orb.CoExceptionHelper.id())) {
            throw com.mcip.orb.CoExceptionHelper.read(_input);
          }
          throw new org.omg.CORBA.MARSHAL
            ("Unexpected User Exception: " + _exception_id.value);
        }
        _result = com.mcip.orb.StringssHelper.read(_input);
      }
      catch(org.omg.CORBA.TRANSIENT _exception) {
        continue;
      }
      break;
    }
    return _result;
  }
  /**
  <p>
  Operation: <b>::com::mcip::cus::orb::CustManager::requireCust</b>.
  <pre>
    #pragma prefix "com/mcip/cus/orb/CustManager"
    ::com::mcip::orb::Stringss requireCust(
      in string in_user_mrk,
      in wstring in_user_id,
      in wstring in_register_id
    )
    raises(
      ::com::mcip::orb::CoException
    );
  </pre>
  </p>
  */
  public java.lang.String[][] requireCust(
    java.lang.String in_user_mrk,
    java.lang.String in_user_id,
    java.lang.String in_register_id
  ) throws
    com.mcip.orb.CoException {
    org.omg.CORBA.portable.OutputStream _output;
    org.omg.CORBA.portable.InputStream _input;
    java.lang.String[][] _result;
    while(true) {
      _output = this._request("requireCust", true);
      _output.write_string(in_user_mrk);
      _output.write_wstring(in_user_id);
      _output.write_wstring(in_register_id);
      org.omg.CORBA.StringHolder _exception_id = new org.omg.CORBA.StringHolder();
      try {
        _input = this._invoke(_output, _exception_id);
        if(_exception_id.value != null) {
          if(_exception_id.value.equals(com.mcip.orb.CoExceptionHelper.id())) {
            throw com.mcip.orb.CoExceptionHelper.read(_input);
          }
          throw new org.omg.CORBA.MARSHAL
            ("Unexpected User Exception: " + _exception_id.value);
        }
        _result = com.mcip.orb.StringssHelper.read(_input);
      }
      catch(org.omg.CORBA.TRANSIENT _exception) {
        continue;
      }
      break;
    }
    return _result;
  }
  /**
  <p>
  Operation: <b>::com::mcip::cus::orb::CustManager::checkProposal</b>.
  <pre>
    #pragma prefix "com/mcip/cus/orb/CustManager"
    boolean checkProposal(
      in wstring user_id,
      in string cust_type
    )
    raises(
      ::com::mcip::orb::CoException
    );
  </pre>
  </p>
  */
  public boolean checkProposal(
    java.lang.String user_id,
    java.lang.String cust_type
  ) throws
    com.mcip.orb.CoException {
    org.omg.CORBA.portable.OutputStream _output;
    org.omg.CORBA.portable.InputStream _input;
    boolean _result;
    while(true) {
      _output = this._request("checkProposal", true);
      _output.write_wstring(user_id);
      _output.write_string(cust_type);
      org.omg.CORBA.StringHolder _exception_id = new org.omg.CORBA.StringHolder();
      try {
        _input = this._invoke(_output, _exception_id);
        if(_exception_id.value != null) {
          if(_exception_id.value.equals(com.mcip.orb.CoExceptionHelper.id())) {
            throw com.mcip.orb.CoExceptionHelper.read(_input);
          }
          throw new org.omg.CORBA.MARSHAL
            ("Unexpected User Exception: " + _exception_id.value);
        }
        _result = _input.read_boolean();
      }
      catch(org.omg.CORBA.TRANSIENT _exception) {
        continue;
      }
      break;
    }
    return _result;
  }
  /**
  <p>
  Operation: <b>::com::mcip::cus::orb::CustManager::queryAgencyInfo</b>.
  <pre>
    #pragma prefix "com/mcip/cus/orb/CustManager"
    ::com::mcip::orb::Stringss queryAgencyInfo(
      in wstring in_agent_cde
    )
    raises(
      ::com::mcip::orb::CoException
    );
  </pre>
  </p>
  */
  public java.lang.String[][] queryAgencyInfo(
    java.lang.String in_agent_cde
  ) throws
    com.mcip.orb.CoException {
    org.omg.CORBA.portable.OutputStream _output;
    org.omg.CORBA.portable.InputStream _input;
    java.lang.String[][] _result;
    while(true) {
      _output = this._request("queryAgencyInfo", true);
      _output.write_wstring(in_agent_cde);
      org.omg.CORBA.StringHolder _exception_id = new org.omg.CORBA.StringHolder();
      try {
        _input = this._invoke(_output, _exception_id);
        if(_exception_id.value != null) {
          if(_exception_id.value.equals(com.mcip.orb.CoExceptionHelper.id())) {
            throw com.mcip.orb.CoExceptionHelper.read(_input);
          }
          throw new org.omg.CORBA.MARSHAL
            ("Unexpected User Exception: " + _exception_id.value);
        }
        _result = com.mcip.orb.StringssHelper.read(_input);
      }
      catch(org.omg.CORBA.TRANSIENT _exception) {
        continue;
      }
      break;
    }
    return _result;
  }
  /**
  <p>
  Operation: <b>::com::mcip::cus::orb::CustManager::queryOCcustInfo</b>.
  <pre>
    #pragma prefix "com/mcip/cus/orb/CustManager"
    ::com::mcip::orb::Stringss queryOCcustInfo(
      in wstring in_clnt_cde
    )
    raises(
      ::com::mcip::orb::CoException
    );
  </pre>
  </p>
  */
  public java.lang.String[][] queryOCcustInfo(
    java.lang.String in_clnt_cde
  ) throws
    com.mcip.orb.CoException {
    org.omg.CORBA.portable.OutputStream _output;
    org.omg.CORBA.portable.InputStream _input;
    java.lang.String[][] _result;
    while(true) {
      _output = this._request("queryOCcustInfo", true);
      _output.write_wstring(in_clnt_cde);
      org.omg.CORBA.StringHolder _exception_id = new org.omg.CORBA.StringHolder();
      try {
        _input = this._invoke(_output, _exception_id);
        if(_exception_id.value != null) {
          if(_exception_id.value.equals(com.mcip.orb.CoExceptionHelper.id())) {
            throw com.mcip.orb.CoExceptionHelper.read(_input);
          }
          throw new org.omg.CORBA.MARSHAL
            ("Unexpected User Exception: " + _exception_id.value);
        }
        _result = com.mcip.orb.StringssHelper.read(_input);
      }
      catch(org.omg.CORBA.TRANSIENT _exception) {
        continue;
      }
      break;
    }
    return _result;
  }
  /**
  <p>
  Operation: <b>::com::mcip::cus::orb::CustManager::acceptOCCust</b>.
  <pre>
    #pragma prefix "com/mcip/cus/orb/CustManager"
    boolean acceptOCCust(
      in string in_register_mrk,
      in ::com::mcip::cus::orb::CustOrgn custorgnobj,
      in ::com::mcip::cus::orb::CustEntity custentityobj
    )
    raises(
      ::com::mcip::orb::CoException
    );
  </pre>
  </p>
  */
  public boolean acceptOCCust(
    java.lang.String in_register_mrk,
    com.mcip.cus.orb.CustOrgn custorgnobj,
    com.mcip.cus.orb.CustEntity custentityobj
  ) throws
    com.mcip.orb.CoException {
    org.omg.CORBA.portable.OutputStream _output;
    org.omg.CORBA.portable.InputStream _input;
    boolean _result;
    while(true) {
      _output = this._request("acceptOCCust", true);
      _output.write_string(in_register_mrk);
      com.mcip.cus.orb.CustOrgnHelper.write(_output, custorgnobj);
      com.mcip.cus.orb.CustEntityHelper.write(_output, custentityobj);
      org.omg.CORBA.StringHolder _exception_id = new org.omg.CORBA.StringHolder();
      try {
        _input = this._invoke(_output, _exception_id);
        if(_exception_id.value != null) {
          if(_exception_id.value.equals(com.mcip.orb.CoExceptionHelper.id())) {
            throw com.mcip.orb.CoExceptionHelper.read(_input);
          }
          throw new org.omg.CORBA.MARSHAL
            ("Unexpected User Exception: " + _exception_id.value);
        }
        _result = _input.read_boolean();
      }
      catch(org.omg.CORBA.TRANSIENT _exception) {
        continue;
      }
      break;
    }
    return _result;
  }
  /**
  <p>
  Operation: <b>::com::mcip::cus::orb::CustManager::acceptAGCust</b>.
  <pre>
    #pragma prefix "com/mcip/cus/orb/CustManager"
    boolean acceptAGCust(
      in string in_register_mrk,
      in ::com::mcip::cus::orb::CustOrgn custorgnobj,
      in ::com::mcip::cus::orb::CustEntity custentityobj
    )
    raises(
      ::com::mcip::orb::CoException
    );
  </pre>
  </p>
  */
  public boolean acceptAGCust(
    java.lang.String in_register_mrk,
    com.mcip.cus.orb.CustOrgn custorgnobj,
    com.mcip.cus.orb.CustEntity custentityobj
  ) throws
    com.mcip.orb.CoException {
    org.omg.CORBA.portable.OutputStream _output;
    org.omg.CORBA.portable.InputStream _input;
    boolean _result;
    while(true) {
      _output = this._request("acceptAGCust", true);
      _output.write_string(in_register_mrk);
      com.mcip.cus.orb.CustOrgnHelper.write(_output, custorgnobj);
      com.mcip.cus.orb.CustEntityHelper.write(_output, custentityobj);
      org.omg.CORBA.StringHolder _exception_id = new org.omg.CORBA.StringHolder();
      try {
        _input = this._invoke(_output, _exception_id);
        if(_exception_id.value != null) {
          if(_exception_id.value.equals(com.mcip.orb.CoExceptionHelper.id())) {
            throw com.mcip.orb.CoExceptionHelper.read(_input);
          }
          throw new org.omg.CORBA.MARSHAL
            ("Unexpected User Exception: " + _exception_id.value);
        }
        _result = _input.read_boolean();
      }
      catch(org.omg.CORBA.TRANSIENT _exception) {
        continue;
      }
      break;
    }
    return _result;
  }
}
