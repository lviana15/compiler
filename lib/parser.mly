/* Ocaml import */

%{
    open Ast
%}

/* Token definition */

%token TYPE
%token VAR
%token FUNCION
%token BREAK
%token OF
%token END
%token IN
%token NIL
%token LET
%token DO
%token TO
%token FOR
%token WHILE
%token ELSE
%token THEN
%token IF
%token ARRAY
%token ASSIGN
%token OR
%token AND
%token GE
%token GT
%token LE
%token LT
%token NEQ
%token EQ
%token DIVIDE
%token TIMES
%token MINUS
%token PLUS
%token DOT
%token RBRACE
%token LBRACE
%token RBRACK
%token LBRACK
%token RPAREN
%token LPAREN
%token SEMICOLON
%token COLON
%token COMMA
%token <string> STRING
%token <int> INT
%token <string> ID
%token EOF

/* Operators Precedence */

%left PLUS MINUS
%right DIVIDE TIMES

%start <exp> program

%%

/* Grammar */

exp :
    | i = ID; { ID i }
    | i = INT; { INT i }
    | e1 = exp; op = bin_op; e2 = exp { ID = e1; bin_op; ID = e2 }
;

%inline bin_op:
    | DIVIDE { bin_op_div }
    | TIMES { bin_op_times }
    | MINUS { bin_op_minus }
    | PLUS { bin_op_plu }
