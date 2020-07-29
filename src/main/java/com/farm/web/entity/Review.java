package com.farm.web.entity;

import java.util.Date;

public class Review {
	private int id; 
	private int writerId;
	private int itemId; 
	private String title; 
	private String content; 
	private int hit;
	private int rate; 
	private Date regDate; 
	private int like;
	
	public Review() {
		// TODO Auto-generated constructor stub
	}

	public Review(int id, int writerId, int itemId, String title, String content, int hit, int rate, Date regDate,
			int like) {
		super();
		this.id = id;
		this.writerId = writerId;
		this.itemId = itemId;
		this.title = title;
		this.content = content;
		this.hit = hit;
		this.rate = rate;
		this.regDate = regDate;
		this.like = like;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getWriterId() {
		return writerId;
	}

	public void setWriterId(int writerId) {
		this.writerId = writerId;
	}

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public int getRate() {
		return rate;
	}

	public void setRate(int rate) {
		this.rate = rate;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getLike() {
		return like;
	}

	public void setLike(int like) {
		this.like = like;
	}

	@Override
	public String toString() {
		return "Review [id=" + id + ", writerId=" + writerId + ", itemId=" + itemId + ", title=" + title + ", content="
				+ content + ", hit=" + hit + ", rate=" + rate + ", regDate=" + regDate + ", like=" + like + "]";
	}
	
	
}
