package server;

import java.io.IOException;
import java.net.*;



public class ServerTCP{
	
	public static void main(String[] args) {
			
						
			ServerSocket serverSocket = null;
			try {
				serverSocket = new ServerSocket(3506);
				while (true) {
					
					Socket socket = serverSocket.accept();
					(new ServerTCPThread(socket)).start();
				}
			} catch (Exception e) {
				System.err.println(e);
			}finally{
				if(serverSocket != null)
					try {
						serverSocket.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
			}
		
	}
	
}