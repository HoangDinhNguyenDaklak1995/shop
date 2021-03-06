package com.javaweb.model;
// Generated Dec 17, 2016 5:50:55 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Binhluansanpham generated by hbm2java
 */
public class Binhluansanpham  implements java.io.Serializable {


     private Integer idBinhLuanSanPham;
     private Sanpham sanpham;
     private Users users;
     private String noiDung;
     private Date ngayBinhLuan;

    public Binhluansanpham() {
    }

    public Binhluansanpham(Sanpham sanpham, Users users, String noiDung, Date ngayBinhLuan) {
       this.sanpham = sanpham;
       this.users = users;
       this.noiDung = noiDung;
       this.ngayBinhLuan = ngayBinhLuan;
    }
   
    public Integer getIdBinhLuanSanPham() {
        return this.idBinhLuanSanPham;
    }
    
    public void setIdBinhLuanSanPham(Integer idBinhLuanSanPham) {
        this.idBinhLuanSanPham = idBinhLuanSanPham;
    }
    public Sanpham getSanpham() {
        return this.sanpham;
    }
    
    public void setSanpham(Sanpham sanpham) {
        this.sanpham = sanpham;
    }
    public Users getUsers() {
        return this.users;
    }
    
    public void setUsers(Users users) {
        this.users = users;
    }
    public String getNoiDung() {
        return this.noiDung;
    }
    
    public void setNoiDung(String noiDung) {
        this.noiDung = noiDung;
    }
    public Date getNgayBinhLuan() {
        return this.ngayBinhLuan;
    }
    
    public void setNgayBinhLuan(Date ngayBinhLuan) {
        this.ngayBinhLuan = ngayBinhLuan;
    }




}


