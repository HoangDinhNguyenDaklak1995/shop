/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaweb.service;

import com.javaweb.hibernate.util.NewHibernateUtil;
import com.javaweb.model.Loaisanpham;
import com.javaweb.model.Sanpham;
import com.javaweb.model.Users;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author PhuocDanh
 */
public class SanphamService {
    
    public boolean InsertProduct(Sanpham sp){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        
        try {
            tx = session.getTransaction();
            tx.begin();
            session.saveOrUpdate(sp);
            tx.commit();
            return true;
        } catch (Exception e) {
            if(tx != null){
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally{
            session.close();
        }
        return false;
    }
    
    public boolean DeleteProduct(Sanpham sp){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        
        try {
            tx = session.getTransaction();
            tx.begin();
            
            session.delete(sp);
            tx.commit();
            return true;
        } catch (Exception e) {
            if(tx != null){
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally{
            session.close();
        }
        return false;
    }
    
    
    
    public ArrayList<Sanpham> GetAllSanpham(int IdMunuCha, int soluong) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList<Sanpham> ListSanPham = new ArrayList<>();
        try {
            tx = session.getTransaction();
            tx.begin();
            String strquery = "from Sanpham where IdLoaiSanPham in (from Loaisanpham where Idparent=" + IdMunuCha + ") order by IdSanpham Desc";

            Query query = session.createQuery(strquery);
            query.setMaxResults(soluong);
            ListSanPham = (ArrayList<Sanpham>) query.list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return ListSanPham;
    }

    public ArrayList<Sanpham> GetAllSanphamTheoLoai(int id) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList<Sanpham> ListSanPham = new ArrayList<>();
        try {
            tx = session.getTransaction();
            tx.begin();
            String strquery = "from Sanpham where IdLoaiSanPham=" + id;
            Query query = session.createQuery(strquery);
            ListSanPham = (ArrayList<Sanpham>) query.list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return ListSanPham;
    }

    public Sanpham GetSanPhamTheoId(int IdSanpham) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            tx.commit();
            String strquery = "from Sanpham where IdSanPham=" + IdSanpham;
            Query query = session.createQuery(strquery);
            Sanpham sp = (Sanpham) query.uniqueResult();
            return sp;
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
    public ArrayList<Sanpham> TimKiemSanPham(String timkiem) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList<Sanpham> ListSanPham = new ArrayList<>();
        try {
            tx = session.getTransaction();
            tx.begin();
            String strquery = "from Sanpham where TenSanPham like '%"+timkiem+"%'";
            Query query = session.createQuery(strquery);
            ListSanPham = (ArrayList<Sanpham>) query.list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return ListSanPham;
    }
    public boolean DeleteAllSP(int idsanpham) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;

        try {
            tx = session.getTransaction();
            tx.begin();
            Sanpham sp = new Sanpham();
            sp.setIdSanPham(idsanpham);
            session.delete(sp);
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
