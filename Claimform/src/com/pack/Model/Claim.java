package com.pack.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GeneratorType;

@Entity
@Table(name = "claimform")
public class Claim {
	@Id
	private Integer claimid;
	private String memberid;
	
	//@Column(name="claim_service_date")
	private String claim_service_date;
	private String claim_sub_date;
	private Integer claim_amt;

	public Integer getClaimid() {
		return claimid;
	}

	public void setClaimid(Integer claimid) {
		this.claimid = claimid;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public String getClaim_service_date() {
		return claim_service_date;
	}

	public void setClaim_service_date(String claim_service_date) {
		this.claim_service_date = claim_service_date;
	}

	public String getClaim_sub_date() {
		return claim_sub_date;
	}

	public void setClaim_sub_date(String claim_sub_date) {
		this.claim_sub_date = claim_sub_date;
	}

	public Integer getClaim_amt() {
		return claim_amt;
	}

	public void setClaim_amt(Integer claim_amt) {
		this.claim_amt = claim_amt;
	}

}
