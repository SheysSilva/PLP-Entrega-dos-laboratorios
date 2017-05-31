#include <stdio.h>

int main(){

    int n;
    bool primo = true;
    bool casado = true;


    scanf("%d", &n);

    for(int i = 2; i < n; i++){
        if(n % i == 0){
            primo = false;
        }
    }
    n = n + 2;

    for(int i = 2; i < n; i++){
        if(n % i == 0){
            casado = false;
        }
    }

    if(casado == true){
        printf("PRIMO CASADO!");
    }
    else if(primo == true){
         printf("PRIMO!");
    }
    else{
        printf("NAO PRIMO!");
    }

    return 0;

}

