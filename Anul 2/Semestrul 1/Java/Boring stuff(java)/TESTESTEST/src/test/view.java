package test;

import java.awt.EventQueue;

import javax.swing.JFrame;
import java.awt.Window.Type;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.Vector;
import java.awt.FlowLayout;
import javax.swing.BoxLayout;
import javax.swing.ComboBoxEditor;
import javax.swing.JButton;
import javax.swing.JTextPane;
import java.awt.Component;
import javax.swing.JComboBox;
import javax.swing.JMenu;

public class view {

	private JFrame frame;


	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					view window = new view();
					
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}


	public view() {
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
		JTextPane textPane = new JTextPane();
		JButton btnAfisare = new JButton("Afisare");
		textPane.setBounds(98, 11, 306, 208);
		frame.getContentPane().add(textPane);
		
		//......................................................................................................................
		
		btnAfisare.setBounds(-1, 17, 89, 23);
		frame.getContentPane().add(btnAfisare);
		btnAfisare.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				DataLogic dataLogic = new DataLogic();
				ArrayList<Data> list = dataLogic.getFromFileA("text.txt");
				textPane.setText(list.toString());
				
			}
		});
		
	
		
		//......................................................................................................................
		JButton btnStergere = new JButton("Stergere");
		btnStergere.setBounds(0, 51, 89, 23);
		frame.getContentPane().add(btnStergere);
		btnStergere.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				frame.setVisible(false);
				viewFrame vf = new viewFrame();
				
				
			}
		});
		
		//......................................................................................................................
		JButton btnAdaugare = new JButton("Adaugare");
		btnAdaugare.setBounds(0, 85, 89, 23);
		frame.getContentPane().add(btnAdaugare);
		
		btnAdaugare.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				frame.setVisible(false);
				vieWriter vf = new vieWriter();
				
			}
		});
		
		//......................................................................................................................
		JButton btnSortare = new JButton("Sortare");
		btnSortare.setBounds(-1, 119, 89, 23);
		frame.getContentPane().add(btnSortare);
		
		btnSortare.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				frame.setVisible(false);
				viewSortare vf = new viewSortare();
				
			}
		});
		
		//......................................................................................................................
		
		
		
	}
}
