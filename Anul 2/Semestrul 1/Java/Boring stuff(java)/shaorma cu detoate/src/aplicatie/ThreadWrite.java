package aplicatie;

import javax.swing.JTextField;

public class ThreadWrite implements Runnable{
	
	JTextField tx1 = new JTextField();
	JTextField tx2 = new JTextField();
	JTextField tx3 = new JTextField();
	
	public ThreadWrite(JTextField tx1,JTextField tx2,JTextField tx3)
	{
		this.tx1=tx1;
		this.tx2=tx2;
		this.tx3=tx3;
	}
	
	@Override
	public void run() {
		DataLogic dataLogic = new DataLogic();
		Data dateData = new Data(tx1.getText(),tx2.getText(),Integer.parseInt(tx3.getText()));
		dataLogic.setDataToFile("text.txt",dateData);
		tx1.setText("");
		tx2.setText("");
		tx3.setText("");
		
	}

}
