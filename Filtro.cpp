#include <stdio.h>

int main(){
    int valor;
    int quant_falhas = 0;
    scanf("%d", &valor);

    while(valor != 0){
        if(valor < 0){
            quant_falhas += 1;
        }

        scanf("%d", &valor);
    }

    printf("%d", quant_falhas);

    return 0;
}
