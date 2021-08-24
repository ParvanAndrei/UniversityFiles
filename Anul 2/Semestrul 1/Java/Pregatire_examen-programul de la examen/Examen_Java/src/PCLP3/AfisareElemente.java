package PCLP3;

import java.util.ArrayList;

public class AfisareElemente {

    public void AfisareElemente(ArrayList<City> arrayCitit){

        for (int i=0; i<arrayCitit.size(); i++){
            System.out.println(arrayCitit.get(i).toString());
        }
    }
}
