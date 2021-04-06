package khaosatyte.com.vn.entities;

public class Form {
private int id;
private int loaikhaosat;
private int cautraloi;
private String tenbenhnhan;
private String mabh;
private String tenbenhvien;
private String ngay;


public Form() {
	super();
}


public Form(int id, int loaikhaosat, int cautraloi, String tenbenhnhan, String mabh, String tenbenhvien, String ngay) {
	super();
	this.id = id;
	this.loaikhaosat = loaikhaosat;
	this.cautraloi = cautraloi;
	this.tenbenhnhan = tenbenhnhan;
	this.mabh = mabh;
	this.tenbenhvien = tenbenhvien;
	this.ngay = ngay;
}


@Override
public String toString() {
	return "Form [id=" + id + ", loaikhaosat=" + loaikhaosat + ", cautraloi=" + cautraloi + ", tenbenhnhan="
			+ tenbenhnhan + ", mabh=" + mabh + ", tenbenhvien=" + tenbenhvien + ", ngay=" + ngay + "]";
}


public int getId() {
	return id;
}


public void setId(int id) {
	this.id = id;
}


public int getLoaikhaosat() {
	return loaikhaosat;
}


public void setLoaikhaosat(int loaikhaosat) {
	this.loaikhaosat = loaikhaosat;
}


public int getCautraloi() {
	return cautraloi;
}


public void setCautraloi(int cautraloi) {
	this.cautraloi = cautraloi;
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


public String getNgay() {
	return ngay;
}


public void setNgay(String ngay) {
	this.ngay = ngay;
}


}
