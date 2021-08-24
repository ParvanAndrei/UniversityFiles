package test;

import java.util.ArrayList;
import java.util.Vector;

public class Main {

	public static void main(String args[]) {
		
		DataLogic datalogicA = new DataLogic();

		ArrayList<Data> arr = datalogicA.getFromFileA("text.txt");
		
		System.out.println(arr.toString());
	
		

	}

}
