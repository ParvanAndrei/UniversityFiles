package aplicatie;

import java.util.ArrayList;
import java.util.Comparator;

import javax.swing.JTextPane;

public class ThreadSortAI implements Runnable{

	JTextPane textPane = new JTextPane();
	
	public ThreadSortAI(JTextPane textPane) {
		this.textPane=textPane;
	}
	
	@Override
	public void run() {
		DataLogic dataLogic = new DataLogic();
		ArrayList<Data> list = dataLogic.getDataFromFile("text.txt");
		list.sort(new Comparator<Data>() {
			@Override
			public int compare(Data arg0,Data arg1)
			{
				return arg1.nume.compareTo(arg0.nume);
			}
		});
		textPane.setText(list.toString());		
		
	}

}
