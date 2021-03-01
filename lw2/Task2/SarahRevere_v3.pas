PROGRAM PaulRevere(INPUT, OUTPUT);
{Печать соответствующего сообщения, зависящего от величины
 на входе:  '...by land'  для 1;  '...by sea'  для 2; иначе печать сообщения об ошибке}
VAR
  SarahSays: STRING;
USES
  DOS;
BEGIN {PaulRevere}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  GetEnv('QUERY_STRING') := SarahSays;
  IF SarahSays = 'lanterns=1'
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF SarahSays = 'lanterns=2'
    THEN
      WRITELN('The British are coming by sea.')
    ELSE
      IF SarahSays = 'lanterns=3'
      THEN
        WRITELN('The British are coming by air.')
      ELSE 
        WRITELN('The North Church shows only', SarahSays)
END. {PaulRevere}
