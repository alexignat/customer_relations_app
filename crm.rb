def print_main_menu
  puts "[1] Add a new contact"
  puts "[2] Edit an existing contact"
  puts "[3] Delete a contact"
  puts "[4] Display all the contacts"
  puts "[5] Display an attribute"
  puts "[6] Exit"
end

def choose_option
  print "Enter a command: "
  choice = gets.chomp.to_i

  case choice
    when 1 then add_contact
    when 2 then edit_contact
    when 3 then delete_contact
    when 4 then display_contacts
    when 5 then display_attribute
    when 6 then exit
    else
      puts "I can't do that"
  end
end


print print_main_menu
puts choose_option










































