
tuplas:: [String] -> [(String, Int)]
tuplas []  = [] 
tuplas (head:lista) = [(head, (quantidades lista head 1))] ++ tuplas (criaLista lista head)

quantidades:: [String] -> String-> Int -> Int
quantidades [] verifica qnt = qnt
quantidades (head:lista) verifica qnt = if(head == verifica) then quantidades lista verifica (qnt+1) else quantidades lista verifica qnt

criaLista:: [String] -> String -> [String]
criaLista lista inicio = [x | x <- lista, x/=inicio]

main = do
lista <- getLine
let retorno = tuplas(read lista) 
print retorno
