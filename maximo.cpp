#include <stdio.h>

int main(){

    int array_num[4];
    //  m<= x<= n e o<=y <=p, o par para o qual o valor da expressão x^2 - 3y + x seja máximo e calcular também esse máximo.
    scanf("%d", &array_num[0]);
    scanf("%d", &array_num[1]);
    scanf("%d", &array_num[2]);
    scanf("%d", &array_num[3]);

    int  x = array_num[0];
    int y = array_num[2];
    int quadrado =  x*x;
    if(quadrado < 0){
        quadrado = quadrado *(-1);
    }

    int formula = (quadrado) - (3*y) + x;
    int maximo = formula;
    int x2 = x;
    int y2 = y;

    for(int i = 0; i < 2; i++){
        x = array_num[i];
        for(int j = 2; j < 4; j++){
            y = array_num[j];
            quadrado =  x*x;
            if(quadrado < 0){
                quadrado = quadrado *(-1);
            }
            formula = (quadrado) - (3*y) + x;
            if(formula > maximo){
                maximo = formula;
                x2 = x;
                y2 = y;
            }
        }
    }


    printf("(%d,%d)", x2, y2);
    printf("\n%d", maximo);

    return 0;
}
