package PCLP3;

public class City implements Comparable<City> {
    private String name;
    private String country;
    private long population;

//    public City(String s, String s1, long parseInt) {
//    }

    public String getPrimaLinie() {
        return PrimaLinie;
    }

    public void setPrimaLinie(String primaLinie) {
        PrimaLinie = primaLinie;
    }

    private String PrimaLinie;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public long getPopulation() {
        return population;
    }

    public void setPopulation(long population) {
        this.population = population;
    }

    public String toString(){
        return getName() + " " + getCountry() + " " + getPopulation();
    }

    @Override
    public int compareTo(City city) {
        return (int)this.getPopulation() - (int)city.getPopulation();
    }
}
