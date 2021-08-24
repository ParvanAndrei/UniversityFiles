package aplicatie;

import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;

import javax.swing.JFrame;
import javax.swing.JTextField;
import javax.swing.JLabel;
import javax.swing.JButton;
import javax.swing.JTextPane;

public class ViewMain {

	private JFrame frame;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					ViewMain window = new ViewMain();
					
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public ViewMain() {
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
		
		JTextPane textPane = new JTextPane();
		textPane.setBounds(10, 57, 414, 97);
		frame.getContentPane().add(textPane);
	
//LISTARE DATE IN MENIU		
		
		JButton btnListeazaDatele = new JButton("Listeaza datele");
		btnListeazaDatele.setBounds(167, 199, 124, 37);
		frame.getContentPane().add(btnListeazaDatele);
		btnListeazaDatele.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				Thread th = new Thread(new ThreadView(textPane));
				th.start();
				
			}
		});

//APELUL RUTINEI DE ADAUGARE		
		
		JButton btnAdauga = new JButton("Adauga");
		btnAdauga.setBounds(31, 165, 89, 23);
		frame.getContentPane().add(btnAdauga);
		btnAdauga.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				frame.setVisible(false);
				ViewWrite vw= new ViewWrite();
				
			}
		});

//APELUL RUTINEI DE STERGERE		
		
		JButton btnSterge = new JButton("Sterge");
		btnSterge.setBounds(163, 165, 89, 23);
		frame.getContentPane().add(btnSterge);
		btnSterge.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				frame.setVisible(false);
				ViewDelete vd = new ViewDelete();
				
			}
		});

//APELUL RUTINEI DE STERGERE
		
		JButton btnOrdona = new JButton("Ordona");
		btnOrdona.setBounds(300, 165, 89, 23);
		frame.getContentPane().add(btnOrdona);
		btnOrdona.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				frame.setVisible(false);
				ViewSort vs = new ViewSort();
				
			}
		});
		
		JLabel lblExempluProgram = new JLabel("Exemplu program");
		lblExempluProgram.setBounds(183, 11, 108, 50);
		frame.getContentPane().add(lblExempluProgram);
	}
}
