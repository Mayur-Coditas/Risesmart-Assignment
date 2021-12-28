package com.mayur.repository;

import com.mayur.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.NoResultException;
import java.util.List;

public class UserDaoImpl implements UserDao{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    @Transactional
    public void registerUser(User user) throws Exception{

        Session session = sessionFactory.openSession();
        boolean isEmailAlreadyExist = isEmailAlreadyExist(user.getEmail());
        if (!isEmailAlreadyExist){
            session.save(user);
        }else{
            throw new NoResultException("email already exist");
        }
    }

    @Override
    @Transactional
    public List<User> getAllUsers() {
        Session session = sessionFactory.openSession();
        List<User> userList = session.createQuery("SELECT u FROM User u",User.class).getResultList();
        return userList;
    }

    public boolean isEmailAlreadyExist(String email){
        Session session = sessionFactory.openSession();
        String query = "Select * from users where email=:email ";

        try {
            User user = session.createNativeQuery(query,User.class).setParameter("email",email).getSingleResult();
            return true;

        } catch (NoResultException noResultException){
            return false;
        }
    }

    @Override
    @Transactional
    public User getUserDetails(Integer userId) {
        Session session = sessionFactory.openSession();
        User fetchedUser = session.get(User.class,userId);
        return fetchedUser;
    }


}
