datatype expr=CstI of int
|CstB of bool
|Var of string
|Let of string * expr * expr
|Prim of string * expr * expr
|If of expr * expr * expr
|Letfun of string * string * expr * expr (*(f,x,fBody,letBody)*)
|Call of expr * expr;
Prim("+",Var "z", CstI 8);
Letfun ("f","x",Prim("+",Var "z",CstI 7),Call(Var "f",CstI 2));