package gui.controller;

import java.io.IOException;
import java.sql.SQLException;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.*;
import javafx.scene.layout.Pane;

public class StudentLoggedInController {

	private MainController mainController;
	
	@FXML
	public Label loggedUser;
	
	@FXML
	public void logOutButton() {
		mainController.loadStartScreen();
	}
	
	
	@FXML
	public void doStudentTest() {
		FXMLLoader loader = new FXMLLoader(this.getClass().getResource("/fxml/PreStudentTest.fxml"));
		Pane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		PreExamController preExamController = loader.getController();
		preExamController.setMainController(mainController);
		mainController.setScreenPane(pane);
	}

	public void setMainController(MainController mainController) {
		this.mainController = mainController;
		try {
			loggedUser.setText(LoginStudentController.result.getString("first_name") + " " + LoginStudentController.result.getString("last_name"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
