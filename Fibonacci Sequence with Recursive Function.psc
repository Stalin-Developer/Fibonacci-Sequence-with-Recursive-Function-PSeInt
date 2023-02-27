//En matem�ticas, la sucesi�n de Fibonacci es la siguiente sucesi�n infinita de
//n�meros naturales: 0,1,1,2,3,5,8,13,21,34,55,89,144..


//Esta funci�n se encarga de calcular el n�mero total de veces que la funci�n recursiva imprime.
SubProceso resultado1<- elementos (a)
	Definir resultado1, b, c1, c2 Como Entero;
	//c1 y c2, son el n�mero de impresiones que la funci�n recursiva hace con los n�meros de la posici�n 2 y 3.
	//Estos son como nuestros datos o punto de partida, para calcular el n�mero total de impresiones que la ->
	//funci�n recursiva har� cuando reciba n�mero con posiciones m�s altas.
	c1<- 4;
	c2<- 6;
	
	//Este es el n�mero de la posici�n 3. El cual tambi�n nos servir� como un punto de partida para los siguientes n�meros.
	b<- 3;
	Repetir 
		Si a<=3 Entonces
			Si a=2 Entonces
				b<-2;
				resultado1<-4;
				
			SiNo
				b<- 3;
				resultado1<- 6;
			FinSi
			
		SiNo
			resultado1<- c1 +c2;
			c1<- c2;
			c2<- resultado1;
			b<- b + 1;
		FinSi
	Hasta Que b=a //La funci�n ir� calculando el n�mero de impresiones hasta que llegue a la posici�n que deseamos.
	
FinSubProceso



	//Esta es una funci�n recursiva, la cual se encargar� de imprimir la serie de fibonacci hasta la posici�n ->
	//que el ususario ingres�.
	SubProceso resultado2<- serie (z Por Referencia, q, a)
		Definir resultado2, acu Como Entero;
		si a<2 Entonces
			acu<- a;
			
		SiNo //Para evitar problemas la funci�n recursiva trabajar� a partir de la posici�n 3.
			acu<- serie(z, q, a-2) + serie(z, q, a-1);
		FinSi
		
		//La funci�n hace un mot�n de impresiones.
		//Pero nosotros solo queremos que nos haga las �ltimas impresiones.
		resultado2<- acu;
		
		//Entonces para poder crear un filtro en donde solamente me imprima las �ltimas posiciones.
		//Necesitaba los valores de z y de q.
		//z tiene el mismo valor que el n�mero de impresiones que va a hacer la funci�n recursiva.
		//conforme la funci�n recursiva vaya imprimiendo, z ir� reduciendo su valor en 1. Hasta Que 
		//z llegue al valor de q. Que es en donde empezar�n a hacer las impresiones que si nesecito.
		z<- z - 1;
		Si z<=q Entonces  //Empienzan a imprimir los primeros.
			Si z>1 Entonces //Para evitar que se repita la �ltima impresi�n.
				Escribir resultado2, ", "; sin saltar
			FinSi
			
		FinSi
		
		
		
FinSubProceso
	







Proceso Serie_fibonacci_utilizando_la_funcion_recursiva
	Definir a, x, z, q como entero;
	Definir val Como Logico;
	val<- falso;
	
	//El ciclo repetir lo utilizo para que el usuario no se salga del ciclo hasta que ingrese un n�mero natural.
	Repetir
		Escribir "Escriba un n�mero natural, el cual ser� la posici�n hasta donde se va a imprimir la serie de fibonacci: ";
		Leer a;
		
		Si a>0 Entonces
			//El valor que ingres� el usuario, el cual se registr� en la variable a. Lo voy a almacenar en la variable q ->
			//porque lo voy a nesecitar m�s adelante en la funci�n recursiva. Y esta funci�n pues cambiar� el valor de la ->
			//variable a.
			q<- a;
			//La funci�n recursiva trabajar� a partir de la posici�n 3.
			Si a<=2 Entonces
				
				Segun a Hacer
					1:
						Escribir "";
						Escribir "La serie de fibonacci hasta la posici�n ", a, " es: ", 0;
						val<- Verdadero;	
						
					2:
						Escribir "";
						Escribir "La serie de fibonacci hasta la posici�n ", a, " es: ", 0, ", ", 1;
						val<- Verdadero;
						
				FinSegun
				
				
			SiNo
				//He notado que el valor que ingresa el usuario. La funci�n recursiva imprimir� los n�meros hasta la ->
				//posici�n siguiente. Lo cual no quiero. As� que tanto la funci�n que se encarga de calcular el n�mero ->
				//de impresiones, como la funci�n recursiva. Trabajar�n con un n�mero con la posici�n anterior que el ->
				//usuario ingres�.
				a<- a-1;
				x<- elementos(a); //EL N�MERO DE PROCESOS TAMBI�N ESTAN CAMBIANDO.
				//En la variable z se guardar� el n�mero de impresiones que hace la posici�n anterior.
				z<- x; 
				Escribir "";
				Escribir "La serie de fibonacci hasta la posici�n ", q, " es: ", serie(z, q, a);
				val<- Verdadero;
			FinSi
			
		SiNo
			Escribir "";
			Escribir "Error: Debe ingresar un n�mero natural, el cual indicar� la posici�n hasta donde se imprimir� la serie de fibonacci. (Puede ser desde el 1 en adelante)";
			Escribir "";
			Escribir "";
			
		FinSi
	Hasta Que val=Verdadero
	
FinProceso
