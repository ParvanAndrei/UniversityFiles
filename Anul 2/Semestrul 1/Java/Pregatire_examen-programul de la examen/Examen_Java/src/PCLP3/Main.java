package PCLP3;

import java.util.ArrayList;
import java.util.Collections;

public class Main {

    public static void main(String[] args) {
	// class Cities{ string name, string country, long population}
        //1. Cititi o lista de care vreti voi de tip city
        //2.sortati lista dupa population
        //3.Afisati sumele oraselor ca populatie pe tara

        System.out.println("Se citesc elementele din fisierul csv si se afiseaza: " +"\n");
        ArrayList<City> cities = new ArrayList<City>();
        Citire citireFisier = new Citire();

        cities = citireFisier.Citire();


        AfisareElemente afisareElemente = new AfisareElemente();
        afisareElemente.AfisareElemente(cities);
        System.out.println("\n" + "Se sorteaza in functie de populatie.");



        SortareDupaPopulatie pc1 = new SortareDupaPopulatie();
        Collections.sort(cities, pc1);
        for (City carti : cities){
            System.out.println(carti.toString());
        }


}
}
