package gui.controller;

import java.io.IOException;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.layout.Pane;
import javafx.scene.layout.StackPane;

public class MainController {

	@FXML
	private StackPane mainStackPane;
		
	@FXML
	public void initialize() {
		loadStartScreen();
	}

	public void loadStartScreen() {
		FXMLLoader loader = new FXMLLoader(this.getClass().getResource("/fxml/StartScreen.fxml"));
		Pane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		StartScreenController startScreenController = loader.getController();
		startScreenController.setMainController(this);
		setScreenPane(pane);
	}

	public void setScreen(StackPane stackPane) {
		mainStackPane.getChildren().clear();
		mainStackPane.getChildren().add(stackPane);
	}
	
	public void setScreenPane(Pane Pane) {
		mainStackPane.getChildren().clear();
		mainStackPane.getChildren().add(Pane);
	}
	
}
