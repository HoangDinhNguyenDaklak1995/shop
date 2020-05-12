/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaweb.service;

import com.javaweb.hibernate.util.NewHibernateUtil;
import com.javaweb.model.Chitietdonhang;
import com.javaweb.model.Chitietdonhangla;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author PhuocDanh
 */
public class ChiTietHoaDonLaService {
    public boolean InsertChiTietHoaDonLa(Chitietdonhangla CTDHL) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            session.saveOrUpdate(CTDHL);
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
    public ArrayList<Chitietdonhangla> GetAllCTDonHangLaByIDDonHangLa(int iddonhangla) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList<Chitietdonhangla> listCTDHL = new ArrayList<>();
        try {
            tx = session.getTransaction();
            tx.begin();
                Query query = session.createQuery("from Chitietdonhangla where Iddonhangla="+iddonhangla);
            listCTDHL = (ArrayList) query.list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println("lỗi" + e.toString());

        } finally {
            session.close();
        }
        return listCTDHL;
    }
}
