package com.psa.checkin.integration.dto;

public class ReservationUpdateRequest {
	private Long id;
	private boolean checkedInStatus;
	private int numberOfBags;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public boolean isCheckedInStatus() {
		return checkedInStatus;
	}
	public void setCheckedInStatus(boolean checkedInStatus) {
		this.checkedInStatus = checkedInStatus;
	}
	public int getNumberOfBags() {
		return numberOfBags;
	}
	public void setNumberOfBags(int numberOfBags) {
		this.numberOfBags = numberOfBags;
	}
	


}
