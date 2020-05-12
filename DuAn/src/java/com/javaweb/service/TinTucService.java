/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaweb.service;

import com.javaweb.hibernate.util.NewHibernateUtil;
import com.javaweb.model.Sanpham;
import com.javaweb.model.Tintuc;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author PhuocDanh
 */
public class TinTucService {

    public ArrayList<Tintuc> GetAllTinTucTheoIdLoaiTin(int id) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList<Tintuc> Listtintuc = new ArrayList<>();
        try {
            tx = session.getTransaction();
            tx.begin();
            String strquery = "from Tintuc where IdLoaitintuc=" + id;
            Query query = session.createQuery(strquery);
            Listtintuc = (ArrayList<Tintuc>) query.list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return Listtintuc;
    }

    public ArrayList<Tintuc> GetAllListTinTuc() {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList<Tintuc> Listtintuc = new ArrayList<>();
        try {
            tx = session.getTransaction();
            tx.begin();
            String strquery = "from Tintuc order by IdTintuc Desc";
            Query query = session.createQuery(strquery);
            Listtintuc = (ArrayList<Tintuc>) query.list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return Listtintuc;
    }

    public boolean InsertTinTuc(Tintuc tt) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;

        try {
            tx = session.getTransaction();
            tx.begin();
            session.saveOrUpdate(tt);
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

    public Tintuc GetTinTucById(String idtin) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            tx.commit();
            String strquery = "from Tintuc where IdTinTuc=" + idtin;
            Query query = session.createQuery(strquery);
            Tintuc Tin = (Tintuc) query.uniqueResult();
            return Tin;
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

    public ArrayList<Tintuc> GetSoLuongTinTucTheoLoai(int idloaitin, int soluong) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList<Tintuc> ListTinTUc = new ArrayList<>();
        try {
            tx = session.getTransaction();
            tx.begin();
            String strquery = "from Tintuc where IdLoaitintuc=" + idloaitin + " order by IdTinTuc Desc";

            Query query = session.createQuery(strquery);
            query.setMaxResults(soluong);
            ListTinTUc = (ArrayList<Tintuc>) query.list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return ListTinTUc;
    }

    public boolean DeleteAlLTin(int idtin) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;

        try {
            tx = session.getTransaction();
            tx.begin();
            Tintuc tin = new Tintuc();
            tin.setIdTinTuc(idtin);
            session.delete(tin);
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
    public int usercount = 0;

    public ArrayList<Tintuc> GetAllTinTucTheoLoaiTin(int pageSize, int pageNumber, int idloaitin) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList Listtintuc = new ArrayList<Tintuc>();

        try {
            tx = session.getTransaction();
            tx.begin();

            Query query = session.createQuery("from Tintuc where IdLoaitintuc=" + idloaitin);
            usercount = query.list().size();
            query = query.setFirstResult(pageSize * (pageNumber - 1));
            query.setMaxResults(pageSize);
            Listtintuc = (ArrayList) query.list();

            tx.commit();

        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }

        } finally {
            session.close();
        }

        return Listtintuc;
    }
}
