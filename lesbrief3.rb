require 'Mysql'

huehuehue = Mysql.connect(
	'127.0.0.1',
	'root',
	'',
	'lesbrief1'
	)

iets = huehuehue.query 'SELECT Code, Name FROM lesbrief1.Manufacturers;'

iets.each do |code, name|
	puts code + ' ' + name
end