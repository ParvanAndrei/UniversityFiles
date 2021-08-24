package aplicatie;

import java.util.ArrayList;
import java.util.Comparator;

import javax.swing.JTextPane;

public class ThreadSortNum implements Runnable{

	JTextPane textPane = new JTextPane();
	
	public ThreadSortNum(JTextPane textPane)
	{
		this.textPane= textPane;
	}
	
	@Override
	public void run() {
		DataLogic dataLogic = new DataLogic();
		ArrayList<Data> list  = dataLogic.getDataFromFile("text.txt");
		list.sort(new Comparator<Data>() {

			@Override
			public int compare(Data arg0, Data arg1) {
				
				if(arg0.param>arg1.param) return 1;
				if(arg0.param<arg1.param) return -1;
				
				return 0;
			}
		});
		textPane.setText(list.toString());	
	}

}
