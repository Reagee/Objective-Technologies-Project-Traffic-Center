package gui.controller;

import java.io.IOException;
import java.net.URL;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Random;
import java.util.ResourceBundle;
import gui.main.Main;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.Pane;
import javafx.scene.paint.Color;
import table.Exam;

public class ExamRegisterController implements Initializable{
	
	private MainController mainController;
	
	private ResultSet result = null;
	private ResultSet student = null;
	private ResultSet examID = null;
	private ResultSet vehicle_examiner = null;
	
	
	@FXML
	private CheckBox tExam, pExam;
	
	@FXML
	private Button confirmButton;
	
	@FXML
	private Label successLabel;
	
	@FXML
	private DatePicker datePick;
	
	@FXML
	private TableView<Exam> tableView;
	
	@FXML
	private TableColumn<Exam, String> dateRes;
	
	@FXML
	private TableColumn<Exam, String> hourRes;
	
	@FXML
	private TableColumn<Exam, Integer> freePlaces;
	
	final ObservableList<Exam> data = FXCollections.observableArrayList();

	@Override
	public void initialize(URL Location, ResourceBundle resources) {	
		dateRes.setCellValueFactory(new PropertyValueFactory<Exam, String>("rDate"));
		hourRes.setCellValueFactory(new PropertyValueFactory<Exam, String>("rHour"));
		freePlaces.setCellValueFactory(new PropertyValueFactory<Exam, Integer>("rFree"));
		
		tableView.setItems(data);
		
		confirmButton.setDisable(true);
		if(SearchStudentController.pDateFlag == 0)
		{
			pExam.setDisable(true);
		}
		else if(SearchStudentController.tDateFlag == 0)
		{
			tExam.setDisable(true);
		}
	}
	
	@FXML
	public void tCheck() {
		if(tExam.isSelected())
		{
			pExam.setDisable(true);
		}
		else
		{
			pExam.setDisable(false);
			tExam.setDisable(false);
		}
	}
	
	@FXML
	public void pCheck() {
		if(pExam.isSelected())
		{
			tExam.setDisable(true);
		}
		else
		{
			tExam.setDisable(false);
			pExam.setDisable(false);
		}
	}
	
	@FXML
	public void searchTerm() throws SQLException {
		if(tExam.isSelected())
		{	
			LocalDate date = datePick.getValue();
			tableView.getItems().clear();
			try {
				result = Main.statement.executeQuery("SELECT * FROM t_exam_dates WHERE exam_date='"+date+"' AND free_places > 0");
				}
			 catch (Exception e) {
				e.printStackTrace();
			}
			while(result.next())
			{
				data.add(new Exam(
						result.getDate("exam_date").toString(),
						result.getTime("exam_hour").toString(),
						result.getInt("free_places")
				));
			}
		}
		
		else if(pExam.isSelected())
		{
			LocalDate date = datePick.getValue();
			tableView.getItems().clear();
			try {
				result = Main.statement.executeQuery("SELECT * FROM p_exam_dates WHERE exam_date='"+date+"' AND free_places > 0");
				}
			 catch (Exception e) {
				e.printStackTrace();
			}
			while(result.next())
			{
				data.add(new Exam(
						result.getDate("exam_date").toString(),
						result.getTime("exam_hour").toString(),
						result.getInt("free_places")
				));
			}
		}
		confirmButton.setDisable(false);
		
	}
	
	@FXML
	public void returnButton() {
		FXMLLoader loader = new FXMLLoader(this.getClass().getResource("/fxml/SearchStudent.fxml"));
		Pane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		SearchStudentController searchStudentController = loader.getController();
		searchStudentController.setMainController(mainController);
		mainController.setScreenPane(pane);
	}
	
	@FXML void confirm() throws SQLException {
		Exam e1;
		int ID = 0;
		String fname = "";
		String lname = "";
		Long pesel_num = new Long(0);
		int free = 0;
		e1 = tableView.getSelectionModel().getSelectedItem();
		
		try {
			student = Main.statement.executeQuery("SELECT PESEL, first_name, last_name FROM student WHERE PESEL = '"+SearchStudentController.pesel+"'");
			student.next();
			fname = student.getString("first_name");
			lname = student.getString("last_name");
			pesel_num = student.getLong("PESEL");
			free = e1.getRFree() - 1;
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		if(tExam.isSelected())
		{
			try {				
				examID = Main.statement.executeQuery("SELECT MAX(id) as 'max' FROM signed_exams_t");
				examID.next();
				if(examID.getString("max") == null)
					ID = 1;
				else
					ID = examID.getInt("max") + 1;
			
				Main.statement.executeLargeUpdate("INSERT INTO `signed_exams_t` (`id`, `first_name`, `last_name`, `PESEL`, `date`, `hour`) VALUES ('"+ID+"', '"+fname+"', '"+lname+"', '"+pesel_num+"', '"+e1.getRDate()+"', '"+e1.getRHour()+"')");
			
				Main.statement.executeLargeUpdate("UPDATE t_exam_dates SET free_places = '"+free+"' WHERE exam_date = '"+e1.getRDate()+"' AND exam_hour = '"+e1.getRHour()+"'");
			
			} catch (SQLException e) {
				e.printStackTrace();
			}
			successLabel.setText("Zapisano na egzamin teoretyczny");
			successLabel.setTextFill(Color.GREEN);
		
		}
		
		if(pExam.isSelected())
		{
			try {
				Integer vehID = new Integer(0);
				Integer exID = new Integer(0);
				boolean veh = false, ex = false;
				Random rand = new Random();
				examID = Main.statement.executeQuery("SELECT MAX(id) as 'max' FROM signed_exams");
				examID.next();
				if(examID.getString("max") == null)
					ID = 1;
				else
					ID = examID.getInt("max") + 1;
				
				vehicle_examiner = Main.statement.executeQuery("SELECT examiner_id, vehicle_id FROM signed_exams WHERE date = '"+e1.getRDate()+"' and hour = '"+e1.getRHour()+"'");
				if(!vehicle_examiner.next())
				{
					vehID = rand.nextInt() % 10;
					if(vehID < 0)
						vehID = (-1) * vehID;
					vehID++;
					exID = rand.nextInt() % 10;
					if(exID < 0)
						exID = (-1) * exID;
					exID++;
				}
				else
				{
					while(!veh)
					{
						veh = true;
						vehicle_examiner.beforeFirst();
						vehID = rand.nextInt() % 10;
						if(vehID < 0)
							vehID = (-1) * vehID;
						vehID++;
						while(vehicle_examiner.next())
						{
							if(vehID.equals(vehicle_examiner.getInt("vehicle_id")))
								veh = false;							
						}
					}
					
					
					while(!ex)
					{
						ex = true;
						vehicle_examiner.beforeFirst();
						exID = rand.nextInt() % 10;
						if(exID < 0)
							exID = (-1) * exID;
						exID++;
						while(vehicle_examiner.next())
						{
							if(exID.equals(vehicle_examiner.getInt("examiner_id")))
								ex = false;
						}
					}
					
				}
				
								
				Main.statement.executeLargeUpdate("INSERT INTO `signed_exams` (`id`, `first_name`, `last_name`, `PESEL`, `date`, `hour`, `examiner_id`, `vehicle_id`, `exam_type`) VALUES ('"+ID+"', '"+fname+"', '"+lname+"', '"+pesel_num+"', '"+e1.getRDate()+"', '"+e1.getRHour()+"', '"+exID+"', '"+vehID+"', 'B')");
				
				Main.statement.executeLargeUpdate("UPDATE p_exam_dates SET free_places = '"+free+"' WHERE exam_date = '"+e1.getRDate()+"' AND exam_hour = '"+e1.getRHour()+"'");
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			successLabel.setText("Zapisano na egzamin praktyczny");
			successLabel.setTextFill(Color.GREEN);
		}

		searchTerm();
	}

	public void setMainController(MainController mainController) {
		this.mainController = mainController;
	}
}
