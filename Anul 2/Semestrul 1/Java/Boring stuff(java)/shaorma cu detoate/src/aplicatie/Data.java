package aplicatie;

public class Data {
	public String nume;
	public String prenume;
	public int param;
	@Override
	public String toString() {
		return "Nume: " + nume + " Prenume: " + prenume + " Parametru: " + param +"\n";
	}
	public Data(){}
	public Data(String nume,String prenume,int param)
	{
		this.nume=nume;
		this.prenume=prenume;
		this.param=param;
	}
	
	
}
