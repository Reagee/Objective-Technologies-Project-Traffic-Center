package gui.controller;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.Label;
import javafx.scene.layout.Pane;
import javafx.scene.paint.Color;

import java.io.IOException;

import gui.controller.StudentTestABCController;

public class TestResultController {
	private MainController mainController;
	private int result = StudentTestABCController.getScore();
	private int score = (int) ((double)((result)*100)/37);
	@FXML
	private Label examResult, examScore;
	
	public void initialize() {
		if(score < 92) {
			examResult.setText("Negatywny");
			examResult.setTextFill(Color.RED);
			examScore.setText(score+"%");
		}
		else
		{
			examResult.setText("Pozytywny");
			examResult.setTextFill(Color.GREEN);
			examScore.setText(score+"%");
		}
	}

	@FXML
	public void returnButton() {
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
