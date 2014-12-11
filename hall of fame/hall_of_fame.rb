require 'Mysql'
#set the connection
connection = Mysql.connect(
	'127.0.0.1',
	'root',
	'',
	'hall_of_fame'
)

def show_scores(connection)
	system('cls')
	scores = connection.query 'SELECT round, score FROM scores'
	scores.each do |round, score|
		puts round + ' ' + score
	end
	upload_scores(connection)
end

def upload_scores(connection)
	puts 'Please enter the round, or type "quit" to stop the program'
	round = gets.chomp.to_s
	if round == 'quit'
		abort
	else
		puts 'Please enter the score for that round (x-x)'
		score = gets.chomp.to_s
	end
	connection.query 'INSERT INTO scores(round, score) VALUES (
		"'+round+'",
		"'+score+'"
		);'
	show_scores(connection)
end

show_scores(connection)