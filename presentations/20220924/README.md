# 20220924_debugging

10 minuter presentation för Extratimme eleverna.

## Debugging

 * Vad: att ta bort fel vi har skrivit
 * Varför: 
   * vi ska behöver debugging
   * 80% av tid du programmerar är debugging:
     att lära sig debugging gör dig effektivare

## Problemet

 * Problemet: 'Jag har en bug' 
   `&&` buggen är i en funktion som är långt/complicerade/otestade
 * Fin: 'Jag har en bug' 
   `&&` buggen är i en funktion som är kort/enkelt/otestade

Där är redan lösning!

## Lösning

 * förkörtning
 * förenkeling
 * testning/göra ett fuktion att testas

## Casus

 * I Processing, men likadant än Arduino också

```processing
//Made by The Lift
String rumeral(int Input){
  final String[] Numerals = {"I","V","X","L","C","D","M","I̅","V̅","X̅","L̅","C̅","D̅","M̅"};
  final String[] BlankArray = {};
  println("StartedRoman");
  final String Return = numeral_generate(abs(Input),BlankArray,0,abs(Input),Numerals);
  println("FinishingRoman");
  if (Input<0){
  return("-"+Return);
  }else{
    return(Return);
  }
}

//Made by The Lift
String numeral_generate(int Input, String[] Generated, int Pointer,int Value,String[] Numerals){
  while(Value>0){
    println(Value);
  //println(rumeral(1));
  if(Value>0){if(Value<5){
    if (Value<4){
    Generated = splice(Generated,Numerals[0],Pointer);
    Value-= 1;}else{
    Generated = splice(Generated,Numerals[1],Pointer);
    Pointer-=1;
    Value-= 3;}
  }else if(Value<10){
    if (Value<9){
    Generated = splice(Generated,Numerals[1],Pointer);
    Value-= 5;}else{
    Generated = splice(Generated,Numerals[2],Pointer);
    Pointer-=1;
    Value-= 8;}
  }else if(Value<50){
    if (Value<40){
    Generated = splice(Generated,Numerals[2],Pointer);
    Value-= 10;}else{
    Generated = splice(Generated,Numerals[3],Pointer);
    Pointer-=1;
    Value-= 30;}
  }else if(Value<100){
    if (Value<90){
    Generated = splice(Generated,Numerals[3],Pointer);
    Value-= 50;}else{
    Generated = splice(Generated,Numerals[4],Pointer);
    Pointer-=1;
    Value-= 80;}
  }else if(Value<500){
    if (Value<400){
    Generated = splice(Generated,Numerals[4],Pointer);
    Value-= 100;}else{
    Generated = splice(Generated,Numerals[5],Pointer);
    Pointer-=1;
    Value-= 300;}
  }else if(Value<1000){
    if (Value<900){
    Generated = splice(Generated,Numerals[5],Pointer);
    Value-= 500;}else{
    Generated = splice(Generated,Numerals[6],Pointer);
    Pointer-=1;
    Value-= 800;}
  }else{
    Generated = splice(Generated,Numerals[6],Pointer);
    Value-= 1000;}
  Pointer++;
  }else{return(join(Generated,""));}}
    println(Value);
  return(join(Generated,""));
  //return(numeral_generate(Input,Generated,Pointer,Value,Numerals));
}
```

## Sammanfattning

Funktioner:

```processing
String rumeral(int Input);
String numeral_generate(int Input, String[] Generated, int Pointer,int Value,String[] Numerals);
```

## Vad är målet?

Den här funktion skulle funkar:

```processing
String rumeral(int Input);
```

Den här funktion är bara en hjälpare:

```processing
String numeral_generate(int Input, String[] Generated, int Pointer,int Value,String[] Numerals){
```

## Testning

```processing
void skulle_vara_samma(final String resultat, final String expected)
{
  if (!resultat.equals(expected)) 
  { 
    print("'"); 
    print(resultat); 
    print("' skulle vara '");
    print(expected);
    println("'"); 
  }
}

void setup()
{
  skulle_vara_samma(rumeral(1), "I");
  skulle_vara_samma(rumeral(2), "II");
  skulle_vara_samma(rumeral(3), "III");
  skulle_vara_samma(rumeral(4), "IV");
  skulle_vara_samma(rumeral(5), "V");
  skulle_vara_samma(rumeral(10), "X");
  skulle_vara_samma(rumeral(40), "XL");
  skulle_vara_samma(rumeral(50), "L");
  skulle_vara_samma(rumeral(100), "C");
  skulle_vara_samma(rumeral(500), "D");
  skulle_vara_samma(rumeral(1000), "M");
}
```

Funkar!


## Hitta bugs

```processing
void setup()
{
  // andra tester
  skulle_vara_samma(rumeral(44), "IVXL"); // Funkar
  skulle_vara_samma(rumeral(444), "IVXLCD"); // Funkar
} 
```

## Vad har vi just gjört?

 * Vi kann nu testa kod
 * Vi har visat ett problem (och vi kan visar fler problem i framtiden)
 * Programmerare kann nu vidare!

## Värför är det viktigt?

 * Programmerare är nu övertygad att hen ha en bug
 * Programmerare kan nu reproducerar sin bug
 * Programmerare kan nu visar sin bug till någon
 * Programmerare kann nu schicka sin problem någonstans annat, t.ex. Stack Overflow

'Test-Driven Development' är en väg att ökar programmer systematiskt
och med litare debugging.
