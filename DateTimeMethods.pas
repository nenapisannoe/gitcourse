unit DateTimeMethods;

function IsLeapYear(year: integer): boolean;
begin
  if year mod 4 = 0 then
    result:= true;
end;
function DaysInMonth(month, year: integer): integer;
begin
  case month of 
    1,3,5,7,8,10,12: 
      result:= 31;
    4,6,9,11:
      result:= 30;
     2:
      if year mod 4 = 0 then
        result := 29;
        else
        result:= 28;
  end;
end;
function LaterInDay(p1, p2: DateTime): DateTime;
begin
  var q1:= p1.Hour*3600 + p1.Minute*60 + p1.Second;
  var q2:= p2.Hour*3600 + p2.Minute*60 + p2.Second;
  if q1>q2 then
    result:= p1;
  wlse
  result:=p2;
end;
function LaterInYear(p1, p2: DateTime): DateTime := p1;
function DaysInYear(year: integer): integer := 0;
function DaysInYearRange(year1, year2: integer): integer := 0;
function SecondsInHours(hours: integer): integer := 0;

begin
  
end.