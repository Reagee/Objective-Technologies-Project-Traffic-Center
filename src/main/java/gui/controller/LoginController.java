package gui.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;

import gui.main.*;
import java.sql.SQLException;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.*;
import javafx.scene.layout.Pane;
import javafx.scene.paint.Color;
import java.sql.*;

public class LoginController {
	private MainController mainController;
	
	public static ResultSet result = null;
	
	@FXML
	private TextField workerId;
	
	@FXML
	private PasswordField workerPass;
	
	@FXML
	private Label errorMsg;
	
	@FXML
	public void returnButton() {
		mainController.loadStartScreen();
	}
	
	@FXML
	public void logIn(){
		String workID = workerId.getText();
		String workPass = workerPass.getText();
		String res = null;
		
		try {
			Socket socket = new Socket(InetAddress.getByName("127.0.0.1"), 3506);
			BufferedReader in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
			PrintWriter out = new PrintWriter(new OutputStreamWriter(socket.getOutputStream()));				
			socket.setTcpNoDelay(true);
			
			out.println("workerLog");
			out.flush();
			
			out.println(workID);
			out.flush();
			out.println(workPass);
			out.flush();
			
			res = in.readLine();
			
			socket.close();
			
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		
		
		
		if(res.equals("correct"))
		{
				
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
		else
		{
			errorMsg.setTextFill(Color.RED);
		}
		
	}

	
	public void setMainController(MainController mainController) {
		this.mainController = mainController;
	}

	

}
