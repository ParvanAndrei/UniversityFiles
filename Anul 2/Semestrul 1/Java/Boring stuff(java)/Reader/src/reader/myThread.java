package reader;

import java.util.ArrayList;

import javax.swing.JTextArea;

public class myThread implements Runnable{

	JTextArea tx= new JTextArea();
	
	public myThread(JTextArea tx) {
		this.tx = tx;
	}
	
	
	@Override
	public void run() {
		DataLogic datalogic = new DataLogic();
		ArrayList<Data> lista = datalogic.getDataFromFile("text.txt");
		tx.setText(lista.toString());
		
	}

}
