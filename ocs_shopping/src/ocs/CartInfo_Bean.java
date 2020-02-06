package ocs;

import java.io.Serializable;
import java.util.ArrayList;

public class CartInfo_Bean implements Serializable {
	
	private ArrayList<Ocs_Bean> CartInfoArray = new ArrayList<Ocs_Bean>();
	
	//constructor
	public CartInfo_Bean() {
		
	}
	
	public ArrayList<Ocs_Bean> getCartlistArray(){
		return CartInfoArray;
	}
	
	public void addCartlist(Ocs_Bean obj) {
		CartInfoArray.add(obj);
	}
}
