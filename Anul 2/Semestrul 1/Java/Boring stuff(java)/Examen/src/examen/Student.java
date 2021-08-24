package examen;

import java.io.*;

public class Student {
	private String nume;
	private String prenume;
	private int[] lista;

	Student(String a, String b, String note) {
		nume = a;
		prenume = b;
		String[] sirNote = new String[5];
		sirNote = note.split(" ");
		for (int i = 0; i < 5; i++) {
			lista[i] = Integer.parseInt(sirNote[i]);
		}
	}

	/*public String[] sortare1() {
		String[] listaStudenti = new String[100];

		try {
			FileReader fr = new FileReader("C:\\Users\\Stefan\\Desktop\\studenti.txt");
			BufferedReader br = new BufferedReader(fr);
			String student = "";

			while ((student = br.readLine()) != null) {
				for (int i=0;i<=)

			}

		} catch (IOException e) {
			System.out.println("A aparut o eroare la citirea din fisier");
		}

		return listaStudenti;
*/
	}

