package kr.co.vo;

public class postVO {
	private int post_no;
	private String post_id;
	private String post_content;
	private String post_photo1;
	private String post_photo2;
	private String reg_date;
	private int ref;
	private int re_step;
	private int re_level;
	private int like_count;
	
	public String getPost_content() {
		return post_content;
	}
	public void setPost_content(String post_content) {
		this.post_content = post_content;
	}
	public String getPost_photo2() {
		return post_photo2;
	}
	public void setPost_photo2(String post_photo2) {
		this.post_photo2 = post_photo2;
	}
	public int getPost_no() {
		return post_no;
	}
	public void setPost_no(int post_no) {
		this.post_no = post_no;
	}
	public String getPost_id() {
		return post_id;
	}
	public void setPost_id(String post_id) {
		this.post_id = post_id;
	}
	public String getPost_photo1() {
		return post_photo1;
	}
	public void setPost_photo1(String post_photo1) {
		this.post_photo1 = post_photo1;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getRe_step() {
		return re_step;
	}
	public void setRe_step(int re_step) {
		this.re_step = re_step;
	}
	public int getRe_level() {
		return re_level;
	}
	public void setRe_level(int re_level) {
		this.re_level = re_level;
	}
	public int getLike_count() {
		return like_count;
	}
	public void setLike_count(int like_count) {
		this.like_count = like_count;
	}
}
