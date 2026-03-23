package streamreduce;

import java.util.Arrays;
import java.util.List;

public class Practice4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List <Integer> list = Arrays.asList(12,45,7,82,23,56);
		List <String> list1 = Arrays.asList("Java","Stream","API","Reduce","Programming");
		
		int max = list.stream().reduce(0, (a, b) -> a > b ? a : b);
		System.out.println("Max = " +max);
		int smax = list.stream().reduce(0, (a, b) -> a > b &&  a < max ? a:b);
		System.out.println("smax = " +smax);
		
		
		int min = list.stream().reduce(Integer.MAX_VALUE, (a, b) -> a < b ? a : b);
		System.out.println("Min = " +min);
		int smin = list.stream().reduce(Integer.MAX_VALUE, (a, b) -> a < b && a > min ? a : b);
		System.out.println("smin = " +smin);
		
		
		int count = list.stream().reduce(0, (a, b) -> a = a+1);
		System.out.println("count = " +count);
		
		String finalList = list1.stream().reduce("", (a,b)->a+" "+b);
		System.out.println(finalList);
		
		int sq = list.stream().reduce(0, (a, b) -> a+b*b);
		System.out.println("square = " +sq);
		
		String longest = list1.stream().reduce("", (a, b) -> a.length() >= b.length() ? a : b);
		System.out.println("longest = " +longest);

		int sumdigit = list.stream().reduce(0, (a, b) -> a + (b%10) + (b-(b/10))/10);
		System.out.println("sumdigit = " +sumdigit);
		
		
		int value = 123456;
		int res =String.valueOf(value).chars().map(c->c-'0').reduce(0,(a,b)->a+b);
		System.out.println(res);
	}

}
