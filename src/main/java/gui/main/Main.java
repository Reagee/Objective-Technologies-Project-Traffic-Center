package gui.main;

import java.sql.Connection;
import java.sql.DriverManager;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.layout.StackPane;
import javafx.stage.Stage;

public class Main extends Application {

	public static java.sql.Statement statement;
	
	public static void main(String[] args) {
		
		launch(args);
		
	}

	
	@Override
	public void start(Stage primaryStage) throws Exception {
		
		String url = "jdbc:mysql://localhost:3306/java";
		String user = "root";
		String password = ""; 
		
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection connection = DriverManager.getConnection(url,user,password);
		statement = connection.createStatement();
		
		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/fxml/MainScreen.fxml"));
		StackPane stackPane = loader.load();
		
		Scene scene = new Scene(stackPane);
		//primaryStage.setFullScreen(true);
		primaryStage.setMaximized(true);
		primaryStage.setScene(scene);
		primaryStage.setTitle("WORD");
		primaryStage.show();
		//dupa
	}

}
