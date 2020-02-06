package ocs;

import java.io.Serializable;

public class Ocs_Bean implements Serializable{

	private static final long serialVersionUID = 1L;
	private String name;

	//Constructor
	public Ocs_Bean() {

	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return this.name;
	}
}
