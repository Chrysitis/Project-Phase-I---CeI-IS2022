/* user code */
package CompilerPhaseI.src;
import java_cup.sym;
import java_cup.runtime.*;
%%

/* options and declarations */
%class Lexer
%unicode
%cup
%implements sym
%line
%column

%{
  StringBuilder string = new StringBuilder();
  
  private Symbol symbol(int type) {
    return new Symbol(type, yyline+1, yycolumn+1);
  }

  private Symbol symbol(int type, Object value) {
    return new Symbol(type, yyline+1, yycolumn+1, value);
  }
%}

%%
[a...z A...Z] {System.out.println("Found it");}

/* Lexical rules */
"=" {return symbol(sym.TERMINAL, "=");}
"+" {return symbol(sym.TERMINAL, "+");}
"-" {return symbol(sym.TERMINAL, "-");}
"*" {return symbol(sym.TERMINAL, "*");}
"/" {return symbol(sym.TERMINAL, "/");}