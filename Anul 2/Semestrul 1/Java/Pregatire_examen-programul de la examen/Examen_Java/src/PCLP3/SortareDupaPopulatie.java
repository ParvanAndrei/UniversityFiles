package PCLP3;

import java.util.Comparator;

public class SortareDupaPopulatie implements Comparator<City> {
    @Override
    public int compare(City city1, City city2) {
        if (city1.getPopulation() < city2.getPopulation()) return -1;
        if (city1.getPopulation() > city2.getPopulation()) return 1;
        else return 0;
    }
}
