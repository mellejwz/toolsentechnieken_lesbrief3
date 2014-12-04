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
iets = connection.query 'SELECT Products.Code, Products.Name, Products.Price, Products.Manufacturer, Manufacturers.Code, Manufacturers.Name FROM Products INNER JOIN Manufacturers ON Products.Manufacturer = Manufacturers.Code;'
#voer voor elk resultaat de volgende code uit en laat de resultaten zien
iets.each do |code, name, price, manufacturer, mcode, mname|
	puts code + ' ' + name + ' ' + price + ' ' + manufacturer + ' ' + mcode + ' ' + mname
end