package ocs;

import java.io.Serializable;

public class Ocs_Bean implements Serializable{

	private static final long serialVersionUID = 1L;
	private String name;
	private String goodsname;
	private int price;
	private int quantity;
	//Constructor
	public Ocs_Bean() {

	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return this.name;
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

