import 'dart:io';
import 'dart:math';


main(){
  int n;
    
    print(" 1 - potenciacao  ");
		print(" 2 - raiz quadrada");
		print(" 3 - fatorial     ");   
		print(" 0 � sair        ");

		print("Digite A Operacao:");
 int ope = int.parse(stdin.readLineSync()!);

		   switch ( ope )
		  {
		     case 1 :
		    	 print("Digite a base:");
		       int base = int.parse(stdin.readLineSync()!);  
		        
		        print("Digite o indice:");
		        double expoente = double.parse(stdin.readLineSync()!);
		        
				     double poten = pow(base, expoente);
				     print("a potencia e:  $poten");
		         break;
		 
		     case 2 :
		    	 print("Digite a Base:");
		        int base = int.parse(stdin.readLineSync()!);
		        
			
		    	double raiz=sqrt(base);
		    	print("A raiz e:  $raiz");
		     break;
		 
		     case 3 :
		        
		    	 print("Insira um valor para o qual deseja calcular seu fatorial: ");
		       int fat = int.parse(stdin.readLineSync()!);
		        for(fat = 1; n > 1; n = n - 1)
		        fat = fat * n;
		        print("\nFatorial calculado:  fat");


		    break;
		    
		     default :
		       
		    break;
		    

	}

	}








}