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
    private String phone_number;
    private String password;

    public UserBean() {

    }

    public UserBean(String user_id, String name1,String name2,String name3,String zip31,String zip32,
    		String pref31,String addr31,String phone_number,String password) {
        this.user_id = user_id;
        this.name1 = name1;
        this.name2 = name2;
        this.name3 = name3;
        this.zip31 = zip31;
        this.zip32 = zip32;
        this.pref31 = pref31;
        this.addr31 = addr31;
        this.phone_number = phone_number;
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

    public String getPostal_code1() {
    	return postal_code1;
    }

    public void setPostal_code1(String postal_code1) {
    	this.postal_code1 = postal_code1;
    }

    public String getPostal_code2() {
    	return postal_code2;
    }

    public void setPostal_code2(String postal_code2) {
    	this.postal_code2 = postal_code2;
    }

    public String getPrefecures() {
    	return prefecures;
    }

    public void setPrefecures(String prefecures) {
    	this.prefecures = prefecures;
    }

    public String getAddress() {
    	return address;
    }

    public void setAddress(String address) {
    	this.address = address;
    }

    public String getPhone_number() {
    	return phone_number;
    }


    public void setPhone_number(String phone_number) {
    	this.phone_number = phone_number;
    }



    public String getPassword() {
        return password;
    }

    public void setPass(String password) {
        this.password = password;
    }

}
