package com.satishkrgupta.shopingcart.dao;

import com.satishkrgupta.shopingcart.entities.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

public class UserDao {
    private SessionFactory factory;
    
    public UserDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    //get user by username and password
    public User getUserByNameAndPassword(String username, String password) {
        User user = null;
        
        try {
            
            String query = "from User where userName =: n and userPassword =: p";
            Session session = this.factory.openSession();
            Query q = session.createQuery(query);
            q.setParameter("n", username);
            q.setParameter("p", password);
            
            user = (User) q.uniqueResult();
            
            session.close();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return user;
    }
}
