unit DateTimeMethods;

function IsLeapYear(year: integer): boolean;
begin
  if ((year mod 4 = 0) and (not (year mod 10 = 0))) or (year mod 400 = 0) then
    result := true;
end;

function DaysInMonth(month, year: integer): integer;
begin
  case month of 
    1, 3, 5, 7, 8, 10, 12: 
    result := 31;
    4, 6, 9, 11:
    result := 30;
    2:
      if year mod 4 = 0 then
        result := 29;
  else
    result := 28;
  end;
end;

function LaterInDay(p1, p2: DateTime): DateTime := p1;

function LaterInYear(p1, p2: DateTime): DateTime := p1;

function DaysInYear(year: integer): integer;
begin
  if IsLeapYear(year) then
    result := 366
  else
     result := 365;
end;

function DaysInYearRange(year1, year2: integer): integer;
begin
  for var i := year1 to year2 do
  begin
    if IsLeapYear(i) then
      result += 366
    else
        result += 365;
  end;

end;

function SecondsInHours(hours: integer): integer := 0;

begin

end. 