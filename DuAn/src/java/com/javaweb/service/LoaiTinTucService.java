/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaweb.service;

import com.javaweb.hibernate.util.NewHibernateUtil;
import com.javaweb.model.Loaitintuc;
import com.javaweb.model.Sanpham;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author PhuocDanh
 */
public class LoaiTinTucService {

    public ArrayList<Loaitintuc> GetAllLoaiTinTuc() {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList<Loaitintuc> ListLoaiTinTuc = new ArrayList<>();
        try {
            tx = session.getTransaction();
            tx.begin();
            String strquery = "from Loaitintuc";
            Query query = session.createQuery(strquery);

            ListLoaiTinTuc = (ArrayList<Loaitintuc>) query.list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return ListLoaiTinTuc;
    }

    public Loaitintuc GetLoaiTinTheoId(int IdLoaiTin) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            tx.commit();
            String strquery = "from Loaitintuc where IdLoaiTinTuc=" + IdLoaiTin;
            Query query = session.createQuery(strquery);
            Loaitintuc LT = (Loaitintuc) query.uniqueResult();
            return LT;
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
}
