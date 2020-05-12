/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaweb.service;

import com.javaweb.hibernate.util.NewHibernateUtil;
import com.javaweb.model.Users;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author TAO-PC
 */
public class UserService {
    public boolean Insertservice(Users users) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            session.saveOrUpdate(users);
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

    public Users GetUsersByEmailorUsersName(String userName) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            String strQuery = "from Users where UserName='"+userName+"'  or Email='"+userName+"'";
            Query query = session.createQuery(strQuery);
            Users user = (Users) query.uniqueResult();
            tx.commit();
            return user;
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

    public Users GetUsersByID(String userID) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            String strQuery = "from Users where idUser=" + userID;
            Query query = session.createQuery(strQuery);
            Users user = (Users) query.uniqueResult();
            tx.commit();
            return user;
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

    public boolean CheckLogin(String GiaTriNhap, String Password) {
        Users users = GetUsersByEmailorUsersName(GiaTriNhap);
        if (users == null) {
            return false;
        } else if (users.getPassWord().equals(Password)) {
            return true;
        } else {
            return false;
        }
    }

    public ArrayList<Users> GetAllUsers() {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList<Users> listUsers = new ArrayList<>();
        try {
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("from Users order by IdUser desc");
            listUsers = (ArrayList) query.list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println("lỗi" + e.toString());

        } finally {
            session.close();
        }
        return listUsers;
    }
     public boolean DeleteUser(int iduser) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;

        try {
            tx = session.getTransaction();
            tx.begin();
            Users us = new Users();
            us.setIdUser(iduser);
            session.delete(us);
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
