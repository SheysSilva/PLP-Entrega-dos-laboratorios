iessimo:: Int-> [Int] -> Int
iessimo index list = list !!(index-1)

main = do
list <- getLine
num <- getLine
let retorno = iessimo(read num) (read list)
print retorno
