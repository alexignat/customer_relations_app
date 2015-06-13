# This is the file for the contact class

class Contact
  def initialize(first_name, last_name, email, notes)
    @first_name = first_name.capitalize
    @last_name = last_name.capitalize
    @email = email
    @notes = notes
  end

  def to_s
    puts "Contact name: #{@first_name} #{@last_name}\nEmail: #{@email}\nNotes: #{@notes}"
  end
end

first_contact = Contact.new("alex", "ignat", "a@ignat.com", "is awesome")
first_contact.to_s