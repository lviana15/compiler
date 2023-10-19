module Ast = struct
  type id = string

  type stm =
    | CompoundStm of stm * stm
    | AssignStm of id * exp
    | PrintStm of exp list

  and exp =
    | IdExp of id
    | NumExp of int
    | OpExp of exp * binop * exp
    | EseqExp of stm * exp

  and binop =
    | Plus of exp * exp
    | Minus of exp * exp
    | Times of exp * exp
    | Div of exp * exp
end
