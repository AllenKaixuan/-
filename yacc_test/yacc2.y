%{
#include<stdio.h>
#include<stdlib.h>
#include<string.h>





#ifndef YYSTYPE
#define YYSTYPE char*
#endif
char idStr[50]; 
char numStr[50];


int yylex();
extern int yyparse();
FILE* yyin;
void yyerror(const char* s);
%}


%token NUM
%token ID
%token ADD
%token SUB
%token MUL
%token DIV
%token LP
%token RP


%left ADD SUB
%left MUL DIV
%right UMINUS

%%

lines	:	lines expr ';' { printf("%s\n", $2);}
	|	lines ';'
	|
	;

 expr   :   expr ADD expr { $$ = (char *)malloc(50*sizeof(char));
                        strcpy($$,$1);
                        strcat($$,$3);
                        strcat($$,"+ "); } 
    |   expr SUB expr { $$ = (char *)malloc(50*sizeof(char));
                        strcpy($$,$1);
                        strcat($$,$3);
                        strcat($$,"- "); } 
    |   expr MUL expr { $$ = (char *)malloc(50*sizeof(char));
                        strcpy($$,$1);
                        strcat($$,$3);
                        strcat($$,"* "); }
    |   expr DIV expr { $$ = (char *)malloc(50*sizeof(char));
                        strcpy($$,$1);
                        strcat($$,$3);
                        strcat($$,"/ "); }
    |   LP expr RP    { $$ = (char *)malloc(50*sizeof(char)); 
                        strcpy($$,$2); }
    | 	SUB expr %prec UMINUS { $$ = (char *)malloc(50*sizeof(char));
                        strcpy($$,"- ");
                        strcat($$,$2);}
                        
	|   NUM { $$ = (char *)malloc(50*sizeof(char));
            strcpy($$,$1);
            strcat($$," ");}
    |   ID  { $$ = (char *)malloc(50*sizeof(char));
            strcpy($$,$1);
            strcat($$," ");}                  
    ;
%%

// programs section
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

int yylex()
{
	int temp;
	while(1)
    {
		temp = getchar();
		if(temp==' '||temp=='\t'||temp=='\n')
        {
			//nothing to do
		}
		else if(isDigit(temp))
        {
			int num_temp = 0;
            while(isDigit(temp))
            {
                numStr[num_temp] = temp;
                num_temp++;
                temp = getchar();
            }
            numStr[num_temp] = '\0';
            yylval = numStr;
            
			ungetc(temp, stdin);
			return NUM;
		}
        else if(isLetter(temp)||(temp=='_'))
        {
            int id_temp = 0;
            while(isLetter(temp)||(temp=='_')||isDigit(temp))
            {
                idStr[id_temp] = temp;
                id_temp++;
                temp = getchar();
            }
            idStr[id_temp] = '\0';
            yylval = idStr;
           
			ungetc(temp, stdin);
			return ID;
        }
        else if(temp=='+')
            return ADD;
		else if(temp=='-')
		    return SUB;
		else if(temp=='*')
            return MUL;
		else if(temp=='/')
            return DIV;
		else if(temp=='(')
            return LP;
		else if(temp==')')
            return RP;
		else 
            return temp;
	}
	
}

int main()
{
	yyin = stdin;
	do{
		yyparse();
	}while(!feof(yyin));
	return 0;
}

void yyerror(const char* s){
	fprintf(stderr, "Parse error: %s\n", s);
	exit(1);
}
