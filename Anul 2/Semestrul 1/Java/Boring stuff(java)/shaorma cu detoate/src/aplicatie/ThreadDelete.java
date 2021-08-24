package aplicatie;

import java.util.ArrayList;

import javax.swing.JComboBox;

public class ThreadDelete implements Runnable{
	
	JComboBox comboBox = new JComboBox();
	DataLogic date = new DataLogic();
	
	public ThreadDelete(JComboBox comboBox)
	{
		this.comboBox=comboBox;
	}	
	
	@Override
	public void run() {
		comboBox.getSelectedItem();
		DataLogic remove = new DataLogic();
	    remove.Remove((String)comboBox.getSelectedItem());
	    
	    ArrayList<String> str = new ArrayList();
		str = date.getDataFromFileString("text.txt");
		comboBox.removeAllItems();
		
		for(int i=0; i<str.size(); i++)
		{
			comboBox.addItem(str.get(i)+"\n");
		}
		
	}

}
