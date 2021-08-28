
//	author K.G. Rajapakse
//	IT19014814
//	Kandy-weekday
//	G1_G8_vehicle rental system

package com.Driver;

//this is the Driver model class
public class Driver {
	
	 private int driverId;
	    private String NIC;
	    private String driverName;
	    private String phnNumber;
	    private String acceptedBY;
	    
	    
	    public Driver(int driverId, String nIC, String driverName,
				String phnNumber, String acceptedBY) {
			super();
			this.driverId = driverId;
			NIC = nIC;
			this.driverName = driverName;
			this.phnNumber = phnNumber;
			this.acceptedBY = acceptedBY;
		}
		
	    
	    //returns the driverId.
		public int getDriverId() {
			return driverId;
		}

		//returns the NIC
		public String getNIC() {
			return NIC;
		}

		//returns the driver name.
		public String getDriverName() {
			return driverName;
		}

		//returns the phone number
		public String getPhnNumber() {
			return phnNumber;
		}

		//returns accepted by
		public String getAcceptedBY() {
			return acceptedBY;
		}


		
}
