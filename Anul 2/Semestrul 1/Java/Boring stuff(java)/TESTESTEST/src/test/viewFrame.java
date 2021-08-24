package test;

import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;

import javax.swing.JFrame;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JComboBox;

public class viewFrame {

	private JFrame frame=new JFrame();


	public viewFrame() {

		initialize();
	}


	private void initialize() {
		
		frame = new JFrame();
		
		frame.setVisible(true);
		frame.setBounds(100, 100, 450, 300);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		//..........................................................................................................................
		JComboBox comboBox = new JComboBox();
		DataLogic date = new DataLogic();
		ArrayList<String> str = new ArrayList();
		str=date.getFromFileString("text.txt");
		for(int i=0; i<str.size(); i++)
		{
		comboBox.addItem(str.get(i));
		}
	
		comboBox.setBounds(10, 11, 402, 36);
		frame.getContentPane().add(comboBox);
		//..........................................................................................................................
		JButton btnSterge = new JButton("Sterge");
		btnSterge.setBounds(242, 227, 89, 23);
		frame.getContentPane().add(btnSterge);
		btnSterge.addActionListener(new ActionListener() {
			
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				comboBox.getSelectedItem();
				DataLogic remove = new DataLogic();
				remove.Remove((String)comboBox.getSelectedItem());
				
				
				ArrayList<String> str = new ArrayList();
				str=date.getFromFileString("text.txt");
				comboBox.removeAllItems();
				for(int i=0; i<str.size(); i++)
				{
				comboBox.addItem(str.get(i)+"\n");
				}
				
			}
		});
		
		
		//..........................................................................................................................
		JButton btnCancel = new JButton("Cancel");
		btnCancel.setBounds(335, 227, 89, 23);
		frame.getContentPane().add(btnCancel);
		btnCancel.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				frame.setVisible(false);
				view vf = new view();
				
			}
		});
		
	}
}
