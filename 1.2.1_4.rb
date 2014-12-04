#gebruik ruby-mysql
require 'Mysql'
#sla de mysql connectie op
connection = Mysql.connect(
	'127.0.0.1',
	'root',
	'',
	'lesbrief1'
	)
#sla een query op in een variabele
iets = connection.query 'SELECT * FROM Products WHERE Price BETWEEN 60 AND 120'
#voer voor elk resultaat de volgende code uit en laat de resultaten zien
iets.each do |code, name, price, manufacturer|
	puts code + ' ' + name
end