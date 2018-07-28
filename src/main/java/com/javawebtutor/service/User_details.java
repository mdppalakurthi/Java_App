package com.javawebtutor.service;

import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.mapping.List;

import com.javawebtutor.hibernate.util.HibernateUtil;
import com.javawebtutor.model.User;

public class User_details {
	
	public User_details(){}
	
        public ArrayList<User> getListOfUsers(){
            ArrayList<User> list = new ArrayList<User>();
            Session session = HibernateUtil.openSession();
            Transaction tx = null;        
            try {
                tx = session.getTransaction();
                tx.begin();
                list = (ArrayList<User>) session.createQuery("from user_details").list();                        
                tx.commit();
            } catch (Exception e) {
                if (tx != null) {
                    tx.rollback();
                }
                e.printStackTrace();
            } finally {
            	tx.commit();
                session.close();
                return list;
            }
           
        }
        
        
    }
