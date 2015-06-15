require_relative "rolodex.rb"
require_relative "contact.rb"

class CRM
  def initialize(name)
    @name = name
    @rolodex = Rolodex.new
  end

  def print_main_menu
    puts "[1] Add a new contact"
    puts "[2] Edit an existing contact"
    puts "[3] Delete a contact"
    puts "[4] Display all the contacts"
    puts "[5] Display an attribute"
    puts "[6] Exit"
  end

  def choose_option
    print_main_menu

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

  def add_contact
    print "Enter a first name: "
    first_name = gets.chomp.capitalize

    print "Enter a last name: "
    last_name = gets.chomp.capitalize

    print "Enter an email address: "
    email = gets.chomp

    print "Enter note: "
    notes = gets.chomp

    @rolodex.add_contact(first_name, last_name, email, notes)

    puts "--------------\nContact has been added."

    choose_option

  end

  def self.run(name)
    crm = CRM.new(name)

    crm.choose_option
  end

  def display_contacts
    @rolodex.display_all_contacts

    choose_option
  end

  def delete_contact
    @rolodex.delete_contact

    choose_option
  end

  def edit_contact
    @rolodex.edit_contact

    choose_option
  end

  def display_attribute
    @rolodex.display_attribute

    choose_option
  end
end

CRM.run("my crm")












































