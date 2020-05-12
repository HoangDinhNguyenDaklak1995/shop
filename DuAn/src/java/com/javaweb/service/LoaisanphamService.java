/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaweb.service;

import com.javaweb.hibernate.util.NewHibernateUtil;
import com.javaweb.model.Loaisanpham;
import com.javaweb.model.Sanpham;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author PhuocDanh
 */
public class LoaisanphamService {

    public ArrayList<Loaisanpham> GetAllLoaisanpham(int idparent) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList<Loaisanpham> ListLoaSanPham = new ArrayList<>();
        try {
            tx = session.getTransaction();
            tx.begin();
            String strquery = "from Loaisanpham where Idparent=" + idparent;
            Query query = session.createQuery(strquery);

            ListLoaSanPham = (ArrayList<Loaisanpham>) query.list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return ListLoaSanPham;
    }
    public Loaisanpham GetLoaiSanPhamTheoId(int idloaisanpham) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            tx.commit();
            String strquery = "from Loaisanpham where IdLoaiSanPham="+idloaisanpham;
            Query query = session.createQuery(strquery);
            Loaisanpham LSP = (Loaisanpham) query.uniqueResult();
            return LSP;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return null;
    }
    
    public ArrayList<Loaisanpham> GetDanhMucLoaisanpham() {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList<Loaisanpham> ListLoaSanPham = new ArrayList<>();
        try {
            tx = session.getTransaction();
            tx.begin();
            String strquery = "from Loaisanpham where IdParent > 0";
            Query query = session.createQuery(strquery);

            ListLoaSanPham = (ArrayList<Loaisanpham>) query.list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return ListLoaSanPham;
    }
}
