/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaweb.service;

import java.util.ArrayList;

/**
 *
 * @author PhuocDanh
 */
public class GioHang {

    String MaSP;
    String SoLuong;

    public String getMaSP() {
        return MaSP;
    }

    public void setMaSP(String MaSP) {
        this.MaSP = MaSP;
    }

    public String getSoLuong() {
        return SoLuong;
    }

    public void setSoLuong(String SoLuong) {
        this.SoLuong = SoLuong;
    }

    public GioHang() {
    }

    public GioHang(String MaSP, String SoLuong) {
        this.MaSP = MaSP;
        this.SoLuong = SoLuong;
    }

    public static void ThemVaoGioHang(ArrayList<GioHang> lst, String maSP, int soLuong) {
        boolean newItem = true;
        for (int i = 0; i < lst.size(); i++) {
            GioHang item = lst.get(i);
            if (item.getMaSP().equalsIgnoreCase(maSP)) {
                if (soLuong == -1) {
                    soLuong = Integer.parseInt(item.getSoLuong()) + 1;
                }

                item.setSoLuong(soLuong + "");

                newItem = false;
            }
        }

        if (newItem) {
            GioHang gh = new GioHang(maSP, "1");
            lst.add(gh);
        }
    }

    public static void XoaTuGioHang(ArrayList<GioHang> lst, String maSP) {
        for (int i = 0; i < lst.size(); i++) {
            GioHang item = lst.get(i);
            if (item.getMaSP().equalsIgnoreCase(maSP)) {
                lst.remove(item);
            }
        }
    }
}
