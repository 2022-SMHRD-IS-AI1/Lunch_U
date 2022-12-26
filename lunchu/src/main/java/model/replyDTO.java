package model;

import java.util.Date;

public class replyDTO {
	
	
	private int rv_seq;//리뷰번호
	
	private int rest_seq;//식당번호
	
	private String mem_id;//작성자아이디

	private Date rv_dt;//작성날짜
	
	private String rv_content;//리플내용
	
	private double rv_rating;//평점

	public int getRv_seq() {
		return rv_seq;
	}

	public void setRv_seq(int rv_seq) {
		this.rv_seq = rv_seq;
	}

	public int getRest_seq() {
		return rest_seq;
	}

	public void setRest_seq(int rest_seq) {
		this.rest_seq = rest_seq;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public Date getRv_dt() {
		return rv_dt;
	}

	public void setRv_dt(Date rc_dt) {
		this.rv_dt = rc_dt;
	}

	public String getRv_content() {
		return rv_content;
	}

	public void setRv_content(String rv_content) {
		this.rv_content = rv_content;
	}

	public double getRv_rating() {
		return rv_rating;
	}

	public void setRv_rating(double rv_rating) {
		this.rv_rating = rv_rating;
	}

	@Override
	public String toString() {
		return "replyDTO [rv_seq=" + rv_seq + ", rest_seq=" + rest_seq + ", mem_id=" + mem_id + ", rv_dt=" + rv_dt
				+ ", rv_content=" + rv_content + ", rv_rating=" + rv_rating + "]";
	}
	
	
	
	
}
