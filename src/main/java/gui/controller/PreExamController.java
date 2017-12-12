package gui.controller;

import java.io.IOException;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.layout.StackPane;

public class PreExamController {

	private MainController mainController;
	
	@FXML
	public void startExam() {
		FXMLLoader loader = new FXMLLoader(this.getClass().getResource("/fxml/StudentTestYesNo.fxml"));
		StackPane stackPane = null;
		try {
			stackPane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		StudentTestYesNoController studentTestController = loader.getController();
		studentTestController.setMainController(mainController);
		mainController.setScreen(stackPane);
	}


	public void setMainController(MainController mainController) {
		this.mainController = mainController;
	}
	
}
