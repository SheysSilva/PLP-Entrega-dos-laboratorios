#include <stdio.h>

int main(){

    int tam;

    scanf("%d", &tam);
    int array_1[tam];
    int retorno[tam];

    for(int i = 0; i < tam; i++){
        scanf("%d", &array_1[i]);
    }
    bool verifica;
    int k;
    int tam_2 = 0;

    for(int j = 0; j < tam; j++) {
        verifica = false;
        k = 0;

        while(k < tam_2 && verifica == false){
            if(retorno[k] == array_1[j]){
                verifica = true;
            }
            k++;
        }

        if(verifica == false){
            retorno[k] = array_1[j];
            tam_2++;
        }
    }

    int l = 0;
    while(l < tam_2) {
        printf("%d ", retorno[l]);
        l++;
    }

    return 0;

}
