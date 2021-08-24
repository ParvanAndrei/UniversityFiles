package aplicatie;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.Arrays;

public class DataLogic {
	
	
//******************************************************LISTARE DATE PENTRU AFISAT/ORDONAT*********************************************
	
	
	public synchronized ArrayList<Data> getDataFromFile(String path)
	{
		ArrayList<Data> liste = new ArrayList<Data>();
		try {
			FileReader fr = new FileReader(new File(path));
			BufferedReader br = new BufferedReader(fr);
			String line = "";
			
			while((line=br.readLine())!=null)
			{
				String[] split = line.split(",");
				Data localData = new Data(split[0],split[1],Integer.parseInt(split[2]));
				liste.add(localData);
				
			}
			fr.close();
			br.close();
			
		} catch (Exception e) {
			System.out.println(e.getStackTrace());
					}
		
		return liste;
	}
	
	
//***********************************************ADAUGARE DATE IN FISIER***************************************************************	
	public synchronized void setDataToFile(String path,Data dateDeSalvatInFisier)
	{	try {
		FileWriter fw = new FileWriter(new File(path), true);
		BufferedWriter bw = new BufferedWriter(fw);
		bw.write("\n"+dateDeSalvatInFisier.nume+","+dateDeSalvatInFisier.prenume+","+dateDeSalvatInFisier.param);
		bw.flush();
		bw.close();
		fw.close();
		
	} 
	
	catch (Exception e) {
	   System.out.println(e.getStackTrace());
	   System.out.println("cocomarla");
	}
	
	}
	
//***************************************************LISTARE DATE IN STRING PENTRU REMOVE*********************************************	
	public ArrayList<String> getDataFromFileString(String path)
	{
		ArrayList<String> list = new ArrayList();
		try {
			FileReader fr = new FileReader("text.txt");
			BufferedReader br = new BufferedReader(fr);
			String line = "";
			while((line=br.readLine())!=null)
			{
				list.add(line);
			}
			br.close();
			fr.close();
		} catch (Exception e) {
			System.out.println(e.getStackTrace());
		}
		return list;
	}

//***********************************************RUTINA STERGERE DATE DIN FISIER*****************************************************	
	
	public synchronized ArrayList<String> Remove(String linie)
	{
		ArrayList<String> remove = new ArrayList();
		remove = getDataFromFileString("text.txt");
		int index = 0;
		for(int i=0; i<remove.size(); i++)
		{	
			
			if((remove.get(i)+"\n").compareTo(linie) == 0) 
			{
				index = i ;
				}
			if((remove.get(i)).compareTo(linie) == 0) 
			{
				index = i;
				}
			
		}
		remove.remove(index);
		
		try {
			FileWriter fw = new FileWriter("text.txt");
			BufferedWriter bw = new BufferedWriter(fw);
			for (int i = 0; i<remove.size(); i++)
			{
				if(i!=0) 
					{bw.newLine();
					}
				bw.write(remove.get(i));
			}
			bw.flush();
			bw.close();
			fw.close();
			
		} catch (Exception e) {
			System.out.println(e.getStackTrace());
		}
		return remove;
	}
	
}
