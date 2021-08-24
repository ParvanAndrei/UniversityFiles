package PCLP3;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

public class Citire {
    public ArrayList<City> Citire(){

    String csvPath = "/Users/yoyol/Desktop/College stuff/cities.csv";
    ArrayList<City> records = new ArrayList<>();

    {

        try{
            BufferedReader csvReader = new BufferedReader(new FileReader(csvPath));
            String line = "";
            while ((line = csvReader.readLine()) != null){
                City  stacking_vector =new City();
                String[] var = line.split(",");

                stacking_vector.setName(var[0]);
                stacking_vector.setCountry(var[3]);
                stacking_vector.setPopulation(Long.valueOf(var[4]));

                records.add(stacking_vector);}


        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    return records;
}
}
