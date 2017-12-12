package gui.controller;

import java.io.IOException;
import gui.main.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.layout.Pane;
import javafx.scene.paint.Color;

public class LoginStudentController {
private MainController mainController;
	
	public static ResultSet result = null;
	
	@FXML
	private TextField studentId;
	
	@FXML
	private PasswordField studentPass;
	
	@FXML
	private Label errorMsg;
	
	@FXML
	public void returnButton() {
		mainController.loadStartScreen();
	}
	
	
	@FXML
	public void logIn() throws SQLException{
		try {
			result = Main.statement.executeQuery("SELECT first_name,last_name,login,password FROM student");
			}
		 catch (Exception e) {
			e.printStackTrace();
		}
		while(result.next())
		{
			if(studentId.getText().equals(result.getString("login")) && studentPass.getText().equals(result.getString("password")))
			{
				
				FXMLLoader loader = new FXMLLoader(this.getClass().getResource("/fxml/StudentLoggedIn.fxml"));
				Pane pane = null;
				try {
					pane = loader.load();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				StudentLoggedInController studentLoggedInController = loader.getController();
				studentLoggedInController.setMainController(mainController);
				mainController.setScreenPane(pane);
			}
			else
				{
			errorMsg.setTextFill(Color.RED);
			}
		}
	}

	
	public void setMainController(MainController mainController) {
		this.mainController = mainController;
	}
}
