/*
	author KA Rasanjalee
	IT19150444
	kandy weekday
	G1_G8_vehicle rental system
	
*/
package home.location;

public class Cpackage {
	private int id;
	private String name;
	private String date;
	private String pickLoca;
	private String dropLoca ;
	private String vehicle;
	private String time ;
	private String mail ;
	
	//set the variables
	public Cpackage(int id ,String name, String date, String pickLoca, String dropLoca, String vehicle, String time, String mail) {
		
		this.id=id;
		this.name = name;
		this.date = date;
		this.pickLoca = pickLoca;
		this.dropLoca = dropLoca;
		this.vehicle = vehicle;
		this.time = time;
		this.mail= mail;
	}
//return name
	public int getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	
	public String getDate() {
		return date;
	}

	public String getPickLoca() {
		return pickLoca;
	}

	public String getDropLoca() {
		return dropLoca;
	}

		public String getVehicle() {
		return vehicle;
	}

	public String getTime() {
		return time;
	}
	public String getMail() {
		return mail;
	}

	
}
