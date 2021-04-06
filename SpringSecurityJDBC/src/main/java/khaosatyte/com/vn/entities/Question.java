package khaosatyte.com.vn.entities;

public class Question {
	private int id;
	private int loai;
	private String question;
	private int maloai;
	private String name;
	
	
	public Question() {
		super();
	}

	public Question(int id, int loai, String question, int maloai, String name) {
		super();
		this.id = id;
		this.loai = loai;
		this.question = question;
		this.maloai = maloai;
		this.name = name;
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getLoai() {
		return loai;
	}

	public void setLoai(int loai) {
		this.loai = loai;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public int getMaloai() {
		return maloai;
	}

	public void setMaloai(int maloai) {
		this.maloai = maloai;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}







}
