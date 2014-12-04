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
iets = connection.query 'UPDATE Departments SET Budget = Budget * 0.9;'