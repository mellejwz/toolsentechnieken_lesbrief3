#gebruik ruby-mysql
require 'Mysql'
#sla de mysql connectie op
huehuehue = Mysql.connect(
	'127.0.0.1',
	'root',
	'',
	'lesbrief1'
	)
#sla een query op in een variabele
iets = huehuehue.query 'SELECT Code, Name FROM lesbrief1.Manufacturers;'
#voer voor elk resultaat de volgende code uit en laat de resultaten zien
iets.each do |code, name|
	puts code + ' ' + name
end