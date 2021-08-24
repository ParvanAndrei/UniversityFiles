package test;

public class Data1 {
	
	public String nume;
	String a, b, c, d;
	int x;
	public String toString() {
		return  nume + " " + x + " " + "(" + a + ") (" + b + ") (" + c + ") (" + ")\n";
	}
	
	public Data1(String nume, int x, String a, String b, String c)
	{
		this.nume=nume;
		this.a=a;
		this.b=b;
		this.c=c;
		this.x=x;
	}

}
