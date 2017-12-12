package table;

import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;


public class Exam {
	
	private final SimpleStringProperty rDate;
	private final SimpleStringProperty rHour;
	private final SimpleIntegerProperty rFree;
	
	public Exam(String sDate, String sHour, Integer sFree) {
		this.rDate = new SimpleStringProperty(sDate);
		this.rHour = new SimpleStringProperty(sHour);
		this.rFree = new SimpleIntegerProperty(sFree);
	}
	
	public String getRDate() {
		return rDate.get();
	}
	
	public String getRHour() {
		return rHour.get();
	}
	
	public Integer getRFree() {
		return rFree.get();
	}
	
}
