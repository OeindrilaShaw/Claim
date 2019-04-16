package com.pack.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.pack.Model.Claim;


public class ClaimDaoImpl implements ClaimDao {
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}

	@Override
	public void addClaim(Claim c) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(c);
	}

	@Override
	public void updateClaim(Claim c) {
		// TODO Auto-generated method stub
		 sessionFactory.getCurrentSession().update(c);

	}

	@Override
	public Claim getClaimById(Integer Claimid) {
		// TODO Auto-generated method stub
		Session s=sessionFactory.getCurrentSession();
		Claim c=(Claim)s.get(Claim.class,Claimid);
		return c;
	}

	@Override
	public List<Claim> listClaim() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("From Claim").list();
	}

}
