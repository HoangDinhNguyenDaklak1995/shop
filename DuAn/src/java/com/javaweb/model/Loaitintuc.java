package com.javaweb.model;
// Generated Dec 17, 2016 5:50:55 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Loaitintuc generated by hbm2java
 */
public class Loaitintuc  implements java.io.Serializable {


     private Integer idLoaiTinTuc;
     private String tenLoaiTinTuc;
     private String moTa;
     private Set<Tintuc> tintucs = new HashSet<Tintuc>(0);

    public Loaitintuc() {
    }

	
    public Loaitintuc(String tenLoaiTinTuc, String moTa) {
        this.tenLoaiTinTuc = tenLoaiTinTuc;
        this.moTa = moTa;
    }
    public Loaitintuc(String tenLoaiTinTuc, String moTa, Set<Tintuc> tintucs) {
       this.tenLoaiTinTuc = tenLoaiTinTuc;
       this.moTa = moTa;
       this.tintucs = tintucs;
    }
   
    public Integer getIdLoaiTinTuc() {
        return this.idLoaiTinTuc;
    }
    
    public void setIdLoaiTinTuc(Integer idLoaiTinTuc) {
        this.idLoaiTinTuc = idLoaiTinTuc;
    }
    public String getTenLoaiTinTuc() {
        return this.tenLoaiTinTuc;
    }
    
    public void setTenLoaiTinTuc(String tenLoaiTinTuc) {
        this.tenLoaiTinTuc = tenLoaiTinTuc;
    }
    public String getMoTa() {
        return this.moTa;
    }
    
    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }
    public Set<Tintuc> getTintucs() {
        return this.tintucs;
    }
    
    public void setTintucs(Set<Tintuc> tintucs) {
        this.tintucs = tintucs;
    }




}

