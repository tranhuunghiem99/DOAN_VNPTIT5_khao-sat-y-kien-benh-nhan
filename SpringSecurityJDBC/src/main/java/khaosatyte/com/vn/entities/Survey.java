package khaosatyte.com.vn.entities;

public class Survey {
	private int id;
	private int id_kq;
	private int id_nguuoiks;
	private int loaikhaosat;
	private int loai;
	private String question;
	private int maloai;
	private String name;
	private String times;
	private String tenbenhnhan;
	private String mabh;
	private String tenbenhvien;
	private int dapanradio;
	private int maloai_ks;
	public Survey() {
		super();
	}
	public Survey(int id, int id_kq, int id_nguuoiks, int loaikhaosat, int loai, String question, int maloai,
			String name, String times, String tenbenhnhan, String mabh, String tenbenhvien, int dapanradio,
			int maloai_ks) {
		super();
		this.id = id;
		this.id_kq = id_kq;
		this.id_nguuoiks = id_nguuoiks;
		this.loaikhaosat = loaikhaosat;
		this.loai = loai;
		this.question = question;
		this.maloai = maloai;
		this.name = name;
		this.times = times;
		this.tenbenhnhan = tenbenhnhan;
		this.mabh = mabh;
		this.tenbenhvien = tenbenhvien;
		this.dapanradio = dapanradio;
		this.maloai_ks = maloai_ks;
	}
	@Override
	public String toString() {
		return "Survey [id=" + id + ", id_kq=" + id_kq + ", id_nguuoiks=" + id_nguuoiks + ", loaikhaosat=" + loaikhaosat
				+ ", loai=" + loai + ", question=" + question + ", maloai=" + maloai + ", name=" + name + ", times="
				+ times + ", tenbenhnhan=" + tenbenhnhan + ", mabh=" + mabh + ", tenbenhvien=" + tenbenhvien
				+ ", dapanradio=" + dapanradio + ", maloai_ks=" + maloai_ks + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_kq() {
		return id_kq;
	}
	public void setId_kq(int id_kq) {
		this.id_kq = id_kq;
	}
	public int getId_nguuoiks() {
		return id_nguuoiks;
	}
	public void setId_nguuoiks(int id_nguuoiks) {
		this.id_nguuoiks = id_nguuoiks;
	}
	public int getLoaikhaosat() {
		return loaikhaosat;
	}
	public void setLoaikhaosat(int loaikhaosat) {
		this.loaikhaosat = loaikhaosat;
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
	public String getTimes() {
		return times;
	}
	public void setTimes(String times) {
		this.times = times;
	}
	public String getTenbenhnhan() {
		return tenbenhnhan;
	}
	public void setTenbenhnhan(String tenbenhnhan) {
		this.tenbenhnhan = tenbenhnhan;
	}
	public String getMabh() {
		return mabh;
	}
	public void setMabh(String mabh) {
		this.mabh = mabh;
	}
	public String getTenbenhvien() {
		return tenbenhvien;
	}
	public void setTenbenhvien(String tenbenhvien) {
		this.tenbenhvien = tenbenhvien;
	}
	public int getDapanradio() {
		return dapanradio;
	}
	public void setDapanradio(int dapanradio) {
		this.dapanradio = dapanradio;
	}
	public int getMaloai_ks() {
		return maloai_ks;
	}
	public void setMaloai_ks(int maloai_ks) {
		this.maloai_ks = maloai_ks;
	}
	
	
	
}