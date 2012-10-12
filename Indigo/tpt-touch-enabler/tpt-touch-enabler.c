#include <stdio.h>
#include <string.h>
#include <cutils/properties.h>

int main(int argc, char *argv[])
{
    if(argc != 2) {
        fprintf(stderr,"usage:\n tpt-touch-enabler 0 \n tpt-touch-enabler 1 \n");
        return 1;
    }

    if (strcmp(argv[1],"0") == 0) {
        if(property_set("touch.enable", "0")){
            fprintf(stderr,"could not set property\n");
            return 1;
        }
    } else if (strcmp(argv[1],"1") == 0) {
        if(property_set("touch.enable", "1")){
            fprintf(stderr,"could not set property\n");
            return 1;
        }
    } else {
        fprintf(stderr,"Invalid option\n");
        return 1;
    }


    return 0;
}
