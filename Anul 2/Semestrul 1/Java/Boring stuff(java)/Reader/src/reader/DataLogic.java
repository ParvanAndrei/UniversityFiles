package reader;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.nio.Buffer;
import java.nio.channels.Pipe.SinkChannel;
import java.util.ArrayList;

public class DataLogic {


	
	public synchronized ArrayList<Data> getDataFromFile(String path)
	{
		ArrayList<Data> lista =  new ArrayList<Data>();
		try{
			FileReader fr = new FileReader(new File (path));
			BufferedReader br = new BufferedReader(fr);
			String line= "";
			while ( (line=br.readLine())!= null) {
				String[] split = line.split(",");
				Data localData = new Data(split[0],split[1]);
				lista.add(localData);
			
			}
			br.close();
			fr.close();
			
		}
		catch (Exception ex) {
			System.out.println(ex.getStackTrace());
		}

		return lista;
	}
	
	
	public void setDataToFail(String path,Data dataDeSalvatInFisier)
	{
		try
		{
			FileWriter fw = new FileWriter(new File(path),true);
			BufferedWriter bw = new BufferedWriter(fw);
			bw.write("\n"+dataDeSalvatInFisier.nume+","+dataDeSalvatInFisier.prenume);
			bw.flush();
			bw.close();
			fw.close();
			
			
		}catch (Exception e) {
			System.out.println(e.getStackTrace());
		}
	}
}
