package com.javaweb.model;
// Generated Dec 17, 2016 5:50:55 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Donhangla generated by hbm2java
 */
public class Donhangla  implements java.io.Serializable {


     private Integer iddonhangla;
     private String hoTen;
     private String email;
     private String diaChi;
     private String dienThoai;
     private Date ngayTao;
     private double tongTien;
     private Integer ghiChu;

    public Donhangla() {
    }

	
    public Donhangla(String email, String diaChi, String dienThoai, Date ngayTao, double tongTien) {
        this.email = email;
        this.diaChi = diaChi;
        this.dienThoai = dienThoai;
        this.ngayTao = ngayTao;
        this.tongTien = tongTien;
    }
    public Donhangla(String hoTen, String email, String diaChi, String dienThoai, Date ngayTao, double tongTien, Integer ghiChu) {
       this.hoTen = hoTen;
       this.email = email;
       this.diaChi = diaChi;
       this.dienThoai = dienThoai;
       this.ngayTao = ngayTao;
       this.tongTien = tongTien;
       this.ghiChu = ghiChu;
    }
   
    public Integer getIddonhangla() {
        return this.iddonhangla;
    }
    
    public void setIddonhangla(Integer iddonhangla) {
        this.iddonhangla = iddonhangla;
    }
    public String getHoTen() {
        return this.hoTen;
    }
    
    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getDiaChi() {
        return this.diaChi;
    }
    
    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }
    public String getDienThoai() {
        return this.dienThoai;
    }
    
    public void setDienThoai(String dienThoai) {
        this.dienThoai = dienThoai;
    }
    public Date getNgayTao() {
        return this.ngayTao;
    }
    
    public void setNgayTao(Date ngayTao) {
        this.ngayTao = ngayTao;
    }
    public double getTongTien() {
        return this.tongTien;
    }
    
    public void setTongTien(double tongTien) {
        this.tongTien = tongTien;
    }
    public Integer getGhiChu() {
        return this.ghiChu;
    }
    
    public void setGhiChu(Integer ghiChu) {
        this.ghiChu = ghiChu;
    }




}


