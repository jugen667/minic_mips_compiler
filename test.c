// Un exemple de programme MiniC
int start = 0;
int end = 5;
void main () {
	int i, s = start , e = end ;
	int sum = 0;
	for (i = s; i < e; i = i + 2) {
 		sum = sum + 1;	
 	}
 	while(sum < 100){
 		sum = sum + 1;
 	}
 	if (sum < 1){
		sum = 2;
	}
	print("sum :", sum , "\n") ;
}