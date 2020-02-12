package ocs;

import java.io.Serializable;

public class UserBean implements Serializable {
    private String user_id;
    private String name1;
    private String name2;
    private String name3;
    private String zip31;
    private String zip32;
    private String pref31;
    private String addr31;
    private String phoneNo;
    private String mail_address;
    private String password;

    public UserBean() {

    }

    public UserBean(String user_id, String name1,String name2,String name3,String zip31,String zip32,
    		String pref31,String addr31,String phoneNo,String mail_address,String password) {
        this.user_id = user_id;
        this.name1 = name1;
        this.name2 = name2;
        this.name3 = name3;
        this.zip31 = zip31;
        this.zip32 = zip32;
        this.pref31 = pref31;
        this.addr31 = addr31;
        this.phoneNo = phoneNo;
        this.mail_address = mail_address;
        this.password = password;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getName1() {
        return name1;
    }

    public void setName1(String name1) {
    	this.name1 = name1;
    }

    public String getName2() {
    	return name2;
    }

    public void setName2(String name2) {
    	this.name2 = name2;
    }

    public String getName3() {
    	return name3;
    }

    public void setName3(String name3) {
    	this.name3 = name3;
    }

    public String getZip31() {
    	return zip31;
    }

    public void setPostal_code1(String zip31) {
    	this.zip31 = zip31;
    }

    public String getZip32() {
    	return zip32;
    }

    public void setZip32(String zip32) {
    	this.zip32 = zip32;
    }

    public String getPref31() {
    	return pref31;
    }

    public void setPrefecures(String pref31) {
    	this.pref31 = pref31;
    }

    public String getAddr31() {
    	return addr31;
    }

    public void setAddr31(String addr31) {
    	this.addr31 = addr31;
    }

    public String getPhoneNo() {
    	return phoneNo;
    }


    public void setPhoneNo(String phoneNo) {
    	this.phoneNo = phoneNo;
    }

    public String getMail_address() {
    	return mail_address;
    }

    public void setMail_address(String mail_address) {
    	this.mail_address = mail_address;
    }

    public String getPassword() {
        return password;
    }

    public void setPass(String password) {
        this.password = password;
    }

}
