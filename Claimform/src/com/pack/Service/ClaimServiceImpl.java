package com.pack.Service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.pack.Model.Claim;
import com.pack.Dao.ClaimDao;


public class ClaimServiceImpl implements ClaimService {
	private ClaimDao claimDao;
	public void setClaimDao(ClaimDao claimDao) {
		this.claimDao = claimDao;
	}
	/*@Override*/
	@Transactional
	public void addClaim(Claim c) {
		// TODO Auto-generated method stub
		claimDao.addClaim(c);
	}

	/*@Override*/
	@Transactional
	public void updateClaim(Claim c) {
		// TODO Auto-generated method stub
		claimDao.updateClaim(c);

	}

	/*@Override*/
	@Transactional
	public Claim getClaimById(Integer Claimid) {
		// TODO Auto-generated method stub
		return claimDao.getClaimById(Claimid);
	}

	/*@Override*/
	@Transactional
	public List<Claim> listClaim() {
		// TODO Auto-generated method stub
		List<Claim> l=claimDao.listClaim();
		return l;	}

}
