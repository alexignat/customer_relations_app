





















































# # CRM app



# # This method prints out the main method
# class CRM

#   def initialize(name)
#     @name = name
#   end

#   # This method prints out the main menu
#   def print_main_menu
#     puts "[1] Add a new contact"
#     puts "[2] Edit an existing contact"
#     puts "[3] Delete a contact"
#     puts "[4] Display all the contacts"
#     puts "[5] Display an attribute"
#     puts "[6] Exit"
#   end

#   #This method chooses a command

#   def choose_option(choice)
#     case choice
#     when 1 then add_contact
#     when 2 then edit_contact
#     when 3 then delete_contact
#     when 4 then display_contact
#     when 5 then display_attribute
#     when 6 then exit
#     else
#       puts "I can't do that"
#     end
#   end

#   # This method will take the command and execute it

#   def main_menu
#     while true
#       print main_menu

#       print "Select an option: "
#       option = gets.chomp.to_i

#       choose_option(choice)
#     end
#   end

#   def add_contact
#     print "Enter First Name: "
#     first_name = gets.chomp.capitalize
#     print "Enter Last Name: "
#     last_name = gets.chomp.capitalize
#     print "Enter Email Address: "
#     email = gets.chomp
#     print "Enter a Note: "
#     note = gets.chomp
#     contact = Contact.new(first_name, last_name, email, note)
#   end
# end

# friends = CRM.new("friends")
# friends.main_menu
