package reader;


import java.awt.Container;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.LayoutManager;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.WindowConstants;
import javax.swing.event.AncestorEvent;
import javax.swing.event.AncestorListener;

public class view extends JFrame{

	public view ()
	{
		Initialize();
	}
	
	public void Initialize()
	{
		this.setSize(500, 500);
		this.setLayout(new FlowLayout());
		
		JTextField tx= new JTextField(20);
		JTextField tx2 = new JTextField(20);
		JTextArea jl =new JTextArea(25,25);
		JButton btn = new JButton("Listeaza");
		btn.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				Thread th = new Thread(new myThread(jl));
				th.start();
				
			}
		});
		
		JButton btn2 = new JButton("Adauga");
		btn2.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				DataLogic datalogic = new DataLogic();
				Data dataDeAdaugat =new Data(tx.getText(),tx2.getText());
				datalogic.setDataToFail("text.txt", dataDeAdaugat );
				tx.setText("");
				tx2.setText("");
			}
		});
		
		JButton btn3 = new JButton("Update");
		btn3.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				
			}
		});
		
		this.add(tx);
		this.add(tx2);
		this.add(jl);
		this.add(btn);
		this.add(btn2);
		this.add(btn3);
		
		
		this.setVisible(true);
		this.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);

	}
}
