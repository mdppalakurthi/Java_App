package com.javawebtutor.service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.javawebtutor.hibernate.util.HibernateUtil;
import com.javawebtutor.model.UserGraph;
import com.javawebtutor.model.UserGraphSub;

public class GraphService {
	
    Session session = HibernateUtil.openSession();

	public List<UserGraph> getListOfUserss(){
        List<UserGraph> list = null;

        Transaction tx = null;        
        try {
            tx = session.getTransaction();
            tx.begin();
            list = session.createQuery("from UserGraph").list();                        
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return list;
    }
	
	public List<UserGraphSub> getListOfUsersub(){
        List<UserGraphSub> list = null;

        Transaction tx = null;        
        try {
            tx = session.getTransaction();
            tx.begin();
            list = session.createQuery("from UserGraphSub").list();                        
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return list;
    }
	
	public void setResetValues(){

        Transaction tx = null;        
        try {
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("update User set vReq=0,vSub=0,pReq=0,pSub=0,sReq=0,sSub=0");  
            query.executeUpdate();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
    }
	
}
