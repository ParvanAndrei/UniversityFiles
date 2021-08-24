package aplicatie;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JComboBox;
import javax.swing.JButton;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.util.ArrayList;

public class ViewDelete {

	private JFrame frame;

	public ViewDelete() {
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
		
		JComboBox comboBox = new JComboBox();
		DataLogic date = new DataLogic();
		ArrayList<String> str = new ArrayList();
		str=date.getDataFromFileString("text.txt");
		
		for(int i=0; i<str.size(); i++)
		{
			comboBox.addItem(str.get(i));
		}
		
		comboBox.setBounds(10, 11, 414, 30);
		frame.getContentPane().add(comboBox);
		
		
		JButton btnSterge = new JButton("Sterge");
		btnSterge.setBounds(10, 220, 105, 30);
		frame.getContentPane().add(btnSterge);
		btnSterge.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				
				Thread th = new Thread(new ThreadDelete(comboBox));
				th.start();
				
			}
		});
		
		
		JButton btnRenunta = new JButton("Renunta");
		btnRenunta.setBounds(319, 220, 105, 30);
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
