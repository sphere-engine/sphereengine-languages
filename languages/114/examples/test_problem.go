package main
import "fmt"

func main(){
	var n int
	fmt.Scanf("%d",&n)
	for n!=42 {
		fmt.Printf("%d\n",n)
		fmt.Scanf("%d",&n)
	}
}
