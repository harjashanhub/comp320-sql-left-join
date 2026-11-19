select employee.lastname, employee.firstname, coalesce(sum(invoice.total), 0) from employee left join customer on customer.supportrepid
 = employee.employeeid left join invoice on invoice.customerid = customer.customerid group by employee.employeeid order by coalesce(sum(invoice
.total),0) desc, employee.employeeid asc;
