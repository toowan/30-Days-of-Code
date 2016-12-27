import java.io.*;
import java.util.*;

interface AdvancedArithmetic{
   int divisorSum(int n);
}

//Write your code here
class Calculator implements AdvancedArithmetic {
  private int n;
  // method declaration must be public to be accessed by Solution
  public int divisorSum (int n){
    int sum = 0;
    for (int i = 1; i <= n ; i++) {
      if (n % i == 0) {
        sum += i;
      }
    }
    return sum;
  }
}

// Provided by Hacker Rank:
class Solution {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int n = scan.nextInt();
        scan.close();

      	AdvancedArithmetic myCalculator = new Calculator();
        int sum = myCalculator.divisorSum(n);
        System.out.println("I implemented: " + myCalculator.getClass().getInterfaces()[0].getName() );
        System.out.println(sum);
    }
}
