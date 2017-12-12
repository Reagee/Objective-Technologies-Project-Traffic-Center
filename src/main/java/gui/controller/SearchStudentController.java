package gui.controller;

import java.io.IOException;
import gui.main.*;
import java.sql.*;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.*;
import javafx.scene.layout.Pane;
import javafx.scene.paint.Color;
import javafx.scene.text.*;


public class SearchStudentController {
	
	private MainController mainController;
	static String pesel;
	static int tDateFlag;
	static int pDateFlag;
	
	@FXML
	private Button examRegisterButton, examReRegisterButton;
	
	@FXML
	private TextField studentPesel;
	
	@FXML
	private Label studentName,studentLastName,studentAddress,peselNotFound;
	
	@FXML
	private Text studentCourseStatus,tExamDate,pExamDate,tExamPay,pExamPay,tExamResult,pExamResult;
	
	private ResultSet result = null;
	private ResultSet result2 = null;
	/*
	public void initialize() {
		examRegisterButton.setDisable(true);
		examReRegisterButton.setDisable(true);
	}
	*/
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
	public void examRegister() {
		FXMLLoader loader = new FXMLLoader(this.getClass().getResource("/fxml/ExamRegister.fxml"));
		Pane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		ExamRegisterController examRegisterController = loader.getController();
		examRegisterController.setMainController(mainController);
		mainController.setScreenPane(pane);
	}

	@FXML
	public void searchStudent() throws SQLException {
		@SuppressWarnings("deprecation")
		Date date = new Date(0, 0, 0);
		pesel = studentPesel.getText();
		try {
			result = Main.statement.executeQuery("SELECT * FROM student WHERE pesel="+studentPesel.getText()+"");
			result2 = Main.statement.executeQuery("SELECT * FROM signed_exams_t WHERE pesel="+studentPesel.getText()+"");
			}
		 catch (Exception e) {
			e.printStackTrace();
			peselNotFound.setTextFill(Color.RED);
		}
		if(!result.isBeforeFirst())
		{
			peselNotFound.setTextFill(Color.RED);
		}
		while(result.next())
		{
				
				studentName.setText(result.getString("first_name"));
				studentLastName.setText(result.getString("last_name"));
				studentAddress.setText(result.getString("address"));
				
	
				if(Integer.parseInt(result.getString("osk_course_status")) == 1)
				{
					studentCourseStatus.setText("Zaliczony");
					studentCourseStatus.setFill(Color.GREEN);
				}
				else
				{
					studentCourseStatus.setText("Niezaliczony");
					studentCourseStatus.setFill(Color.RED);
				}
				if(result2.getDate("date") == null)
				{
					tExamDate.setText("Niezapisany");
					pDateFlag = 0;
				}
				else
				{
					tExamDate.setText(result2.getString("date"));
					tDateFlag = 0;
				}
				/*if(result.getDate("p_exam_date") == null)
				{
					pExamDate.setText("Niezapisany");
				}
				else
				{
					pExamDate.setText(result.getString("p_exam_date"));
				}
				if(result.getDate("t_exam_date") == null || result.getDate("p_exam_date") == null)
				{
					examRegisterButton.setDisable(false);
				}
				if(result.getDate("t_exam_date") != null && Integer.parseInt(result.getString("t_exam_res")) < 74 && Integer.parseInt(result.getString("t_exam_res")) > 1)
				{
					examReRegisterButton.setDisable(false);
				}
				if(result.getDate("t_exam_date") != null && result.getDate("p_exam_date") != null)
				{
					examRegisterButton.setDisable(true);
				}
				*/
				if(Integer.parseInt(result.getString("pay_texam_status")) == 1)
				{
					tExamPay.setText("Zap³acono");
					tExamPay.setFill(Color.GREEN);
				}
				else
				{
					tExamPay.setText("Niezap³acono");
					tExamPay.setFill(Color.RED);
				}
				if(Integer.parseInt(result.getString("pay_pexam_status")) == 1)
				{
					pExamPay.setText("Zap³acono");
					pExamPay.setFill(Color.GREEN);
				}
				else
				{
					pExamPay.setText("Niezap³acono");
					pExamPay.setFill(Color.RED);
				}
				/*
				if(Integer.parseInt(result.getString("t_exam_res")) < 1)
				{
					tExamResult.setText("Egzamin siê nie odby³");
					tExamResult.setFill(Color.BLACK);
				}
				else
				{
					if(Integer.parseInt(result.getString("t_exam_res")) < 74 && Integer.parseInt(result.getString("t_exam_res")) >1)
					{
						tExamResult.setText(result.getString("t_exam_res") + " " + " Niezaliczony");
						tExamResult.setFill(Color.RED);
					}
					else if(Integer.parseInt(result.getString("t_exam_res")) < 1)
					{
						tExamResult.setText("Egzamin siê nie odby³");
						tExamResult.setFill(Color.BLACK);
					}
					else
					{
						tExamResult.setText(result.getString("t_exam_res") + " " + " Zaliczony");
						tExamResult.setFill(Color.GREEN);
					}
				}
				if(Integer.parseInt(result.getString("t_exam_res")) >74 && result.getDate("p_exam_date") == null)
				{
					pExamResult.setText("Niezapisany na egzamin");
					pExamResult.setFill(Color.BLACK);
				}
				else if(Integer.parseInt(result.getString("t_exam_res")) < 74 && Integer.parseInt(result.getString("t_exam_res")) > 1)
				{
					pExamResult.setText("Niedopuszczony do egzaminu");
					pExamResult.setFill(Color.RED);
				}
				else if(Integer.parseInt(result.getString("t_exam_res")) < 1)
				{
					pExamResult.setText("Egzamin siê nie odby³");
					pExamResult.setFill(Color.BLACK);
				}
				else if(Integer.parseInt(result.getString("t_exam_res")) >74 && Integer.parseInt(result.getString("p_exam_res")) == 1)
				{
					pExamResult.setText("Zaliczony");
					pExamResult.setFill(Color.GREEN);
				}
				else if(Integer.parseInt(result.getString("t_exam_res")) >74 && (result.getDate("p_exam_date").compareTo(date)) > 0)
				{
					pExamResult.setText("Egzamin siê nie odby³");
					pExamResult.setFill(Color.BLACK);
				}
				*/
		}
	}
	
	public void setMainController(MainController mainController) {
		this.mainController = mainController;
	}
	
}
