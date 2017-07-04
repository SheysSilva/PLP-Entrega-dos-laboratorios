uniao:: [Int] -> [Int] -> [Int]
uniao lista1 [] = lista1
uniao lista1 (head:lista2) = if(elem head lista1) then uniao lista1 lista2 else uniao (lista1++[head]) lista2

main = do
lista1 <- getLine
lista2 <- getLine
let retorno = uniao (read lista1) (read lista2)
print retorno
