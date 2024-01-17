package com.psa.checkin.integration;

import org.springframework.web.bind.annotation.RequestBody;

//import org.springframework.web.bind.annotation.RequestBody;

import com.psa.checkin.integration.dto.Reservation;
import com.psa.checkin.integration.dto.ReservationUpdateRequest;



//import com.psa.flight_reservation_app.entity.Reservation;

public interface ReservationRestfulClient {
	public Reservation findReservation(Long id);
	public Reservation updateReservation(@RequestBody ReservationUpdateRequest request);
	

}
