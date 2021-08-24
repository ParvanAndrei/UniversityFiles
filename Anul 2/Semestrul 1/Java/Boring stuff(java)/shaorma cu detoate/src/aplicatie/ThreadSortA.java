package aplicatie;

import java.util.ArrayList;
import java.util.Comparator;

import javax.swing.JTextPane;

public class ThreadSortA implements Runnable {
	JTextPane textPane = new JTextPane();
	
	 public ThreadSortA(JTextPane textPane) {
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
				return arg0.nume.compareTo(arg1.nume);
			}
		});
		textPane.setText(list.toString());		
		
		
	}
	

}
