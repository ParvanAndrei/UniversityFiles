//package PCLP3;
//
//import java.io.*;
//import java.util.ArrayList;
//
//public class CitireFisier {
//
//    public String CitireFisier(ArrayList<City> recorder) throws IOException {
//        String csvPath = "/Users/yoyol/Desktop/College stuff/cities.csv";
//
//        String first_line = "";
//
//        String restul_fisierului = "";
//        {
//
//                BufferedReader csvReader = new BufferedReader(new FileReader(csvPath));
//                first_line = csvReader.readLine();
//                City stacking_vector = new City();
//
//
//                String[] val = null;
//
//                    if (first_line != null)
//                        if (!" ".equals(first_line)) {
//                           val = first_line.split(",");
//
//                            stacking_vector.setName(val[0]);
//                            stacking_vector.setCountry(val[3]);
//
//                             {stacking_vector.setPopulation(Long.valueOf(val[4]));
//
//                            recorder.add(stacking_vector);
//
//
//                restul_fisierului = csvReader.readLine();
//                String line2;
//                while ((line2 = csvReader.readLine()) != null) {
//                    restul_fisierului += "\n" + line2;
//                }
//                csvReader.close();
//
//
//                if (restul_fisierului == null)
//                    restul_fisierului = " ";
//                BufferedWriter csvWriter = new BufferedWriter(new FileWriter(csvPath));
//                csvWriter.write(restul_fisierului);
//                csvWriter.close();
//
//            return restul_fisierului;
//
//        }
//    }
//}return restul_fisierului;}}
//
//
