/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaweb.service;

import com.javaweb.hibernate.util.NewHibernateUtil;
import com.javaweb.model.Binhluansanpham;
import com.javaweb.model.Sanpham;
import com.javaweb.model.Users;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Administrator
 */
public class BinhLuanSanPhamService {
    public ArrayList<Binhluansanpham> GetAllBinhLuanTheoIdSanPham(String idsanpham) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList<Binhluansanpham> ListBinhLuan = new ArrayList<>();
        try {
            tx = session.getTransaction();
            tx.begin();
            String strquery = "from Binhluansanpham where Idsanpham="+idsanpham;
            Query query = session.createQuery(strquery);
            ListBinhLuan = (ArrayList<Binhluansanpham>) query.list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return ListBinhLuan;
    }
    
    public boolean ThemBinhLuanSanPham(Binhluansanpham binhluansp) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            session.saveOrUpdate(binhluansp);
            tx.commit();
            return true;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return false;
    }
}
