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
   contact_index = @contacts.index do |contact|
      contact.id == id    #.id refers to the actual id of the contact defined in contact.rb
    end
    @contacts[contact_index]
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
end








