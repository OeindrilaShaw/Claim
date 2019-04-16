package com.pack.Controller;

import java.util.Map;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pack.Service.ClaimService;
import com.pack.Model.Claim;

@Controller
public class ClaimController {
	private ClaimService claimService;

	@Autowired(required = true)
	@Qualifier(value = "claimService") // if we gave different bean name in my
										// xml and a diff in autowired that time
										// to remove confusion we use this also
										// onebean with same id
	public void setClaimService(ClaimService claimService) {
		this.claimService = claimService;
	}

	@RequestMapping("/")
	public String listClaim(ModelMap m) {
		m.addAttribute("claim", new Claim());
		m.addAttribute("claimList", claimService.listClaim());
		return "ClaimForm";
	}

	@RequestMapping(value = "/claim/add", method = RequestMethod.POST)
	public String addClaim(@ModelAttribute("claim") Claim claim) {
		if (null == claim.getClaimid()) {
			Random r = new Random();
			int num = r.nextInt(900000) + 100000;
			claim.setClaimid(num);
			claimService.addClaim(claim);

		} else {
			claimService.updateClaim(claim);
		}
		return "redirect:/index";
	}
@RequestMapping("/edit/{cid}") //{} this used to change the id accordingly like 100,200..so on
public String editCustomer(@PathVariable("cid") Integer custid,Map<String,Object> m){
	Claim c=claimService.getClaimById(custid);
	m.put("claim",c); //represents one customer object
	m.put("claimlist",claimService.listClaim());
	return "claim";
}
}