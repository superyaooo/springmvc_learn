package com.pluralsight.model;

import org.hibernate.validator.constraints.Range;

public class Exercise {

	@Range(min=0)
	private int minutes;

	private String activity;
	
	public String getActivity() {
		return activity;
	}

	public void setActivity(String activity) {
		this.activity = activity;
	}

	public int getMinutes() {
		return minutes;
	}

	public void setMinutes(int minutes) {
		this.minutes = minutes;
	}
	
}
