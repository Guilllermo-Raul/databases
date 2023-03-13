
var numero="23";
let mivariable;
const miConst=3;
var numero=3
console.log("mi edad es : "+numero);
console.log("Mi cosnstante es="+miConst);
/*miConst=5;
console.log("ahora la constante es="+miConst);no se puede mostrar por que es constante

var txt="el resultado";
var txt2="de la suma es =";

var res=9+3;
console.log(txt+txt2+res); */

let minumero="7";
 //let resultadopreg= minumero==6;
 //console.log(resultadopreg);
/*
 if(minumero==6){
    console.log("Mi resultado es igual a 6");
 } else{
    console.log("mi resultado NO es igual a 6");
 }*/
/*
 let nombre="raul";
 let ap1="Hernandez";
 let ap2="Hernandezl";

 if(minumero==7 && nombre=="raul" && ap1=="Hernandez" && ap2=="Hernandezl"){

    console.log("LAS PREGUNTAS SON VERDADERAS");

 } else{
    console.log("LAS resupuestas sonFALSAS");
 }
*
*/


//REPETICIONES
/*while
let contador=0;
while( contador<6){
    console.log(contador);
    contador=contador+1;
}

for(let contador=0; contador<5; contador=contador+1){
    console.log(contador);
}
let contador=0;
do {
    console.log(contador);
    contador++;
} while (contador<5);*/

//FUNCIONES
/*
function saludar(){
    console.log("saludar");

}

saludar();
CON PARAMENTROS
function saludar(nombre){
    console.log("mi nombre es: "+nombre);

}

saludar("raul");


function suma(num1, num2){

   let result= num1+num2;
    console.log("La suma es: "+ result);


}

suma(4,5);
*/
//CON RETORNO
/*
function suma(num1, num2){

    let result= num1+num2;
    return result;
 
 }

 let resultasuma= suma(5,5);
 console.log("el resultado de suma es: "+resultasuma);
*/

/*ARREGLOS
let miArreglo=["guillermo", "Marthe", "melli","lore"];

   
  for( i=0; i<4; i++){
    console.log("arreglo num. "+i);
    let mostrar=miArreglo [i];
    console.log(mostrar);
   

  }*/

  //OBJETO

  let persona={
    nombre: "Guillermo",
    edad: 21,
    masculino: true,

  };

  let persona2={
    nombre: "melli",
    edad: 23,
    masculino: false,
  };
persona.comidaF=" TACOS";
  console.log(persona.comidaF);
  console.log(persona2);