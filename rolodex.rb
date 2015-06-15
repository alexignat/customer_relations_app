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
    contact_to_be_deleted = gets.chomp.to_i

    contacts.delete(contact_to_be_deleted)
  end

end








