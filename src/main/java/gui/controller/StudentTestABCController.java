package gui.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Timer;
import java.util.TimerTask;

import gui.controller.StudentTestYesNoController;
import gui.main.Main;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.*;
import javafx.scene.image.*;
import javafx.scene.layout.Pane;

public class StudentTestABCController {

	private MainController mainController;
	public int questionArray[] = new int [12];
	public int i;
	public int questionCount = 1;
	public static ResultSet result = null;
	private Timer timer;
	public int interval = 11;
	public int interval2 = 11;
	
	@FXML
	private Button aAnswerContent,bAnswerContent,cAnswerContent;
	
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
		    questionArray[i] = (int)(Math.random()*29)+1;
		    for (int j = 0; j < i; j++) {
		        if (questionArray[i] == questionArray[j]) 
		        {
		            i--;
		            break;
		        }
		    }  
		}
		i=0;
		Image image = new Image("/abc/"+questionArray[i]+".jpg");
		testImage.setImage(image);
		try {
			result = Main.statement.executeQuery("SELECT correct_answer, question_content,answer_A,answer_B,answer_C FROM abc_questions where id_question = "+questionArray[i]+"");
			}
		 catch (Exception e) {
			e.printStackTrace();
		 }
		while(result.next())
		{
			testQuestion.setText(questionCount+". "+result.getString("question_content"));
			aAnswerContent.setText(result.getString("answer_A"));
			bAnswerContent.setText(result.getString("answer_B"));
			cAnswerContent.setText(result.getString("answer_C"));
		}
		return questionArray;
	}
	
	public void endExam() {
		FXMLLoader loader = new FXMLLoader(this.getClass().getResource("/fxml/StudentTestResult.fxml"));
		Pane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		TestResultController testResultController = loader.getController();
		testResultController.setMainController(mainController);
		mainController.setScreenPane(pane);
	}
	
	public void nextQuestion() throws SQLException {
		timer.cancel();
		interval = 11;
		interval2 = 11;
		setTimer();
		Image image = new Image("/abc/"+questionArray[i]+".jpg");
		testImage.setImage(image);
		try {
			result = Main.statement.executeQuery("SELECT correct_answer, question_content,answer_A,answer_B,answer_C FROM abc_questions where id_question = "+questionArray[i]+"");
			}
		 catch (Exception e) {
			e.printStackTrace();
		 }
		while(result.next())
		{
			testQuestion.setText(questionCount+". "+result.getString("question_content"));
			aAnswerContent.setText(result.getString("answer_A"));
			bAnswerContent.setText(result.getString("answer_B"));
			cAnswerContent.setText(result.getString("answer_C"));
		}
	}
	
	@FXML
	public void aAnswer() throws SQLException {
		try {
			result = Main.statement.executeQuery("SELECT correct_answer FROM abc_questions where id_question = "+questionArray[i]+"");
			}
		 catch (Exception e) {
			e.printStackTrace();
		 }
		while(result.next())
		{
			if((Integer.parseInt(result.getString("correct_answer"))) == 1 && i < 11)
			{
				StudentTestYesNoController.score++;
				i++;
				questionCount++;
				nextQuestion();	
			}
			else if((Integer.parseInt(result.getString("correct_answer"))) != 1 && i < 11)
			{
				i++;
				questionCount++;
				nextQuestion();	
			}
			else if(i > 10)
			{
				endExam();
			}
		}
	}
	
	@FXML
	public void bAnswer() throws SQLException {
		try {
			result = Main.statement.executeQuery("SELECT correct_answer FROM abc_questions where id_question = "+questionArray[i]+"");
			}
		 catch (Exception e) {
			e.printStackTrace();
		 }
		while(result.next())
		{
			if((Integer.parseInt(result.getString("correct_answer"))) == 2 && i < 11)
			{
				StudentTestYesNoController.score++;
				i++;
				questionCount++;
				nextQuestion();	
			}
			else if((Integer.parseInt(result.getString("correct_answer"))) != 2 && i < 11)
			{
				i++;
				questionCount++;
				nextQuestion();	
			}
			else if(i > 10)
			{
				endExam();
			}
		}
	}
	
	@FXML
	public void cAnswer() throws SQLException {
		try {
			result = Main.statement.executeQuery("SELECT correct_answer FROM abc_questions where id_question = "+questionArray[i]+"");
			}
		 catch (Exception e) {
			e.printStackTrace();
		 }
		while(result.next())
		{
			if((Integer.parseInt(result.getString("correct_answer"))) == 3 && i < 11)
			{
				StudentTestYesNoController.score++;
				i++;
				questionCount++;
				nextQuestion();	
			}
			else if((Integer.parseInt(result.getString("correct_answer"))) != 3 && i < 11)
			{
				i++;
				questionCount++;
				nextQuestion();	
			}
			else if(i > 10)
			{
				endExam();
			}
		}
	}
	
	public static Integer getScore() {
		return StudentTestYesNoController.score;
	}
	
	public static String getScoreString() {
		return StudentTestYesNoController.score.toString();
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
