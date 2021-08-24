package test;

public class Data {

	
	public String nume;
	public int a, b, c, d;
	double medie=0;
	
	public String toString() {
		return  nume  + " " + " " + "(" + a + ") (" + b + ") (" + c + ") (" + d +  ") \n";
	}
	
	public Data(String nume, int a, int b, int c, int d)
	{
		this.nume=nume;
		this.a=a;
		this.b=b;
		this.c=c;
		this.d=d;
		double medie = (a+b+c+d)/4;

	}
	
	
}
