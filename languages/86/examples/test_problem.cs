using static System.Console;

public class Program
{
  public static void Main()
  {
    int n;
	while ((n = int.Parse(Console.ReadLine()))!=42)
		Console.WriteLine(n);
  }
}