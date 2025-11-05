struct f{float float_; int int_;};

int test(int i); //declaration

int main(){
    struct f f_;
    f_.float_; //diagnostic
    f_.float; //error
    printf("clear"); //code action, error
    return test(0); //signature help
}

int test(int i){return i;} //definition
