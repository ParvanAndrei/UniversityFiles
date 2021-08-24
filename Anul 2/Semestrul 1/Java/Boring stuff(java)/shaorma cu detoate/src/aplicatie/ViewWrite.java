package aplicatie;

import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JFrame;
import javax.swing.JTextField;
import javax.swing.JButton;
import javax.swing.JLabel;

public class ViewWrite {

	private JFrame frame;
	private JTextField textField;
	private JTextField textField_1;
	private JTextField textField_2;

	/**
	 * Launch the application.
	 */
	
	public ViewWrite() {
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
		
		textField = new JTextField();
		textField.setBounds(123, 10, 200, 50);
		frame.getContentPane().add(textField);
		textField.setColumns(10);
		
		textField_1 = new JTextField();
		textField_1.setBounds(123, 66, 200, 50);
		frame.getContentPane().add(textField_1);
		textField_1.setColumns(10);
		
		textField_2 = new JTextField();
		textField_2.setBounds(123, 122, 200, 50);
		frame.getContentPane().add(textField_2);
		textField_2.setColumns(10);
		
		JButton btnAdauga = new JButton("Adauga");
		btnAdauga.setBounds(10, 80, 89, 23);
		frame.getContentPane().add(btnAdauga);
		btnAdauga.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				Thread th = new Thread(new ThreadWrite(textField,textField_1,textField_2));
				th.start();
			}
		});
		
		JButton btnRenunta = new JButton("Renunta");
		btnRenunta.setBounds(335, 227, 89, 23);
		frame.getContentPane().add(btnRenunta);
		btnRenunta.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				frame.setVisible(false);
				ViewMain v = new ViewMain();
				
			}
		});
		
		JLabel lblNume = new JLabel("Nume");
		lblNume.setBounds(329, 10, 69, 50);
		frame.getContentPane().add(lblNume);
		
		JLabel lblPrenume = new JLabel("Prenume");
		lblPrenume.setBounds(329, 66, 57, 50);
		frame.getContentPane().add(lblPrenume);
		
		JLabel lblParametru = new JLabel("Parametru");
		lblParametru.setBounds(329, 122, 57, 50);
		frame.getContentPane().add(lblParametru);
	}

}
