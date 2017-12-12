package gui.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Timer;
import java.util.TimerTask;
import gui.main.Main;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.*;
import javafx.scene.image.*;
import javafx.scene.layout.Pane;
import javafx.scene.layout.StackPane;

public class StudentTestYesNoController {

	private MainController mainController;
	public static Integer score = 0;
	public int questionArray[] = new int [25];
	public int i;
	public int questionCount = 1;
	public static ResultSet result = null;
	private Timer timer;
	public int interval = 11;
	public int interval2 = 11;
	@FXML
	private ImageView testImage;
	
	@FXML
	private Label testQuestion, timeElapsed;
	
	public void setTimer() {
		timer = new Timer();
		timer.scheduleAtFixedRate(new TimerTask() {
			public void run() {
				if(interval > 0)
				{
					Platform.runLater(() -> timeElapsed.setText("Czas na przeczytanie pytania: " + interval));
					interval--;	
				}
				else
				{
					timer.cancel();
					setTimerTwo();
				}
			}
		}, 0,1000);
	}
	
	public void setTimerTwo() {
		timer = new Timer();
		timer.scheduleAtFixedRate(new TimerTask() {
			public void run() {
				if(interval2 > 0)
				{
					Platform.runLater(() -> timeElapsed.setText("Czas na odpowiedz: " + interval2));
					interval2--;	
				}
				else
				{
					timer.cancel();
					i++;
					Platform.runLater(() -> {
						try {
							nextQuestion();
						} catch (SQLException e) {
							e.printStackTrace();
						}
					});
				}
			}
		}, 0,1000);
	}
	
	

	
	public int[] initialize() throws SQLException{
		setTimer();
		for (int i = 0; i < questionArray.length; i++)
		{
		    questionArray[i] = (int)(Math.random()*49)+1;
		    for (int j = 0; j < i; j++) {
		        if (questionArray[i] == questionArray[j]) 
		        {
		            i--;
		            break;
		        }
		    }  
		}
		i=0;
		Image image = new Image("/yes_no/"+questionArray[i]+".jpg");
		testImage.setImage(image);
		try {
			result = Main.statement.executeQuery("SELECT correct_answer, question_content FROM yes_no_questions where id_question = "+questionArray[i]+"");
			}
		 catch (Exception e) {
			e.printStackTrace();
		 }
		while(result.next())
		{
			testQuestion.setText(questionCount+". "+result.getString("question_content"));
		}
		
		return questionArray;
	}
	
	public void nextQuestion() throws SQLException {
		timer.cancel();
		interval = 11;
		interval2 = 11;
		setTimer();
		Image image = new Image("/yes_no/"+questionArray[i]+".jpg");
		testImage.setImage(image);
		try {
			result = Main.statement.executeQuery("SELECT correct_answer, question_content FROM yes_no_questions where id_question = "+questionArray[i]+"");
			}
		 catch (Exception e) {
			e.printStackTrace();
		 }
		while(result.next())
		{
			testQuestion.setText(questionCount+". "+result.getString("question_content"));
		}
	}
	
	@FXML
	public void yesAnswer() throws SQLException {
		try {
			result = Main.statement.executeQuery("SELECT correct_answer FROM yes_no_questions where id_question = "+questionArray[i]+"");
			}
		 catch (Exception e) {
			e.printStackTrace();
		 }
		while(result.next())
		{
			if((Integer.parseInt(result.getString("correct_answer"))) == 1 && i < 24)
			{
				score++;
				i++;
				questionCount++;
				nextQuestion();	
			}
			else if ((Integer.parseInt(result.getString("correct_answer"))) == 0 && i < 24)
			{
				i++;
				questionCount++;
				nextQuestion();
			}
			else if(i == 24)
			{
				FXMLLoader loader = new FXMLLoader(this.getClass().getResource("/fxml/StudentTestABC.fxml"));
				StackPane stackPane = null;
				try {
					stackPane = loader.load();
				} catch (IOException e) {
					e.printStackTrace();
				}
				StudentTestABCController studentTestABCController = loader.getController();
				studentTestABCController.setMainController(mainController);
				mainController.setScreen(stackPane);
			}
		}
	}
	
	@FXML
	public void noAnswer() throws SQLException {
		try {
			result = Main.statement.executeQuery("SELECT correct_answer FROM yes_no_questions where id_question = "+questionArray[i]+"");
			}
		 catch (Exception e) {
			e.printStackTrace();
		 }
		while(result.next())
		{
			if((Integer.parseInt(result.getString("correct_answer"))) == 0 && i < 24)
			{
				score++;
				i++;
				questionCount++;
				nextQuestion();	
			}
			else if ((Integer.parseInt(result.getString("correct_answer"))) == 1 && i < 24)
			{
				i++;
				questionCount++;
				nextQuestion();
			}
			else if(i == 24)
			{
				FXMLLoader loader = new FXMLLoader(this.getClass().getResource("/fxml/StudentTestABC.fxml"));
				StackPane stackPane = null;
				try {
					stackPane = loader.load();
				} catch (IOException e) {
					e.printStackTrace();
				}
				StudentTestABCController studentTestABCController = loader.getController();
				studentTestABCController.setMainController(mainController);
				mainController.setScreen(stackPane);
			}		
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
