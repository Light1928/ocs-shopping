package ocs;

import java.io.Serializable;
import java.util.ArrayList;

public class CartInfoBean implements Serializable {
	
	private ArrayList<CartRecordBean> CartInfoArray = new ArrayList<CartRecordBean>();
	
	//constructor
	public CartInfoBean() {
		
	}
	
	public ArrayList<CartRecordBean> getCartlistArray(){
		return CartInfoArray;
	}
	
	public void addCartlist(CartRecordBean obj) {
		CartInfoArray.add(obj);
	}

}
