package gui.controller;

import java.io.IOException;
import java.net.URL;
import java.sql.ResultSet;
import java.sql.SQLException;
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
import table.Exam;
import table.ExamSearch;

public class SearchExamController implements Initializable {

	private MainController mainController;
	
	private ResultSet result = null;
	
	@FXML
	private CheckBox studentSearchCheckButton, seeAllCheckButton, seeFromCheckButton;
	
	@FXML
	private DatePicker fromDate, toDate, thisDate;
	
	@FXML
	private TextField peselNumber;
	
	@FXML
	private Label fromLabel, toLabel;
	
	@FXML
	private TableView<ExamSearch> tableView;
	
	@FXML
	private TableColumn<ExamSearch, Integer> idRes;
	
	@FXML
	private TableColumn<ExamSearch, String> dateRes;
	
	@FXML
	private TableColumn<ExamSearch, Long> peselRes;
	
	@FXML
	private TableColumn<ExamSearch, String> nameRes;
	
	@FXML
	private TableColumn<ExamSearch, String> surnameRes;
	
	@FXML
	private TableColumn<ExamSearch, Integer> vehicleRes;
	
	@FXML
	private TableColumn<ExamSearch, Integer> examinerRes;
	
	final ObservableList<ExamSearch> data = FXCollections.observableArrayList();
	
	@Override
	public void initialize(URL Location, ResourceBundle resources) {
		idRes.setCellValueFactory(new PropertyValueFactory<ExamSearch, Integer>("rID"));
		dateRes.setCellValueFactory(new PropertyValueFactory<ExamSearch, String>("rDate"));
		peselRes.setCellValueFactory(new PropertyValueFactory<ExamSearch, Long>("rPesel"));
		nameRes.setCellValueFactory(new PropertyValueFactory<ExamSearch, String>("rName"));
		surnameRes.setCellValueFactory(new PropertyValueFactory<ExamSearch, String>("rSurname"));
		vehicleRes.setCellValueFactory(new PropertyValueFactory<ExamSearch, Integer>("rVehicle"));
		examinerRes.setCellValueFactory(new PropertyValueFactory<ExamSearch, Integer>("rExaminator"));
		
		tableView.setItems(data);
	}
	
	@FXML
	public void studentSearchCheck() {
		if(studentSearchCheckButton.isSelected())
		{
			seeAllCheckButton.setDisable(true);
			seeFromCheckButton.setDisable(true);
			fromDate.setDisable(true);
			toDate.setDisable(true);
			thisDate.setDisable(true);
			fromLabel.setDisable(true);
			toLabel.setDisable(true);
		}
		else
		{
			studentSearchCheckButton.setDisable(false);
			seeAllCheckButton.setDisable(false);
			seeFromCheckButton.setDisable(false);
			fromDate.setDisable(false);
			toDate.setDisable(false);
			thisDate.setDisable(false);
			fromLabel.setDisable(false);
			toLabel.setDisable(false);
		}
	}
	
	@FXML
	public void seeAllCheck() {
		if(seeAllCheckButton.isSelected())
		{
			studentSearchCheckButton.setDisable(true);
			seeFromCheckButton.setDisable(true);
			peselNumber.setDisable(true);
			thisDate.setDisable(true);
		}
		else
		{
			studentSearchCheckButton.setDisable(false);
			seeAllCheckButton.setDisable(false);
			seeFromCheckButton.setDisable(false);
			fromDate.setDisable(false);
			toDate.setDisable(false);
			thisDate.setDisable(false);
			fromLabel.setDisable(false);
			toLabel.setDisable(false);
		}
	}
	
	@FXML
	public void seeFromCheck() {
		if(seeFromCheckButton.isSelected())
		{
			studentSearchCheckButton.setDisable(true);
			seeAllCheckButton.setDisable(true);
			peselNumber.setDisable(true);
			fromDate.setDisable(true);
			toDate.setDisable(true);
			fromLabel.setDisable(true);
			toLabel.setDisable(true);
		}
		else
		{
			studentSearchCheckButton.setDisable(false);
			seeAllCheckButton.setDisable(false);
			seeFromCheckButton.setDisable(false);
			fromDate.setDisable(false);
			toDate.setDisable(false);
			thisDate.setDisable(false);
			fromLabel.setDisable(false);
			toLabel.setDisable(false);
		}
	}
	
	@FXML
	public void returnButton() {
		FXMLLoader loader = new FXMLLoader(this.getClass().getResource("/fxml/LoggedIn.fxml"));
		Pane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		LoggedInController loggedInController = loader.getController();
		loggedInController.setMainController(mainController);
		mainController.setScreenPane(pane);
	}
	
	@FXML
	public void searchExam() throws SQLException {
		tableView.getItems().clear();
		if(studentSearchCheckButton.isSelected())
		{
			try {
				result = Main.statement.executeQuery("SELECT * FROM signed_exams WHERE pesel="+peselNumber.getText()+"");
				}
			 catch (Exception e) {
				e.printStackTrace();
			}
			while(result.next())
			{
				data.add(new ExamSearch(
						result.getInt("ID"),
						result.getDate("date").toString(),
						result.getLong("pesel"),
						result.getString("first_name"),
						result.getString("last_name"),
						result.getInt("vehicle_id"),
						result.getInt("examiner_id")			
					));
			}
		}
		
		else if(seeAllCheckButton.isSelected())
		{
			//Date date = new Date(0, 0, 0);
			//String modifiedDate= new SimpleDateFormat("yyyy-MM-dd").format(date);
			try {
				result = Main.statement.executeQuery("SELECT id, first_name,last_name,PESEL,date,examiner_id,vehicle_id FROM signed_exams WHERE date between'"+fromDate.getValue()+"'and'" + toDate.getValue() + "'");
				}
			 catch (Exception e) {
				e.printStackTrace();
			}
			while(result.next())
			{
				data.add(new ExamSearch(
						result.getInt("ID"),
						result.getDate("date").toString(),
						result.getLong("pesel"),
						result.getString("first_name"),
						result.getString("last_name"),
						result.getInt("vehicle_id"),
						result.getInt("examiner_id")			
					));
			}
		}
		
		else if(seeFromCheckButton.isSelected())
		{
			//Date date = new Date(0, 0, 0);
			//String modifiedDate= new SimpleDateFormat("yyyy-MM-dd").format(date);
			try {
				result = Main.statement.executeQuery("SELECT * FROM signed_exams WHERE date='"+thisDate.getValue()+"'");
				}
			 catch (Exception e) {
				e.printStackTrace();
			}
			while(result.next())
			{
				data.add(new ExamSearch(
						result.getInt("ID"),
						result.getDate("date").toString(),
						result.getLong("pesel"),
						result.getString("first_name"),
						result.getString("last_name"),
						result.getInt("vehicle_id"),
						result.getInt("examiner_id")			
					));
			}
		}
	}

	public void setMainController(MainController mainController) {
		this.mainController = mainController;
	}
	
}
