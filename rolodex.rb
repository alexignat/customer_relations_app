require_relative "contact.rb"

class Rolodex
  attr_reader :contacts

  def initialize
    @contacts = []
  end


  def add_contact(first_name, last_name, email, note)
    contact = Contact.new(first_name, last_name, email, note)

    @contacts << contact
  end

  def display_all_contacts
    @contacts.each do |contact|
      contact.display_contact
    end
  end

  def delete_contact
    puts "Enter the id of the contact you would like to delete:"
    id = gets.chomp.to_i
    @contacts.each do |contact|
      if contact.id == id
        @contacts.delete(contact)
      end
    end
  end

  def find_contact(id)
    @contacts.find do |contact|
      contact.id == id    #.id refers to the actual id of the contact defined in contact.rb
    end
  end

  def edit_contact
    puts "Enter the id of the contact you would like to edit:"
    id = gets.chomp.to_i
    contact = find_contact(id)

    puts "Enter new first name: "
    contact.first_name = gets.chomp

    puts "Enter new last name: "
    contact.last_name = gets.chomp

    puts "Enter the new email: "
    contact.email = gets.chomp

    puts "Enter the new note: "
    contact.note = gets.chomp

    display_all_contacts
 end

 def display_attribute
  puts "Enter the id of the contact you would like to inspect:"
  id = gets.chomp.to_i
  contact = find_contact(id)

  puts "[1] To show first name"
  puts "[2] To show last name"
  puts "[3] To show email"
  puts "[4] To show notes"

  option = gets.chomp.to_i

  if option == 1
    puts contact.first_name
  elsif option == 2
    puts contact.last_name
  elsif option == 3
    puts contact.email
  elsif option == 4
    puts contact.notes
  end
 end
end








