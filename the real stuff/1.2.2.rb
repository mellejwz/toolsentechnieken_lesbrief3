#use ruby-mysql
require 'Mysql'

#show contacts
def show_contacts()
	#set the connection
	connection = Mysql.connect(
		'127.0.0.1',
		'root',
		'',
		'addressbook'
		)
	#save the select query in a variable
	contacts = connection.query 'SELECT Naam, Achternaam, Email, Nummer FROM contacts'
	#show the results of the query
	contacts.each do |naam, achternaam, email, nummer|
		puts (naam + ' ' + achternaam).ljust(20, '.') + email.ljust(40, '.') + nummer.rjust(0)
	end
end

#add contact
def add_contact()
	#set the connection
	connection = Mysql.connect(
		'127.0.0.1',
		'root',
		'',
		'addressbook'
		)
	#ask for contact details and save those in variables
	puts 'Please input the name of the contact'
	name = gets.chomp
	puts 'Please input the last name of the contact'
	lastname = gets.chomp
	puts 'Please input the email address of the contact'
	email = gets.chomp
	puts 'Please input the phone number of the contact'
	phone = gets.chomp
	#insert contact details into a new record in the table
	connection.query 'INSERT INTO contacts (Naam, Achternaam, Email, Nummer) VALUES (
			"'+name.to_s+'",
			"'+lastname.to_s+'",
			"'+email.to_s+'",
			"'+phone.to_s+'"
		);'
end	
#ask the user what he/she would like to do and save the choice in a variable
puts 'What would you like to do?'
puts 'show contacts'
puts 'add contact'
#puts 'remove contact'
puts
choice = gets.chomp
#
if choice == 'show contacts' || choice == 'show'
	show_contacts
elsif choice == 'add contact' || choice == 'add'
	add_contact
end