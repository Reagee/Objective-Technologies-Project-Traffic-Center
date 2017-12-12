package gui.controller;

import java.io.IOException;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.layout.*;


public class StartScreenController {
	
	private MainController mainController;
	
	@FXML
	public void employeeLoggedIn() {
		FXMLLoader loader = new FXMLLoader(this.getClass().getResource("/fxml/LoginScreen.fxml"));
		Pane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		LoginController loginController = loader.getController();
		loginController.setMainController(mainController);
		mainController.setScreenPane(pane);
	}
	
	@FXML
	public void studentLoggedIn() {
		FXMLLoader loader = new FXMLLoader(this.getClass().getResource("/fxml/LoginScreenStudent.fxml"));
		Pane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		LoginStudentController loginStudentController = loader.getController();
		loginStudentController.setMainController(mainController);
		mainController.setScreenPane(pane);
	}

	public void setMainController(MainController mainController) {
		this.mainController = mainController;
	}

}
