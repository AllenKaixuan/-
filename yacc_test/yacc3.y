%{
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
typedef struct symbol {
	char* id;
	double value;
}symbol;
symbol sample[10];


int index_of_symbol = 0;

#ifndef YYSTYPE
#define YYSTYPE struct symbol
#endif


char idStr[50];
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
%token EQUAL

%left ADD SUB
%left MUL DIV
%right UMINUS

%%

lines	:	lines expr ';' { printf("%f\n", $2.value);}
	|	lines ';'
	|
	;

 expr	: 	expr ADD expr { $$.value = $1.value + $3.value; }
	| 	expr SUB expr { $$.value = $1.value - $3.value; }
	|	expr MUL expr { $$.value = $1.value * $3.value; }
	|	expr DIV expr { $$.value = $1.value / $3.value; }
	|	LP expr RP { $$ = $2; }
	| 	SUB expr %prec UMINUS { $$.id = $2.id; $$.value = -$2.value; }
	|	NUM { $$ = $1; }
	|	ID { $$ = $1; }
	|	ID EQUAL expr { sample[index_of_symbol].id = (char*)malloc(50*sizeof(char));
                        strcpy(sample[index_of_symbol].id, $1.id);
                        sample[index_of_symbol].value = $3.value;
                        index_of_symbol+=1;
                        $$.value = sample[index_of_symbol].value; }
	;


%%

// programs section
int isDigit(int t)
{
	if(t>='0' && t<='9')
        return 1;
	else 
        return 0;
}

int isLetter(int t)
{
	if((t>='a' && t<='z') || (t>='A' && t<='Z'))
        return 1;
	else 
        return 0;
}

int yylex()
{
	int temp;
	while(1){
		temp = getchar();
		if(temp==' '||temp=='\t'||temp=='\n')
		{
			//nothing to do
		}
		else if(isDigit(temp))
		{
			yylval.value = 0;
			yylval.id = "";
			while(isDigit(temp)==1)
			{
				yylval.value = yylval.value*10 + temp - '0';
				temp=getchar();
			}
			
			ungetc(temp, stdin);
			return NUM;
		}
		else if(isLetter(temp)||(temp=='_'))
		{
			int indexTemp = 0;
			while(isLetter(temp)||(temp=='_')||isDigit(temp))
			{
				idStr[indexTemp]=temp;
				temp=getchar();
				indexTemp++;
			}
			idStr[indexTemp]='\0';
			yylval.id = idStr;
			for(int i=0;i<index_of_symbol;i++)
			{
				if(!strcmp(sample[i].id, yylval.id)) 
				{
					yylval.value = sample[i].value;
					break;
				}
			}
			
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
		else if(temp=='=')
            return EQUAL;
		else return temp;
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

void yyerror(const char* s)
{
	fprintf(stderr, "Parse error: %s\n", s);
	exit(1);
}
