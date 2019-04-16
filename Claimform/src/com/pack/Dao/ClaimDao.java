package com.pack.Dao;

import java.util.List;

import com.pack.Model.Claim;

public interface ClaimDao {
	public void addClaim(Claim c);
	public void updateClaim(Claim c);
	public Claim getClaimById(Integer Claimid);
	public List<Claim> listClaim();
}
