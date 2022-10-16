%{
#include<iostream>
#include<vector>
#include<cstring>
#include<cctype>
#include<stdlib.h>
using namespace std;
struct node{
    char* addr;
    string addr_string;
    string code;
    int index_of_symbol=0;
};

#ifndef YYSTYPE
#define YYSTYPE node
#endif
int yylex();
extern int yyparse();
extern YYSTYPE yylval;
FILE* yyin;

char lexbuf[200];
int length=0;

struct symbol{
    char* id;
    string addr_string;
};

char idStr[50];
char numStr[50];


vector<symbol> symbol_table;

void yyerror(const char* s);
%}

%token ID
%token ADD
%token SUB
%token MUL
%token DIV
%token EQUAL
%token NUMBER
%token LP
%token RP
%right EQUAL
%left ADD SUB
%left MUL DIV
%right UMINUS

%%

lines : lines expr ';' {cout<<$2.code<<endl;}
    |lines ';'
    |
    ;

expr:expr ADD expr {$$.addr=new char();
                    $$.addr_string=to_string(reinterpret_cast<long long int>($$.addr));
                    $$.code=$1.code+$3.code+"ldr r0 "+($1.addr_string)+"\n"
                    +"ldr r1 "+($3.addr_string)+"\n"
                    +"add r0 r0 r1\n"
                    +"str r0 "+$$.addr_string+"\n";}
    | expr  SUB expr {$$.addr=new char();
                    $$.addr_string=to_string(reinterpret_cast<long long int>($$.addr));
                    $$.code=$1.code+$3.code+"ldr r0 "+($1.addr_string)+"\n"
                    +"ldr r1 "+($3.addr_string)+"\n"
                    +"sub r0 r0 r1\n"
                    +"str r0 "+$$.addr_string+"\n";}
    |expr MUL expr {$$.addr=new char();
                    $$.addr_string=to_string(reinterpret_cast<long long int>($$.addr));
                    $$.code=$1.code+$3.code+"ldr r0 "+($1.addr_string)+"\n"
                    +"ldr r1 "+$3.addr_string+"\n"
                    +"mul r0 r0 r1\n"
                    +"str r0 "+$$.addr_string+"\n";}
    |expr DIV expr {$$.addr=new char();
                    $$.addr_string=to_string(reinterpret_cast<long long int>($$.addr));
                    $$.code=$1.code+$3.code+"ldr r0 "+($1.addr_string)+"\n"
                    +"ldr r1 "+$3.addr_string+"\n"
                    +"div r0 r0 r1\n"
                    +"str r0 "+$$.addr_string+"\n";}
    |ID EQUAL expr{$$.addr=new char();
                    $$.addr_string=to_string(reinterpret_cast<long long int>($$.addr));
                    $$.code=$3.code+"ldr r0 "+($3.addr_string)+"\n"+
                    "str r0 "+symbol_table[$1.index_of_symbol].addr_string+"\n"
                    "str r0 "+($$.addr_string)+"\n";}
    |LP expr RP {$$.code=$2.code;}

    |SUB expr%prec UMINUS{;}

    | NUMBER{$$.code=$1.code;$$.addr_string=$1.addr_string;}

    | ID{$$.addr_string=symbol_table[$1.index_of_symbol].addr_string; 
        $$.code=$1.code;
        cout<<"allocate address "<<($$.addr_string)<<endl;
       }
    ;

%%


int isDigit(int t){
	if(t=='0'||t=='1'||t=='2'||t=='3'||t=='4'||t=='5'||t=='6'||t=='7'||t=='8'||t=='9')
        return 1;
	else 
        return 0;
}

int isLetter(int t){
	if((t>='a' && t<='z') || (t>='A' && t<='Z'))
        return 1;
	else 
        return 0;
}
int find(char*s){
    for(int i=0;i<symbol_table.size();i++){
        if(strcmp(symbol_table[i].id,s)==0)
        {
            return i;
        }
    }
    return -1;
}

int yylex(){
    int temp;
    yylval.code="";
    while(1){
        temp=getchar();
        if(temp==' '|| temp=='\t' || temp=='\n')
            ;
        else if(isDigit(temp)){
          int num_temp=0;
          while(isDigit(temp)){
            numStr[num_temp]=temp;
            temp=getchar();
            num_temp++;
          }
          numStr[num_temp]='\0';
          yylval.addr_string=numStr;
          yylval.code="";
          ungetc(temp,stdin);
          return NUMBER;
        }
        else if(isLetter(temp)||(temp=='_')){
            int id_temp=0;
            while( isLetter(temp)||(temp=='_')||isDigit(temp)){
                    idStr[id_temp]=temp;
                    id_temp++;
                    temp=getchar();
            }
            idStr[id_temp]='\0';
            if(find(idStr)==-1){  // 插入符号表
                strcpy(lexbuf+length,idStr);
                char* s=lexbuf+length;
                length+=strlen(idStr)+1;
                yylval.addr=new char();
                yylval.addr_string=to_string(reinterpret_cast<long long>(yylval.addr));
                yylval.code="";
                symbol d;
                d.id=s;
                d.addr_string=yylval.addr_string;
                symbol_table.push_back(d);
                
            }
            yylval.index_of_symbol=find(idStr);
            ungetc(temp,stdin);
           
            return ID;
        }

        else{
            switch(temp){
                case '+':
                    return ADD;
                case '-':
                    return SUB;
                case '*':
                    return MUL;
                case '/':
                    return DIV;
                case '=':
                    return EQUAL;
                default:
                    return temp;
                    }
            }

    }
   
}

int main(void){
    yyin=stdin;
    do{
        yyparse();
       
    }while(!feof(yyin));
    return 0;
}

void yyerror(const char* s){
    fprintf(stderr,"Parse error:%s\n",s);
    exit(1);
}