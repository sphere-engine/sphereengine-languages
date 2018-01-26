Imports System
 
Public Class Test
	Public Shared Sub Main() 
		Dim n As Integer
		n = Console.ReadLine
		Do While n <> 42
			System.Console.WriteLine(n)
			n = Console.ReadLine
		Loop
	End Sub
End Class