package gui.controller;

import java.io.IOException;
import java.sql.SQLException;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.*;
import javafx.scene.layout.Pane;
import gui.controller.LoginController;

public class LoggedInController {
	
	private MainController mainController;
	
	@FXML
	public Label loggedUser;
	
	
	
	@FXML
	public void logOut() {
		mainController.loadStartScreen();
	}
	
	@FXML
	public void searchStudent() {
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
	
	@FXML
	public void searchExam() {
		FXMLLoader loader = new FXMLLoader(this.getClass().getResource("/fxml/SearchExam.fxml"));
		Pane pane = null;
		try {
		pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		SearchExamController searchExamController = loader.getController();
		searchExamController.setMainController(mainController);
		mainController.setScreenPane(pane);
	}

	public void setMainController(MainController mainController) {
		this.mainController = mainController;
		/*
		try {
			loggedUser.setText(LoginController.result.getString("login"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		*/
	}
}
