# CRM app

# This method prints out the main method
class CRM

  def initialize(name)
    @name = name
  end

  def print_menu
    puts "[1] Add a new contact"
    puts "[2] Edit an existing contact"
    puts "[3] Delete a contact"
    puts "[4] Display all the contacts"
    puts "[5] Display an attribute"
    puts "[6] Exit"
  end

  # This method chooses a command

  def main_menu
    print_menu
    get_command = gets.to_i
    execute_command(get_command)
  end

  #This method executes commands

  def execute_command
    add_contact if execute_command == 1
    edit_contact if execute_command == 2
    delete_contact if execute_command == 3
    display_contacts if execute_command == 4
    display_attribute if execute_command == 5
    exit_menu if execute_command == 6
  end

  def add_contact
    print "Enter First Name: "
    first_name = gets.chomp.capitalize
    print "Enter Last Name: "
    last_name = gets.chomp.capitalize
    print "Enter Email Address: "
    email = gets.chomp
    print "Enter a Note: "
    note = gets.chomp
    contact = Contact.new(first_name, last_name, email, note)
  end
end

friends = CRM.new("friends")
friends.main_menu
