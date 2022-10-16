%{
// 定义段
#include<stdio.h>
#include<stdlib.h>
#ifndef YYSTYPE
#define YYSTYPE double
#endif
int yylex();
extern int yyparse();
FILE* yyin;
void yyerror(const char* s);
%}

%token NUM
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

lines	:	lines expr ';' { printf("%f\n", $2);}
	|	lines ';'
	|
	;

 expr	: 	expr ADD expr { $$ = $1 + $3; }
	| 	expr SUB expr { $$ = $1 - $3; }
	|	expr MUL expr { $$ = $1 * $3; }
	|	expr DIV expr { $$ = $1 / $3; }
	|	LP expr RP { $$ = $2; }
	|	SUB expr %prec UMINUS { $$ = -$2; }  // 提高优先级,该规则下将UMINUS覆盖SUB
	|	NUM
	;


%%

// programs section
int isDigit(int t){
	if(t=='0'||t=='1'||t=='2'||t=='3'||t=='4'||t=='5'||t=='6'||t=='7'||t=='8'||t=='9')
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
		else
        {
            if(isDigit(temp))
            {
			    yylval=0;
			    while(isDigit(temp))
                {
				    yylval=yylval*10+temp-'0';
				    temp=getchar();
			    }
				
			    ungetc(temp, stdin);
			    return NUM;
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
