select firstname || ' ' || lastname || ' is ' || cast((julianday(current_date) - julianday(birthdate)) / 365.25 as int) || ' years old' from employee where reportsto is null;
