package aplicatie;

import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.Comparator;

import javax.swing.JFrame;
import javax.swing.JTextPane;
import javax.swing.JButton;

public class ViewSort {

	private JFrame frame;

		public ViewSort() {
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
		textPane.setBounds(187, 10, 237, 240);
		frame.getContentPane().add(textPane);
//***************************************************RUTINA APEL ORDONARE ALFABETICA***********************************************************		
		JButton btnOrdonareAlfabetic = new JButton("Ordonare alfabetic");
		btnOrdonareAlfabetic.setBounds(10, 10, 167, 40);
		frame.getContentPane().add(btnOrdonareAlfabetic);
		btnOrdonareAlfabetic.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				Thread th = new Thread(new ThreadSortA(textPane));
				th.start();
			}
		});
		
		
//***************************************************RUTINA APEL ORDONARE ALFABETICA INVERSA****************************************************		
		JButton btnOrdonareAlfabeticInvers = new JButton("Ordonare alfabetic invers");
		btnOrdonareAlfabeticInvers.setBounds(10, 61, 167, 40);
		frame.getContentPane().add(btnOrdonareAlfabeticInvers);
		
		btnOrdonareAlfabeticInvers.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				Thread th = new Thread(new ThreadSortAI(textPane));
				th.start();
				
				
			}
		});

//**************************************************************RUTINA APEL ORDONARE NUMERICA *********************************		
		
		JButton btnOrdonareDupaParametru = new JButton("Ordonare dupa parametru");
		btnOrdonareDupaParametru.setBounds(10, 112, 167, 40);
		frame.getContentPane().add(btnOrdonareDupaParametru);
		
		btnOrdonareDupaParametru.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
					
				Thread th = new Thread(new ThreadSortNum(textPane));
				th.start();
									
			}
		});

//**********************************************************************************************************************************		
		
		JButton btnOrdonareParametricInvers = new JButton("Ordonare param. invers");
		btnOrdonareParametricInvers.setBounds(10, 163, 167, 40);
		frame.getContentPane().add(btnOrdonareParametricInvers);
		
		btnOrdonareParametricInvers.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				
				Thread th = new Thread(new ThreadSortNumI(textPane));
				th.start();
				
			}
		});

//***********************************************************************************************************************************
		
		JButton btnRenunta = new JButton("Renunta");
		btnRenunta.setBounds(10, 225, 167, 23);
		frame.getContentPane().add(btnRenunta);
		btnRenunta.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				frame.setVisible(false);
				ViewMain vm = new ViewMain();
				
			}
		});
	}
}
