datatype expr=CstI of int
|CstB of bool
|Var of string
|Let of string * expr * expr
|Prim of string * expr * expr
|If of expr * expr * expr
|Letfun of string * string * expr * expr (*(f,x,fBody,letBody)*)
|Call of expr * expr;
type 'v env=(string * 'v)list;
(*letrec lookup env x= match env with
|[]	 ->failwith (x+" not found")
|(y,v)::r->if x=y then v else lookup r x;*)
datatype value=Int of int
|Closure of string * string * expr * value env;