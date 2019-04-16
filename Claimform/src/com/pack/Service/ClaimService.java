package com.pack.Service;

import java.util.List;

import com.pack.Model.Claim;

public interface ClaimService {
	public void addClaim(Claim c);
	public void updateClaim(Claim c);
	public Claim getClaimById(Integer Claimid);
	public List<Claim> listClaim();
}
