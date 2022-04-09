/* user code */
package CompilerPhaseI.src;
import java.io.*;
%%
/* options and declarations */
%class Lexer                              
%unicode
%line
%column

%%
c = [a...z A...Z] {System.out.println(9);}

/* Lexical rules */
"=" {return "equals";}
"+" {return "add";}
"-" {return "sub";}
"*" {return "mult";}
"/" {return "div";}