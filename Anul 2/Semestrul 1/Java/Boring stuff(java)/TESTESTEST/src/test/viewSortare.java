package test;

import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.Comparator;

import javax.swing.JFrame;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JTextPane;

public class viewSortare {

	private JFrame frame;

	
	public viewSortare() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frame = new JFrame();
		frame.setVisible(true);
		frame.setBounds(100, 100, 450, 300);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		
		JButton btnBack = new JButton("Back");
		btnBack.setBounds(335, 227, 89, 23);
		frame.getContentPane().add(btnBack);
		
		JTextPane textPane = new JTextPane();
		textPane.setBounds(115, 11, 288, 205);
		frame.getContentPane().add(textPane);
		//...............................................................................................................................
		
		JButton btnAlfabetic = new JButton("Alfabetic");
		btnAlfabetic.setBounds(10, 11, 89, 23);
		frame.getContentPane().add(btnAlfabetic);
		
		btnAlfabetic.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				DataLogic dataLogic = new DataLogic();
				ArrayList<Data> list = dataLogic.getFromFileA("text.txt");
				list.sort(new Comparator<Data>() {

					@Override
					public int compare(Data arg0, Data arg1) {
						return arg0.nume.compareTo(arg1.nume);
						
					}
				});
				textPane.setText(list.toString());
				
			}
		});
		//......................................................................................................................
		JButton btnAlfabeticInvers = new JButton("Alfabetic invers");
		btnAlfabeticInvers.setBounds(10, 45, 89, 23);
		frame.getContentPane().add(btnAlfabeticInvers);
		
		btnAlfabeticInvers.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				DataLogic dataLogic = new DataLogic();
				ArrayList<Data> list = dataLogic.getFromFileA("text.txt");
				
				list.sort(new Comparator<Data>() {

					@Override
					public int compare(Data arg0, Data arg1) {
						return arg1.nume.compareTo(arg0.nume);
						
					}
				});
				
				textPane.setText(list.toString());
				
			}
		});
		//...........................................................................................................................
		JButton btnDupaParam = new JButton("Dupa param");
		btnDupaParam.setBounds(10, 79, 89, 23);
		frame.getContentPane().add(btnDupaParam);
		btnDupaParam.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				DataLogic dataLogic = new DataLogic();
				ArrayList<Data> list = dataLogic.getFromFileA("text.txt");
				
				list.sort(new Comparator<Data>() {

					@Override
					public int compare(Data arg0, Data arg1) {
						if((arg0.a + arg0.b + arg0.c +arg0.d)/4>(arg1.a + arg1.b + arg1.c +arg1.d)/4)
						{
							return 1;
						}
						if((arg0.a + arg0.b + arg0.c +arg0.d)/4<(arg1.a + arg1.b + arg1.c +arg1.d)/4)
						{
							return -1;
						}
						return 0;
						
						
					}
				});
				
				
				
				textPane.setText(list.toString());
				
			}
		});
		//..........................................................................................................................
		JButton btnDupaParamInvers = new JButton("Dupa param invers");
		btnDupaParamInvers.setBounds(10, 113, 89, 23);
		frame.getContentPane().add(btnDupaParamInvers);
		
		btnDupaParamInvers.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				DataLogic dataLogic = new DataLogic();
				ArrayList<Data> list = dataLogic.getFromFileA("text.txt");
				
				list.sort(new Comparator<Data>() {

					@Override
					public int compare(Data arg0, Data arg1) {
						if((arg0.a + arg0.b + arg0.c +arg0.d)/4>(arg1.a + arg1.b + arg1.c +arg1.d)/4)
						{
							return -1;
						}
						if((arg0.a + arg0.b + arg0.c +arg0.d)/4<(arg1.a + arg1.b + arg1.c +arg1.d)/4)
						{
							return 1;
						}
						return 0;
						
						
					}
				});
				
				textPane.setText(list.toString());
				
			}
		});
		//...........................................................................................................................
		btnBack.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				frame.setVisible(false);
				view vf = new view();
				
			}
		});
	}
}
