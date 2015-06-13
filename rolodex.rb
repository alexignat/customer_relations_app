require_relative('contact.rb')

class Rolodex
  def initialize
    @contacts = []
  end

  def add_contact(first_name, last_name, email, note)
    contact = Contact.new(first_name, last_name, email, note)

    contacts << contact
  end

  def all_contacts
    @contacts
  end
end





