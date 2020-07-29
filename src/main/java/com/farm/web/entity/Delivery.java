package com.farm.web.entity;

public class Delivery {
	private int id;
	private String name;
	private int phone;
	
	public Delivery() {
		// TODO Auto-generated constructor stub
	}

	public Delivery(int id, String name, int phone) {
		super();
		this.id = id;
		this.name = name;
		this.phone = phone;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "Delivery [id=" + id + ", name=" + name + ", phone=" + phone + "]";
	}
	
	
	
}
