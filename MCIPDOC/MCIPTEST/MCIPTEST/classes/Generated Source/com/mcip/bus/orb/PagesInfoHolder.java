package com.mcip.bus.orb;

/**
 * <ul>
 * <li> <b>IDL Source</b>    "D:/Kevin/MCIPDOC/MCIPTEST/MCIPTEST/src/IDL/businessInfoStruct.idl"
 * <li> <b>IDL Name</b>      ::com::mcip::bus::orb::PagesInfo
 * <li> <b>Repository Id</b> IDL:com/mcip/bus/orb/PagesInfo:1.0
 * </ul>
 * <b>IDL definition:</b>
 * <pre>
 * struct PagesInfo {
  ...
};
 * </pre>
 */
public final class PagesInfoHolder implements org.omg.CORBA.portable.Streamable {
  public com.mcip.bus.orb.PagesInfo value;

  public PagesInfoHolder () {
  }

  public PagesInfoHolder (final com.mcip.bus.orb.PagesInfo _vis_value) {
    this.value = _vis_value;
  }

  public void _read (final org.omg.CORBA.portable.InputStream input) {
    value = com.mcip.bus.orb.PagesInfoHelper.read(input);
  }

  public void _write (final org.omg.CORBA.portable.OutputStream output) {
    com.mcip.bus.orb.PagesInfoHelper.write(output, value);
  }

  public org.omg.CORBA.TypeCode _type () {
    return com.mcip.bus.orb.PagesInfoHelper.type();
  }
}
