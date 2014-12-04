#gebruik ruby-mysql
require 'Mysql'
#sla de mysql connectie op
connection = Mysql.connect(
	'127.0.0.1',
	'root',
	'',
	'lesbrief2'
	)
#sla een query op in een variabele
iets = connection.query 'SELECT Employees.Name, Employees.LastName, Departments.Name, Departments.Budget FROM Employees INNER JOIN Departments ON Employees.Department = Departments.Code;'
#voer voor elk resultaat de volgende code uit en laat de resultaten zien
iets.each do |name, lastname, dname, dbudget|
	puts name + ' ' + lastname + ' ' + dname + ' ' + dbudget
end