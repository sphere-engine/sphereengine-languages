/* package whatever; // don't place package name! */

import java.io.*;

/* Name of the class has to be "Main" only if the class is public. */
class Ideone
{
	public static void main (String[] args) throws java.lang.Exception
	{
		BufferedReader r = new BufferedReader (new InputStreamReader (System.in));
		String s;
		while (!(s=r.readLine()).startsWith("42")) System.out.println(s);
	}
}
