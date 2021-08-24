package examen;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.*;

public class Main {

	public static void main(String[] args) {
		JFrame f = new JFrame("Add");
		f.setPreferredSize(new Dimension(600, 600));
		f.setResizable(false);
		f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		// Labeluri
		JLabel labelNume = new JLabel("Nume");
		JLabel labelPrenume = new JLabel("Prenume");
		JLabel labelNota1 = new JLabel("Nota1");
		JLabel labelNota2 = new JLabel("Nota2");
		JLabel labelNota3 = new JLabel("Nota3");
		JLabel labelNota4 = new JLabel("Nota4");
		JLabel labelNota5 = new JLabel("Nota5");
		labelNume.setBounds(150, 70, 50, 50);
		labelPrenume.setBounds(150, 140, 50, 50);
		labelNota1.setBounds(150, 210, 150, 50);
		labelNota1.setBounds(150, 280, 150, 50);
		labelNota1.setBounds(150, 350, 150, 50);
		labelNota1.setBounds(150, 420, 150, 50);
		labelNota1.setBounds(150, 490, 150, 50);

		// text area
		JTextArea textNume = new JTextArea();
		textNume.setBounds(200, 70, 150, 50);
		JTextArea textPrenume = new JTextArea();
		textPrenume.setBounds(200, 140, 150, 50);
		JTextArea nota1 = new JTextArea();
		nota1.setBounds(200, 210, 150, 50);
		JTextArea nota2 = new JTextArea();
		nota2.setBounds(200, 280, 150, 50);
		JTextArea nota3 = new JTextArea();
		nota3.setBounds(200, 350, 150, 50);
		JTextArea nota4 = new JTextArea();
		nota4.setBounds(200, 420, 150, 50);
		JTextArea nota5 = new JTextArea();
		nota5.setBounds(200, 490, 150, 50);
		// Buton add
		JButton adauga = new JButton("Add");
		adauga.setBounds(400, 400, 100, 100);
		// Actiunea pe butonul add
		adauga.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				try {
					
					FileWriter fw = new FileWriter("C:\\Users\\Stefan\\Desktop\\studenti.txt",true);
					BufferedWriter bw = new BufferedWriter(fw);
					
					
					bw.write("\r\n"+textNume.getText() + " " + textPrenume.getText() + " " + nota1.getText() + " "
							+ nota2.getText() + " " + nota3.getText() + " " + nota4.getText() + " " + nota5.getText());
					bw.close();
				} catch (IOException e) {
				}

			}
		});
		// buton catre fereastra de view
		JButton view = new JButton("View");
		view.setBounds(400, 300, 100, 100);
		view.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				JFrame vezi=new JFrame("Lista Studenti");
				vezi.setPreferredSize(new Dimension(400,400));
				JTextArea listaStudenti=new JTextArea();
				listaStudenti.setBounds(0, 0,200,200);
				String student="";
				try{
					FileReader fr=new FileReader("C:\\Users\\Stefan\\Desktop\\studenti.txt");
					BufferedReader br=new BufferedReader(fr);
					while((student=br.readLine())!=null){
						listaStudenti.setText(listaStudenti.getText()+"\n\r"+student);
					}
					br.close();
				}catch(IOException e){
					System.out.println("A aparut o exceptie");
				}
				vezi.add(listaStudenti);
				vezi.pack();
				vezi.setVisible(true);
				vezi.setResizable(false);
				
				
			}
		});
		

		f.add(labelNota1);
		f.add(labelNota2);
		f.add(labelNota3);
		f.add(labelNota4);
		f.add(labelNota5);
		f.add(nota1);
		f.add(nota2);
		f.add(nota3);
		f.add(nota4);
		f.add(nota5);
		f.add(adauga);
		f.add(view);
		f.add(textPrenume);
		f.add(textNume);
		f.add(labelNume);
		f.add(labelPrenume);
		f.pack();
		f.setVisible(true);

	}

}
