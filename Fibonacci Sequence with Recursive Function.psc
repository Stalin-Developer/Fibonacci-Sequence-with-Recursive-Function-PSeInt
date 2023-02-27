//En matemáticas, la sucesión de Fibonacci es la siguiente sucesión infinita de
//números naturales: 0,1,1,2,3,5,8,13,21,34,55,89,144..


//Esta función se encarga de calcular el número total de veces que la función recursiva imprime.
SubProceso resultado1<- elementos (a)
	Definir resultado1, b, c1, c2 Como Entero;
	//c1 y c2, son el número de impresiones que la función recursiva hace con los números de la posición 2 y 3.
	//Estos son como nuestros datos o punto de partida, para calcular el número total de impresiones que la ->
	//función recursiva hará cuando reciba número con posiciones más altas.
	c1<- 4;
	c2<- 6;
	
	//Este es el número de la posición 3. El cual también nos servirá como un punto de partida para los siguientes números.
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
	Hasta Que b=a //La función irá calculando el número de impresiones hasta que llegue a la posición que deseamos.
	
FinSubProceso



	//Esta es una función recursiva, la cual se encargará de imprimir la serie de fibonacci hasta la posición ->
	//que el ususario ingresó.
	SubProceso resultado2<- serie (z Por Referencia, q, a)
		Definir resultado2, acu Como Entero;
		si a<2 Entonces
			acu<- a;
			
		SiNo //Para evitar problemas la función recursiva trabajará a partir de la posición 3.
			acu<- serie(z, q, a-2) + serie(z, q, a-1);
		FinSi
		
		//La función hace un motón de impresiones.
		//Pero nosotros solo queremos que nos haga las últimas impresiones.
		resultado2<- acu;
		
		//Entonces para poder crear un filtro en donde solamente me imprima las últimas posiciones.
		//Necesitaba los valores de z y de q.
		//z tiene el mismo valor que el número de impresiones que va a hacer la función recursiva.
		//conforme la función recursiva vaya imprimiendo, z irá reduciendo su valor en 1. Hasta Que 
		//z llegue al valor de q. Que es en donde empezarán a hacer las impresiones que si nesecito.
		z<- z - 1;
		Si z<=q Entonces  //Empienzan a imprimir los primeros.
			Si z>1 Entonces //Para evitar que se repita la última impresión.
				Escribir resultado2, ", "; sin saltar
			FinSi
			
		FinSi
		
		
		
FinSubProceso
	







Proceso Serie_fibonacci_utilizando_la_funcion_recursiva
	Definir a, x, z, q como entero;
	Definir val Como Logico;
	val<- falso;
	
	//El ciclo repetir lo utilizo para que el usuario no se salga del ciclo hasta que ingrese un número natural.
	Repetir
		Escribir "Escriba un número natural, el cual será la posición hasta donde se va a imprimir la serie de fibonacci: ";
		Leer a;
		
		Si a>0 Entonces
			//El valor que ingresó el usuario, el cual se registró en la variable a. Lo voy a almacenar en la variable q ->
			//porque lo voy a nesecitar más adelante en la función recursiva. Y esta función pues cambiará el valor de la ->
			//variable a.
			q<- a;
			//La función recursiva trabajará a partir de la posición 3.
			Si a<=2 Entonces
				
				Segun a Hacer
					1:
						Escribir "";
						Escribir "La serie de fibonacci hasta la posición ", a, " es: ", 0;
						val<- Verdadero;	
						
					2:
						Escribir "";
						Escribir "La serie de fibonacci hasta la posición ", a, " es: ", 0, ", ", 1;
						val<- Verdadero;
						
				FinSegun
				
				
			SiNo
				//He notado que el valor que ingresa el usuario. La función recursiva imprimirá los números hasta la ->
				//posición siguiente. Lo cual no quiero. Así que tanto la función que se encarga de calcular el número ->
				//de impresiones, como la función recursiva. Trabajarán con un número con la posición anterior que el ->
				//usuario ingresó.
				a<- a-1;
				x<- elementos(a); //EL NÚMERO DE PROCESOS TAMBIÉN ESTAN CAMBIANDO.
				//En la variable z se guardará el número de impresiones que hace la posición anterior.
				z<- x; 
				Escribir "";
				Escribir "La serie de fibonacci hasta la posición ", q, " es: ", serie(z, q, a);
				val<- Verdadero;
			FinSi
			
		SiNo
			Escribir "";
			Escribir "Error: Debe ingresar un número natural, el cual indicará la posición hasta donde se imprimirá la serie de fibonacci. (Puede ser desde el 1 en adelante)";
			Escribir "";
			Escribir "";
			
		FinSi
	Hasta Que val=Verdadero
	
FinProceso
