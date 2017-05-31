#include <stdio.h>

int main(){

    int index[4];
    char senha[4];

    char palavra[20];

    //Recebendo os numeros
    scanf("%d", &index[0]);
    scanf("%d", &index[1]);
    scanf("%d", &index[2]);
    scanf("%d", &index[3]);

    for(int i = 0; i < 4; i++){
        if(index[i] >= 0){
            scanf("%s", &palavra);
            senha[i] = palavra[index[i]];
        }

    }

    printf("%s", senha);

    return 0;

}
