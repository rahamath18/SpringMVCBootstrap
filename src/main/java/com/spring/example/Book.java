package com.spring.example;

import java.io.Serializable;

public class Book implements Serializable {
	
	private int id;  
	private String bookName;
	private Double price;
	
	public int getId() {  
	    return id;  
	}  
	public void setId(int id) {  
	    this.id = id;  
	}  
	
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		return this.bookName + "/" + this.price + ", "; 
	}
}