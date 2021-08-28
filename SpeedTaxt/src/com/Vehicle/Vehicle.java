
//	author K.G. Rajapakse
//	IT19014814
//	Kandy-weekday
//	G1_G8_vehicle rental system

package com.Vehicle;

//this is the vehicle model class
public class Vehicle {
	
	private int vehicleId;
	private String vehicleNo;
	private String vehicleType;
	private float vehiclePrice;
	private int maxPassengers;
	
	
	public Vehicle(int vehicleId, String vehicleNo, String vehicleType,
			float vehiclePrice, int maxPassengers) {
		super();
		this.vehicleId = vehicleId;
		this.vehicleNo = vehicleNo;
		this.vehicleType = vehicleType;
		this.vehiclePrice = vehiclePrice;
		this.maxPassengers = maxPassengers;
		
	}

	//returns vehicle Id
	public int getVehicleId() {
		return vehicleId;
	}

	//returns vehicle no
	public String getVehicleNo() {
		return vehicleNo;
	}

	//returns vehicle type
	public String getVehicleType() {
		return vehicleType;
	}

	//returns vehicle price
	public float getVehiclePrice() {
		return vehiclePrice;
	}

	//returns maximum no of passengers
	public int getMaxPassengers() {
		return maxPassengers;
	}


	
	

}
