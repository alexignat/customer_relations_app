require_relative('contact.rb')

class Rolodex
  def initialize
    @contacts = []
  end

  def add_contact(first_name, last_name, email, note)
    contact = Contact.new(first_name, last_name, email, note)

    contacts << contact
  end

  def display_contact
    puts "First name: #{first_name}"
    puts "Last name: #{last_name}"
    puts "Email: #{email}"
    puts "Note: #{note}"
  end
end







