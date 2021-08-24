import java.io.*;
public class Driver2{
    public static void main(String[] args) throws Exception{
        File f = new File("in2.txt");
        FileInputStream fis = new FileInputStream (f);
        Yylex scanner = new Yylex(fis);
        int sum = 0;
        do{
            IntLit token = scanner.next_token();
            System.out.println(token);
            if (token == null) {
                break;
            }
            sum = sum + token.valueGet();
        } while(true);
        System.out.println("Suma este " + sum);
    }
}