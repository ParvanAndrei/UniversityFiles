package test;

import java.awt.EventQueue;

import javax.swing.JFrame;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Scanner;

import javax.swing.JButton;
import javax.swing.JTextField;
import javax.swing.JLabel;

public class vieWriter {

	private JFrame frame;
	private JTextField textField;
	private JTextField textField_1;
	private JTextField textField_2;
	private JTextField textField_3;
	private JTextField textField_4;

	
	public vieWriter() {
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
		//......................................................................................................................
		JButton btnAdauga = new JButton("Adauga");
		btnAdauga.setBounds(10, 11, 89, 23);
		frame.getContentPane().add(btnAdauga);
		
btnAdauga.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				
				DataLogic add = new DataLogic();
				Data dateDeAdaugat = new Data(textField.getText(), Integer.parseInt(textField_1.getText()), Integer.parseInt(textField_2.getText()), Integer.parseInt(textField_3.getText()), Integer.parseInt(textField_4.getText()));
				add.setDataToFail("text.txt",dateDeAdaugat);
				
			}
		});
		
		//........................................................................................................................
		
		
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
		
		//.........................................................................................................................

		
		
		
		textField = new JTextField();
		textField.setBounds(149, 12, 86, 20);
		frame.getContentPane().add(textField);
		textField.setColumns(10);
		//..........................................................................................................................
		
		textField_1 = new JTextField();
		textField_1.setBounds(149, 43, 86, 20);
		frame.getContentPane().add(textField_1);
		textField_1.setColumns(10);
		//.......................................................................................................................
		
		textField_2 = new JTextField();
		textField_2.setBounds(149, 74, 86, 20);
		frame.getContentPane().add(textField_2);
		textField_2.setColumns(10);
		//.......................................................................................................................
		
		textField_3 = new JTextField();
		textField_3.setBounds(149, 105, 86, 20);
		frame.getContentPane().add(textField_3);
		textField_3.setColumns(10);
		//.......................................................................................................................
		
		textField_4 = new JTextField();
		textField_4.setBounds(149, 136, 86, 20);
		frame.getContentPane().add(textField_4);
		textField_4.setColumns(10);
		
		
		//.......................................................................................................................

		
		
		
		JLabel lblParam = new JLabel("Param.1");
		lblParam.setBounds(249, 15, 89, 14);
		frame.getContentPane().add(lblParam);
		//.......................................................................................................................
		JLabel lblParam_1 = new JLabel("Param.2");
		lblParam_1.setBounds(249, 46, 89, 14);
		frame.getContentPane().add(lblParam_1);
		//.......................................................................................................................
		JLabel lblParam_2 = new JLabel("Param.3");
		lblParam_2.setBounds(245, 77, 93, 14);
		frame.getContentPane().add(lblParam_2);
		//.......................................................................................................................
		JLabel lblParam_3 = new JLabel("Param.4");
		lblParam_3.setBounds(245, 108, 93, 14);
		frame.getContentPane().add(lblParam_3);
		//.......................................................................................................................
		JLabel lblParam_4 = new JLabel("Param.5");
		lblParam_4.setBounds(245, 139, 93, 14);
		frame.getContentPane().add(lblParam_4);
	}
}
