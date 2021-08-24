package test;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Vector;



public class DataLogic {
//.......................................................................................................................
	
	public ArrayList<Data> getFromFileA(String path)
	{
		ArrayList<Data> list = new ArrayList();
		try {
			FileReader fr = new FileReader("text.txt");
			BufferedReader br = new BufferedReader(fr);
			String line="";
			String nume;
		
			
			while((line=br.readLine())!=null)
			{
				String[] sp = line.split(",");
			
					Data localData = new Data((sp[0]), Integer.parseInt(sp[1]), Integer.parseInt(sp[2]), Integer.parseInt(sp[3]), Integer.parseInt(sp[4])) ;
				list.add(localData);
				
				
			}
			fr.close();
			br.close();
		}catch(Exception ex)
		{
			System.out.println("exceptie");
		}return list;
	}
	
	
	//..........................................................................................................................
	
	
	
	public ArrayList<String> getFromFileString(String path)
	{
		ArrayList<String> list = new ArrayList();
		try {
			FileReader fr = new FileReader("text.txt");
			BufferedReader br = new BufferedReader(fr);
			String line="";
			String nume;
			int x=1;
			while((line=br.readLine())!=null)
			{
				list.add(line);
				
			}
			
			fr.close();
			br.close();
		}catch(Exception ex)
		{
			System.out.println("Exceptie1");
		}return list;
	}
	
	
	//................................................................................................................
	
	
	
	public ArrayList<String> Remove(String linie)
	{
		ArrayList<String> remove = new ArrayList();
		remove = getFromFileString("text.txt");
		int index=0;
		for(int i=0;i<remove.size();i++)
		{
			if((remove.get(i)+"\n").compareTo(linie)==0)
			{
				index=i;
			}
			if((remove.get(i)).compareTo(linie)==0)
			{
				index=i;
			}
			
		}
		remove.remove(index);
		
		try
		{
			
			FileWriter fr = new FileWriter("text.txt");
			BufferedWriter bw = new BufferedWriter(fr);
			for(int i=0; i<remove.size(); i++)
			{
				if(i!=0)
				{
					bw.newLine();
				}
			
				bw.write(remove.get(i));
				
				
			}
			bw.flush();
			fr.close();
			bw.close();
		}catch(Exception ex)
		{
			System.out.println(ex.getStackTrace());
		}
		
		return remove;
	}
	
	
	//..................................................................................................................
	

		
	
		
		
		public void setDataToFail(String path,Data dateDeSalvat)
		{
			try
			{
				FileWriter fw = new FileWriter(new File(path),true);
				BufferedWriter bw = new BufferedWriter(fw);
				bw.write("\n"+dateDeSalvat.nume+","+dateDeSalvat.a+","+dateDeSalvat.b+","+dateDeSalvat.c+","+dateDeSalvat.d);
				bw.flush();
				bw.close();
				fw.close();
				
				
			}catch (Exception e) {
				System.out.println(e.getStackTrace());
			}
		}
		
		
		//...............................................................................................................
}
