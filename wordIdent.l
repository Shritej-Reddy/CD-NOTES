%{
/*
 * this sample demonstrates (very) simple recognition:
 * a verb/not a verb.
 */
#undef yywrap
#define yywrap() 1
%}

%%

[\t ]+                   /* ignore whitespace */ ;

is |
am |
are |
were |
was |
be |
being |
been |
do |
does |
did  |
will |
give |
take |
carry |
would |
should |
can  |
could |
has  |
have |
had |
go        { printf("%s: is a verb\n", yytext); }
[a-zA-Z]+ { printf("%s: is not a verb\n", yytext); }

.|\n      { ECHO; }
%%

int main()
{
      yylex() ;
}