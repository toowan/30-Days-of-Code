### Provided by Hacker Rank
import java.util.*;
abstract class Book
{
    String title;
    String author;
    Book(String t,String a){
        title=t;
        author=a;
    }
    abstract void display();


}

### Only this block below is my work
//Write MyBook Class
//** Subclass of Book **/
class MyBook extends Book {
    /** Parameterized Constructor **/
    private int price; // declare price as a private integer
    MyBook(String title, String author, int price){
        super(title, author);
        this.price = price;
    }

    /** Abstract method implementation
    *   print out myBook info **/
    void display(){
        System.out.println("Title: " +title);
        System.out.println("Author: " +author);
        System.out.println("Price: " +price);
    }
}

### Below code is provided by Hacker Rank
public class Solution
{

   public static void main(String []args)
   {
      Scanner sc=new Scanner(System.in);
      String title=sc.nextLine();
      String author=sc.nextLine();
      int price=sc.nextInt();
      Book new_novel=new MyBook(title,author,price);
      new_novel.display();

   }
}
