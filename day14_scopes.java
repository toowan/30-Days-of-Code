// Provided by Hacker Rank
import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

class Difference {
  	private int[] elements;
  	public int maximumDifference;

// Only this block below is my work
// Parameterized Constructor
    public Difference(int[] elements){
        this.elements = elements;

    }
    // Calculate maximum and minimum and then take their difference.
    public void computeDifference() {
        int max=1, min=100; // initialize max at 1 and min at 100
        for (int e: elements) {  // iterate though each element in the array
            max = Math.max(max, e); // compare current max value to current element and return the max
            min = Math.min(min, e); // compare current min value to current element and return the min
        }
        maximumDifference = max - min;
    }
} // End of Difference class

// Below code is provided by Hacker Rank
public class Solution {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int[] a = new int[n];
        for (int i = 0; i < n; i++) {
            a[i] = sc.nextInt();
        }
        sc.close();
        Difference difference = new Difference(a);
        difference.computeDifference();
        System.out.print(difference.maximumDifference);
    }
}
