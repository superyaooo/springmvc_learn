package com.pluralsight.model;

import org.hibernate.validator.constraints.Range;

public class Exercise {

	@Range(min=0)
	private int minutes;

	public int getMinutes() {
		return minutes;
	}

	public void setMinutes(int minutes) {
		this.minutes = minutes;
	}
	
}
