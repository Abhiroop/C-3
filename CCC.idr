module CCC

data Expr : Type  where
 Val : Int -> Expr
 Add : Expr -> Expr -> Expr

eval : Expr -> Int
eval (Val n) = n
eval (Add x y) = eval x + eval y

foo : eval (Val n) = n
foo = Refl

bar : eval (Add x y) = eval x + eval y
bar = Refl

Stack : Type
Stack = List Int

pushS : (x : Int) -> (y : Stack) -> List Int
pushS x y = x :: y

evalS : Expr -> Stack -> Expr = Expr -> Stack
evalS (Val x) y prf = ?evalS_rhs_1
evalS (Add x z) y prf = ?evalS_rhs_2
