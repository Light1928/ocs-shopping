package ocs;

import java.io.Serializable;

public class CartRecord_Bean  implements Serializable{

	private String goodsname;
	private int price;
	private int quantity;
	
	//constructor
	public CartRecord_Bean() {
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	
	public String getGoodsname() {
		return this.goodsname;
	}
	
	public void setPrice(int price) {
		this.price = price;
	}
	
	public int getPrice() {
		return this.price;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public int getQuantity() {
		return this.quantity;
	}
}

