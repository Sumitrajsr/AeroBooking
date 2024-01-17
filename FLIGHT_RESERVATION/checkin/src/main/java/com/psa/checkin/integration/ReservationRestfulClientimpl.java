package com.psa.checkin.integration;

import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.psa.checkin.integration.dto.Reservation;
import com.psa.checkin.integration.dto.ReservationUpdateRequest;

@Component
public class ReservationRestfulClientimpl implements ReservationRestfulClient {

	@Override
	public Reservation findReservation(Long id) {
		// TODO Auto-generated method stub
		RestTemplate  restTemplate=new RestTemplate();
		Reservation reservation = restTemplate.getForObject("http://localhost:8080/flights/reservation/"+id,Reservation.class);
		return reservation;
	}
	
	@Override
	public Reservation updateReservation(ReservationUpdateRequest request) {
		// TODO Auto-generated method stub
		RestTemplate  restTemplate=new RestTemplate();
		Reservation reservation = restTemplate.postForObject("http://localhost:8080/flights/reservation", request, Reservation.class);
		return reservation;
	}

}
