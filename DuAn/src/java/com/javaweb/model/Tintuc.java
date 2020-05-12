package com.javaweb.model;
// Generated Dec 17, 2016 5:50:55 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Tintuc generated by hbm2java
 */
public class Tintuc  implements java.io.Serializable {


     private Integer idTinTuc;
     private Loaitintuc loaitintuc;
     private Users users;
     private String tieuDe;
     private Date ngayDang;
     private String noiDung;
     private String tomTatTin;
     private byte[] linkTin;
     private String image;
     private Set<Binhluantintuc> binhluantintucs = new HashSet<Binhluantintuc>(0);

    public Tintuc() {
    }

	
    public Tintuc(Loaitintuc loaitintuc, String tieuDe, Date ngayDang, String noiDung, String tomTatTin) {
        this.loaitintuc = loaitintuc;
        this.tieuDe = tieuDe;
        this.ngayDang = ngayDang;
        this.noiDung = noiDung;
        this.tomTatTin = tomTatTin;
    }
    public Tintuc(Loaitintuc loaitintuc, Users users, String tieuDe, Date ngayDang, String noiDung, String tomTatTin, byte[] linkTin, String image, Set<Binhluantintuc> binhluantintucs) {
       this.loaitintuc = loaitintuc;
       this.users = users;
       this.tieuDe = tieuDe;
       this.ngayDang = ngayDang;
       this.noiDung = noiDung;
       this.tomTatTin = tomTatTin;
       this.linkTin = linkTin;
       this.image = image;
       this.binhluantintucs = binhluantintucs;
    }
   
    public Integer getIdTinTuc() {
        return this.idTinTuc;
    }
    
    public void setIdTinTuc(Integer idTinTuc) {
        this.idTinTuc = idTinTuc;
    }
    public Loaitintuc getLoaitintuc() {
        return this.loaitintuc;
    }
    
    public void setLoaitintuc(Loaitintuc loaitintuc) {
        this.loaitintuc = loaitintuc;
    }
    public Users getUsers() {
        return this.users;
    }
    
    public void setUsers(Users users) {
        this.users = users;
    }
    public String getTieuDe() {
        return this.tieuDe;
    }
    
    public void setTieuDe(String tieuDe) {
        this.tieuDe = tieuDe;
    }
    public Date getNgayDang() {
        return this.ngayDang;
    }
    
    public void setNgayDang(Date ngayDang) {
        this.ngayDang = ngayDang;
    }
    public String getNoiDung() {
        return this.noiDung;
    }
    
    public void setNoiDung(String noiDung) {
        this.noiDung = noiDung;
    }
    public String getTomTatTin() {
        return this.tomTatTin;
    }
    
    public void setTomTatTin(String tomTatTin) {
        this.tomTatTin = tomTatTin;
    }
    public byte[] getLinkTin() {
        return this.linkTin;
    }
    
    public void setLinkTin(byte[] linkTin) {
        this.linkTin = linkTin;
    }
    public String getImage() {
        return this.image;
    }
    
    public void setImage(String image) {
        this.image = image;
    }
    public Set<Binhluantintuc> getBinhluantintucs() {
        return this.binhluantintucs;
    }
    
    public void setBinhluantintucs(Set<Binhluantintuc> binhluantintucs) {
        this.binhluantintucs = binhluantintucs;
    }




}


