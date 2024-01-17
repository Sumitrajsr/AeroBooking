package com.psa.checkin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.psa.checkin.integration.ReservationRestfulClient;
import com.psa.checkin.integration.dto.Reservation;
import com.psa.checkin.integration.dto.ReservationUpdateRequest;

@Controller
public class ReservationController {
	
	@Autowired
	private ReservationRestfulClient restclient;
	
	@RequestMapping("/showcheck")
	public String showCheckIn() {
		return "startCheckin";
		
	}
	
	@RequestMapping("/proceedCheckIn")
	public String proceedCheckIn(@RequestParam("id") Long id, ModelMap modelmap) {
		
		Reservation reservation = restclient.findReservation(id);
//		System.out.println(reservation.getId());
//		System.out.println(reservation.getNumberOfBags());
//		System.out.println(reservation.isCheckedIn());
		modelmap.addAttribute("reservation",reservation);
		return "displayReservation";
		
	}
	@RequestMapping("/proceedToCheckIn")
	public String proceedToCheckIn(@RequestParam("id") Long id,@RequestParam("numberOfBags") int numberOfBags,  ModelMap modelmap) {
		Reservation reservation = restclient.findReservation(id);
		ReservationUpdateRequest request=new ReservationUpdateRequest();
		request.setId(id);
		request.setCheckedInStatus(true);
		request.setNumberOfBags(numberOfBags);
		
		restclient.updateReservation(request);
		modelmap.addAttribute("reservation",reservation);
		return "confirmation";
		
	}


}
