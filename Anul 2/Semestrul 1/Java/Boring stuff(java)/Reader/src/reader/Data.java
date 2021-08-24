package reader;

public class Data {

	@Override
	public String toString() {
		return "Nume=" + nume + ", Prenume=" + prenume + "\n";
	}
	public String nume;
	public String prenume;
	
	public Data()
	{
		
	}
	public Data(String nume, String prenume)
	{
		this.nume = nume;
		this.prenume = prenume;
	}
}
