package org.coop.sidc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/member")
public class MemberController {
	@RequestMapping(value="/profile/{memberid}",method=RequestMethod.GET)
	public String getMemberProfile(@PathVariable("memberid") Long id){
		return "memberProfile";
	}
	@RequestMapping(value="/capital/{memberid}",method=RequestMethod.GET)
	public String getMemberCapital(@PathVariable("memberid") Long id){
		return "memberCapital";
	}	
}
