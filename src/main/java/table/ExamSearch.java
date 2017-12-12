package table;

import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleLongProperty;
import javafx.beans.property.SimpleStringProperty;

public class ExamSearch {

	private final SimpleIntegerProperty rID;
	private final SimpleStringProperty rDate;
	private final SimpleLongProperty rPesel;
	private final SimpleStringProperty rName;
	private final SimpleStringProperty rSurname;
	private final SimpleIntegerProperty rExaminator;
	private final SimpleIntegerProperty rVehicle;
	
	//private final SimpleStringProperty rTime;
	//private final SimpleStringProperty rType;
	
	public ExamSearch(Integer sID, String sDate, Long sPesel, String sName, String sSurname,Integer sVehicle, Integer sExaminator) {
		this.rID = new SimpleIntegerProperty(sID);
		this.rDate = new SimpleStringProperty(sDate);
		this.rPesel = new SimpleLongProperty(sPesel);
		this.rName = new SimpleStringProperty(sName);
		this.rSurname = new SimpleStringProperty(sSurname);
		this.rVehicle = new SimpleIntegerProperty(sVehicle);
		this.rExaminator = new SimpleIntegerProperty(sExaminator);
		
	}

	public Integer getRID() {
		return rID.get();
	}
	
	public String getRName() {
		return rName.get();
	}
	
	public String getRSurname() {
		return rSurname.get();
	}
	
	public Long getRPesel() {
		return rPesel.get();
	}
	
	public String getRDate() {
		return rDate.get();
	}
	
	
	public Integer getRExaminator() {
		return rExaminator.get();
	}
	
	public Integer getRVehicle() {
		return rVehicle.get();
	}
	
	
}
