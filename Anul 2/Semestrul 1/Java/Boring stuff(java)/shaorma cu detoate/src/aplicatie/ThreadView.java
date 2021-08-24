package aplicatie;

import java.util.ArrayList;

import javax.swing.JButton;
import javax.swing.JTextArea;
import javax.swing.JTextPane;

public class ThreadView implements Runnable {

	JTextPane tp = new JTextPane();
	
	public ThreadView(JTextPane tp)
	{
		this.tp=tp;
	}

	@Override
	public void run() {
		DataLogic dataLogic = new DataLogic();
		ArrayList<Data> liste = dataLogic.getDataFromFile("text.txt");
		tp.setText(liste.toString());
		
	}
	
}
