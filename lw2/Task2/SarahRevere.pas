PROGRAM PaulRevere(INPUT, OUTPUT);
{Печать соответствующего сообщения, зависящего от величины
 на входе:  '...by land'  для 1;  '...by sea'  для 2; иначе печать сообщения об ошибке}
USES
  DOS;
BEGIN {PaulRevere}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  IF GetEnv('QUERY_STRING') = 'lanterns=1'
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF GetEnv('QUERY_STRING') = 'lanterns=2'
    THEN
      WRITELN('The British are coming by sea.')
    ELSE
      IF GetEnv('QUERY_STRING') = 'lanterns=3'
      THEN
        WRITELN('The British are coming by air.')
      ELSE 
        WRITELN('The North Church shows only', GetEnv('QUERY_STRING'))
END. {PaulRevere}
